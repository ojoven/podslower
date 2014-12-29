<?php
// Settings
require_once 'config/settings.php';

// Lib
require_once 'lib/functions.php';
require_once 'lib/vendor/MysqliDb/MysqliDb.php';
require_once 'lib/vendor/SimpleImage.php';
require_once 'lib/vendor/amazon-s3-php-class/S3.php';

// Let's measure script time
$start = microtime(true);

// Connect to DB
$db = new MysqliDb (DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Start Amazon
$s3 = new S3(AWS_KEY, AWS_SECRET);

// Get All Podcasts
mylog("Getting podcasts");
$podcasts = $db->get('podcasts');

// Retrieve the episodes for the podcasts
foreach ($podcasts as $podcastDb) {

	$podcastRssUrl = $podcastDb['url'];
	mylog("Getting podcast info for " . $podcastDb['title']);
	$xmlPodcast = file_get_contents($podcastRssUrl);
	$podcast = new SimpleXMLElement($xmlPodcast);
	$podcast = json_decode(json_encode($podcast),true); // Array

	// Retrieve podcast and episodes info
	$podcastTitle = $podcast['channel']['title'];
	$podcastSlug = url_slug($podcastTitle);
	$podcastImage = $podcast['channel']['image']['url'];
	$episodes = $podcast['channel']['item'];

	if (!empty($episodes)) {

		if (!$podcastDb['parsed']) {

			mylog("The podcast is not parsed. Let's save the image.");

			// Copy in the filesystem
			$tmpImage = TMP_PATH . '/' . $podcastSlug;
			copy($podcastImage, $tmpImage);

			// Get the type
			$mime = getMimeInfoFromImage($tmpImage);

			// Create Thumbnail
			$imageThumbnail = new SimpleImage($tmpImage);
			$imageThumbnail->adaptive_resize(400,400)->save($tmpImage);

			// Upload to Amazon S3
			$uploadName = $podcastSlug.$mime['extension'];
			$s3->putObject(S3::inputFile($tmpImage, false), AWS_S3_BUCKET, $uploadName, S3::ACL_PUBLIC_READ,array(), array('Content-Type' => $mime['contentType']));

			// Delete the tmp image
			unlink($tmpImage);

			// DB mark podcast as parsed
			$db->rawQuery("UPDATE podcasts SET parsed = 1 WHERE id = ?", array($podcastDb['id']));
		}

		// Max num of episodes
		$episodes = array_slice($episodes,0,MAX_NUM_EPISODES);

		foreach ($episodes as $episode) {

			$urlMp3 = $episode['enclosure']['@attributes']['url'];
			$title = $episode['title'];
			$slug = url_slug($title);
			$duration = (isset($episode['enclosure']['@attributes']['length'])) ? $episode['enclosure']['@attributes']['length'] : 0;
			$datePodcast = date('Y-m-d H:i:s',strtotime($episode['pubDate']));
			$now = date("Y-m-d H:i:s");

			// Let's check if the episode is already parsed
			$db->where('slug',$slug);
			$exists = $db->getOne('episodes');

			// If not exists, we sox it and save it to DB
			// Get mp3
			if (!$exists) {

				mylog($title . " is not parsed yet, let's parse it.");

				$tmpMp3 = TMP_PATH . '/' . $slug . '.mp3';

				mylog("Retrieving mp3 file...");
				copy($urlMp3, $tmpMp3);

				// Once copied, we create the slowed versions
				$versions = array(70,80,90,120);
				foreach ($versions as $version) {

					try {

						// Run sox command
						mylog("Generating version: " . $version . ". Please wait...");
						$tmpMp3Slowed = TMP_PATH . '/' . $slug . "_" . $version . '.mp3';
						exec('sox ' . $tmpMp3 . ' ' . $tmpMp3Slowed . ' tempo ' . $version/100);

						mylog("Uploading to Amazon S3: " . $version . ". Please wait...");
						$uploadName = $podcastSlug. '/' . $slug . "_" . $version . '.mp3';
						$s3->putObject(S3::inputFile($tmpMp3Slowed, false), AWS_S3_BUCKET, $uploadName, S3::ACL_PUBLIC_READ,array(), array('Content-Type' => 'audio/mpeg'));

						// Delete the tmp mp3 version
						unlink($tmpMp3Slowed);

					} catch (Exception $e) {

						//file_put_contents($filename, $data);
						mylog('Error: ' . $e->getMessage());

					}

				}

				// Delete the tmp mp3
				unlink($tmpMp3);

				// Save info in DB
				mylog("Saving info in DB");
				$data = array(
					'title' => $title,
					'slug' => $slug,
					'idPodcast' => $podcastDb['id'],
					'urlMp3' => $urlMp3,
					'duration' => $duration,
					'parsed' => true,
					'datePodcast' => $datePodcast,
					'dateAdded' => $now
				);
				$id = $db->insert('episodes', $data);

			}
		}

	}


}

// Let's log the final time
$time = date('i:s',microtime(true) - $start);
mylog($time);

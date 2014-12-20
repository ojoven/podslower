<?php
// Settings
require_once 'config/settings.php';

// Lib
require_once 'lib/functions.php';
require_once 'lib/vendor/MysqliDb/MysqliDb.php';
require_once 'lib/vendor/SimpleImage.php';
require_once 'lib/vendor/amazon-s3-php-class/S3.php';

// Connect to DB
$db = new MysqliDb (DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Get All Podcasts
$podcasts = $db->get('podcasts');

// Retrieve the episodes for the podcasts
foreach ($podcasts as $podcastDb) {
	
	$podcastRssUrl = $podcastDb['url'];
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
			$s3 = new S3(AWS_KEY, AWS_SECRET);
			$s3->putObject(S3::inputFile($tmpImage, false), AWS_S3_BUCKET, $uploadName, S3::ACL_PUBLIC_READ,array(), array('Content-Type' => $mime['contentType']));
			
		}
		
		// Max num of episodes
		$episodes = array_slice($episodes,0,MAX_NUM_EPISODES);
		
		foreach ($episodes as $episode) {
		
			$mp3 = $episode['enclosure']['@attributes'];
			$mp3['title'] = $episode['title'];
			$mp3['slug'] = url_slug($episode['title']);
			$mp3['date'] = $episode['pubDate'];
		
		}
		
	}
	
	
}




// Foreach episode run sox
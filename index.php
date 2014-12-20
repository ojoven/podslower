<?php
// Settings
require_once 'config/settings.php';

// Lib
require_once 'lib/functions.php';
require_once 'lib/vendor/SimpleImage.php';
require_once 'lib/vendor/amazon-s3-php-class/S3.php';

// Connect to DB
$db = new MysqliDb (DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Get All Podcasts
$podcasts = $db->get('podcasts');

// Retrieve the episodes for the podcasts
foreach ($podcasts as $podcast) {
	
	$podcastRssUrl = $podcast['url'];
	$xmlPodcast = file_get_contents($podcastRssUrl);
	$podcast = new SimpleXMLElement($xmlPodcast);
	
	// Retrieve podcast and episodes info
	$title = $podcast['channel']['title'];
	$image = $podcast['channel']['image']['url'];
	$episodes = $podcast['channel']['item'];
	
	if (!empty($episodes)) {

		// If the podcast is not parsed yet, we'll save its image
		copy($image, $dest);
		$imageGiftThumbnail = new SimpleImage($target);
		$imageVersion = $imageName."_".self::GIFT_IMAGE_THUMBNAIL.self::EXT_JPG;
		$imagePath = $targetFolder.$imageVersion;
		$imageGiftThumbnail->fit_to_width(300)->save($imagePath);
		AmazonS3Functions::uploadToS3($imagePath,$imageVersion,$bucket);
		
		
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
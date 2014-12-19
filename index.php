<?php
require_once 'config/settings.php';
require_once 'lib/functions.php';


$podcastRssUrl = "http://radiofrance-podcast.net/podcast09/rss_10078.xml";
//$xmlPodcast = file_get_contents($podcastRssUrl);
//$xml = new SimpleXMLElement($xmlPodcast);

// Retrieve episodes' mp3s from the XML
$podcast = json_decode(file_get_contents('json'),true);

// Retrieve podcast and episodes info
$title = $podcast['channel']['title'];
$image = $podcast['channel']['image']['url'];
$episodes = $podcast['channel']['item'];

$episodes = array_slice($episodes,0,MAX_NUM_EPISODES);

foreach ($episodes as $episode) {

	$slug = url_slug($episode['title']);
	$mp3 = $episode['enclosure']['@attributes'];
	$mp3['date'] = $episode['pubDate'];

}

// Foreach episode run sox
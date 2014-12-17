<?php
$podcastRssUrl = "http://radiofrance-podcast.net/podcast09/rss_10078.xml";
$xmlPodcast = file_get_contents($podcastRssUrl);
$xml = new SimpleXMLElement($xmlPodcast);

// Retrieve episodes' mp3s from the XML
// Foreach episode run sox
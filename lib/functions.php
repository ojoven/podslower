<?php

// Log
function mylog($message) {
	echo $message.PHP_EOL;
}

// Image Get Type
function getMimeInfoFromImage($image) {
	$finfo = finfo_open(FILEINFO_MIME_TYPE);
	$filetype = finfo_file($finfo, $image);
	switch ($filetype) {
		case 'image/gif':
			$mime['extension'] = '.gif';
			break;
		case 'image/png':
			$mime['extension'] = '.png';
			break;
		case 'image/jpeg':
		default:
			$mime['extension'] = '.jpg';
			break;
	}

	$mime['contentType'] = $filetype;
	return $mime;
}

// Date render
function ago($date) {

	$str = $date;
	$today = strtotime(date('Y-m-d H:i:s'));

	// It returns the time difference in Seconds...
	$time_differnce = $today - $str;

	// To Calculate the time difference in Years...
	$years = 60 * 60 * 24 * 365;

	// To Calculate the time difference in Months...
	$months = 60 * 60 * 24 * 30;

	// To Calculate the time difference in Days...
	$days = 60 * 60 * 24;

	// To Calculate the time difference in Hours...
	$hours = 60 * 60;

	// To Calculate the time difference in Minutes...
	$minutes = 60;

	if (intval($time_differnce / $years) > 1) {
		$datediff = intval($time_differnce / $years) . ' years ago';
	} else if (intval($time_differnce / $years) > 0) {
		$datediff = intval($time_differnce / $years) . ' year ago';
	} else if (intval($time_differnce / $months) > 1) {
		$datediff = intval($time_differnce / $months) . ' months ago';
	} else if (intval(($time_differnce / $months)) > 0) {
		$datediff = intval(($time_differnce / $months)) . ' month ago';
	} else if (intval(($time_differnce / $days)) > 1) {
		$datediff = intval(($time_differnce / $days)) . ' days ago';
	} else if (intval(($time_differnce / $days)) > 0) {
		$datediff = intval(($time_differnce / $days)) . ' day ago';
	} else if (intval(($time_differnce / $hours)) > 1) {
		$datediff = intval(($time_differnce / $hours)) . ' hours ago';
	} else if (intval(($time_differnce / $hours)) > 0) {
		$datediff = intval(($time_differnce / $hours)) . ' hour ago';
	} else if (intval(($time_differnce / $minutes)) > 1) {
		$datediff = intval(($time_differnce / $minutes)) . ' minutes ago';
	} else if (intval(($time_differnce / $minutes)) > 0) {
		$datediff = intval(($time_differnce / $minutes)) . ' minute ago';
	} else if (intval(($time_differnce)) > 5) {
		$datediff = intval(($time_differnce)) . ' seconds ago';
	} else {
		$datediff = ' few seconds ago';
	}

	return $datediff;
}

/**
 * Create a web friendly URL slug from a string.
 *
 * Although supported, transliteration is discouraged because
 *     1) most web browsers support UTF-8 characters in URLs
 *     2) transliteration causes a loss of information
 *
 * @author Sean Murphy <sean@iamseanmurphy.com>
 * @copyright Copyright 2012 Sean Murphy. All rights reserved.
 * @license http://creativecommons.org/publicdomain/zero/1.0/
 *
 * @param string $str
 * @param array $options
 * @return string
 */

function url_slug($str, $options = array()) {
	// Make sure string is in UTF-8 and strip invalid UTF-8 characters
	$str = mb_convert_encoding((string)$str, 'UTF-8', mb_list_encodings());

	$defaults = array(
		'delimiter' => '-',
		'limit' => null,
		'lowercase' => true,
		'replacements' => array(),
		'transliterate' => false,
	);

	// Merge options
	$options = array_merge($defaults, $options);

	$char_map = array(
		// Latin
		'Ã€' => 'A', 'Ã' => 'A', 'Ã‚' => 'A', 'Ãƒ' => 'A', 'Ã„' => 'A', 'Ã…' => 'A', 'Ã†' => 'AE', 'Ã‡' => 'C',
		'Ãˆ' => 'E', 'Ã‰' => 'E', 'ÃŠ' => 'E', 'Ã‹' => 'E', 'ÃŒ' => 'I', 'Ã' => 'I', 'ÃŽ' => 'I', 'Ã' => 'I',
		'Ã' => 'D', 'Ã‘' => 'N', 'Ã’' => 'O', 'Ã“' => 'O', 'Ã”' => 'O', 'Ã•' => 'O', 'Ã–' => 'O', 'Å' => 'O',
		'Ã˜' => 'O', 'Ã™' => 'U', 'Ãš' => 'U', 'Ã›' => 'U', 'Ãœ' => 'U', 'Å°' => 'U', 'Ã' => 'Y', 'Ãž' => 'TH',
		'ÃŸ' => 'ss',
		'Ã ' => 'a', 'Ã¡' => 'a', 'Ã¢' => 'a', 'Ã£' => 'a', 'Ã¤' => 'a', 'Ã¥' => 'a', 'Ã¦' => 'ae', 'Ã§' => 'c',
		'Ã¨' => 'e', 'Ã©' => 'e', 'Ãª' => 'e', 'Ã«' => 'e', 'Ã¬' => 'i', 'Ã­' => 'i', 'Ã®' => 'i', 'Ã¯' => 'i',
		'Ã°' => 'd', 'Ã±' => 'n', 'Ã²' => 'o', 'Ã³' => 'o', 'Ã´' => 'o', 'Ãµ' => 'o', 'Ã¶' => 'o', 'Å‘' => 'o',
		'Ã¸' => 'o', 'Ã¹' => 'u', 'Ãº' => 'u', 'Ã»' => 'u', 'Ã¼' => 'u', 'Å±' => 'u', 'Ã½' => 'y', 'Ã¾' => 'th',
		'Ã¿' => 'y',

		// Latin symbols
		'Â©' => '(c)',

		// Greek
		'Î‘' => 'A', 'Î’' => 'B', 'Î“' => 'G', 'Î”' => 'D', 'Î•' => 'E', 'Î–' => 'Z', 'Î—' => 'H', 'Î˜' => '8',
		'Î™' => 'I', 'Îš' => 'K', 'Î›' => 'L', 'Îœ' => 'M', 'Î' => 'N', 'Îž' => '3', 'ÎŸ' => 'O', 'Î ' => 'P',
		'Î¡' => 'R', 'Î£' => 'S', 'Î¤' => 'T', 'Î¥' => 'Y', 'Î¦' => 'F', 'Î§' => 'X', 'Î¨' => 'PS', 'Î©' => 'W',
		'Î†' => 'A', 'Îˆ' => 'E', 'ÎŠ' => 'I', 'ÎŒ' => 'O', 'ÎŽ' => 'Y', 'Î‰' => 'H', 'Î' => 'W', 'Îª' => 'I',
		'Î«' => 'Y',
		'Î±' => 'a', 'Î²' => 'b', 'Î³' => 'g', 'Î´' => 'd', 'Îµ' => 'e', 'Î¶' => 'z', 'Î·' => 'h', 'Î¸' => '8',
		'Î¹' => 'i', 'Îº' => 'k', 'Î»' => 'l', 'Î¼' => 'm', 'Î½' => 'n', 'Î¾' => '3', 'Î¿' => 'o', 'Ï€' => 'p',
		'Ï' => 'r', 'Ïƒ' => 's', 'Ï„' => 't', 'Ï…' => 'y', 'Ï†' => 'f', 'Ï‡' => 'x', 'Ïˆ' => 'ps', 'Ï‰' => 'w',
		'Î¬' => 'a', 'Î­' => 'e', 'Î¯' => 'i', 'ÏŒ' => 'o', 'Ï' => 'y', 'Î®' => 'h', 'ÏŽ' => 'w', 'Ï‚' => 's',
		'ÏŠ' => 'i', 'Î°' => 'y', 'Ï‹' => 'y', 'Î' => 'i',

		// Turkish
		'Åž' => 'S', 'Ä°' => 'I', 'Ã‡' => 'C', 'Ãœ' => 'U', 'Ã–' => 'O', 'Äž' => 'G',
		'ÅŸ' => 's', 'Ä±' => 'i', 'Ã§' => 'c', 'Ã¼' => 'u', 'Ã¶' => 'o', 'ÄŸ' => 'g',

		// Russian
		'Ð' => 'A', 'Ð‘' => 'B', 'Ð’' => 'V', 'Ð“' => 'G', 'Ð”' => 'D', 'Ð•' => 'E', 'Ð' => 'Yo', 'Ð–' => 'Zh',
		'Ð—' => 'Z', 'Ð˜' => 'I', 'Ð™' => 'J', 'Ðš' => 'K', 'Ð›' => 'L', 'Ðœ' => 'M', 'Ð' => 'N', 'Ðž' => 'O',
		'ÐŸ' => 'P', 'Ð ' => 'R', 'Ð¡' => 'S', 'Ð¢' => 'T', 'Ð£' => 'U', 'Ð¤' => 'F', 'Ð¥' => 'H', 'Ð¦' => 'C',
		'Ð§' => 'Ch', 'Ð¨' => 'Sh', 'Ð©' => 'Sh', 'Ðª' => '', 'Ð«' => 'Y', 'Ð¬' => '', 'Ð­' => 'E', 'Ð®' => 'Yu',
		'Ð¯' => 'Ya',
		'Ð°' => 'a', 'Ð±' => 'b', 'Ð²' => 'v', 'Ð³' => 'g', 'Ð´' => 'd', 'Ðµ' => 'e', 'Ñ‘' => 'yo', 'Ð¶' => 'zh',
		'Ð·' => 'z', 'Ð¸' => 'i', 'Ð¹' => 'j', 'Ðº' => 'k', 'Ð»' => 'l', 'Ð¼' => 'm', 'Ð½' => 'n', 'Ð¾' => 'o',
		'Ð¿' => 'p', 'Ñ€' => 'r', 'Ñ' => 's', 'Ñ‚' => 't', 'Ñƒ' => 'u', 'Ñ„' => 'f', 'Ñ…' => 'h', 'Ñ†' => 'c',
		'Ñ‡' => 'ch', 'Ñˆ' => 'sh', 'Ñ‰' => 'sh', 'ÑŠ' => '', 'Ñ‹' => 'y', 'ÑŒ' => '', 'Ñ' => 'e', 'ÑŽ' => 'yu',
		'Ñ' => 'ya',

		// Ukrainian
		'Ð„' => 'Ye', 'Ð†' => 'I', 'Ð‡' => 'Yi', 'Ò' => 'G',
		'Ñ”' => 'ye', 'Ñ–' => 'i', 'Ñ—' => 'yi', 'Ò‘' => 'g',

		// Czech
		'ÄŒ' => 'C', 'ÄŽ' => 'D', 'Äš' => 'E', 'Å‡' => 'N', 'Å˜' => 'R', 'Å ' => 'S', 'Å¤' => 'T', 'Å®' => 'U',
		'Å½' => 'Z',
		'Ä' => 'c', 'Ä' => 'd', 'Ä›' => 'e', 'Åˆ' => 'n', 'Å™' => 'r', 'Å¡' => 's', 'Å¥' => 't', 'Å¯' => 'u',
		'Å¾' => 'z',

		// Polish
		'Ä„' => 'A', 'Ä†' => 'C', 'Ä˜' => 'e', 'Å' => 'L', 'Åƒ' => 'N', 'Ã“' => 'o', 'Åš' => 'S', 'Å¹' => 'Z',
		'Å»' => 'Z',
		'Ä…' => 'a', 'Ä‡' => 'c', 'Ä™' => 'e', 'Å‚' => 'l', 'Å„' => 'n', 'Ã³' => 'o', 'Å›' => 's', 'Åº' => 'z',
		'Å¼' => 'z',

		// Latvian
		'Ä€' => 'A', 'ÄŒ' => 'C', 'Ä’' => 'E', 'Ä¢' => 'G', 'Äª' => 'i', 'Ä¶' => 'k', 'Ä»' => 'L', 'Å…' => 'N',
		'Å ' => 'S', 'Åª' => 'u', 'Å½' => 'Z',
		'Ä' => 'a', 'Ä' => 'c', 'Ä“' => 'e', 'Ä£' => 'g', 'Ä«' => 'i', 'Ä·' => 'k', 'Ä¼' => 'l', 'Å†' => 'n',
		'Å¡' => 's', 'Å«' => 'u', 'Å¾' => 'z'
	);

	// Make custom replacements
	$str = preg_replace(array_keys($options['replacements']), $options['replacements'], $str);

	// Transliterate characters to ASCII
	if ($options['transliterate']) {
		$str = str_replace(array_keys($char_map), $char_map, $str);
	}

	// Replace non-alphanumeric characters with our delimiter
	$str = preg_replace('/[^\p{L}\p{Nd}]+/u', $options['delimiter'], $str);

	// Remove duplicate delimiters
	$str = preg_replace('/(' . preg_quote($options['delimiter'], '/') . '){2,}/', '$1', $str);

	// Truncate slug to max. characters
	$str = mb_substr($str, 0, ($options['limit'] ? $options['limit'] : mb_strlen($str, 'UTF-8')), 'UTF-8');

	// Remove delimiter from ends
	$str = trim($str, $options['delimiter']);

	return $options['lowercase'] ? mb_strtolower($str, 'UTF-8') : $str;
}
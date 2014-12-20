<?php

// DB Settings
define('DB_HOST','xxxx');
define('DB_USERNAME','xxxx');
define('DB_PASSWORD','xxxx');
define('DB_NAME','xxxx');

// Path Settings
define('INDEX_PATH', str_replace('\\', '/', dirname(__FILE__)));
define('APPLICATION_PATH', str_replace('\\', '/', realpath(INDEX_PATH . '/../')));
define('TMP_PATH', str_replace('\\', '/', realpath(INDEX_PATH . '/../tmp')));

// Amazon Settings
define('AWS_S3_BUCKET','xxxx');
define('AWS_KEY','xxxx');
define('AWS_SECRET','xxxx');

// Site Settings
define('MAX_NUM_EPISODES', 10);
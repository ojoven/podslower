<?php

// DB Settings
define('DB_HOST','xxxx');
define('DB_USERNAME','xxxx');
define('DB_PASSWORD','xxxx');
define('DB_NAME','xxxx');

// Path Settings
define('INDEX_PATH', str_replace('\\', '/', dirname(__FILE__)));
define('APPLICATION_PATH', str_replace('\\', '/', realpath(INDEX_PATH . '/../')));

// Site Settings
define('MAX_NUM_EPISODES', 10);
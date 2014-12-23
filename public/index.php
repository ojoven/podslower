<?php
require '../lib/vendor/AltoRouter.php';

$router = new AltoRouter();

//$router->setBasePath('/public');

// map homepage
$router->map( 'GET', '/', function() {
	$page = "home";
	require __DIR__ . '/../views/index.php';
});

// map about
$router->map( 'GET', '/about[/]?', function() {
	$page = "about";
	require __DIR__ . '/../views/about.php';
});

// match current request url
$match = $router->match();

// call closure or throw 404 status
if( $match && is_callable( $match['target'] ) ) {
	call_user_func_array( $match['target'], $match['params'] );
} else {
	// no route was matched
	header( $_SERVER["SERVER_PROTOCOL"] . ' 404 Not Found');
	$page = "home";
	require __DIR__ . '/../views/error.php';
}
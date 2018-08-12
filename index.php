<?php

/**
 * First hit of the application
 */

// load the (optional) Composer auto-loader
if (file_exists('vendor/autoload.php')) {
    require 'vendor/autoload.php';
}

// load application config (error reporting and mysql connections)
require 'app/config/config.php';

// load application class
require 'app/core/application.php';
require 'app/core/controller.php';

// start the application
$app = new Application;
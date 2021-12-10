<?php
/**/
define('PHPGRID_DB_HOSTNAME','localhost'); // database host name
define('PHPGRID_DB_USERNAME', 'root');     // database user name
define('PHPGRID_DB_PASSWORD', ''); // database password
define('PHPGRID_DB_NAME', 'rhiasys'); // database name
define('PHPGRID_DB_TYPE', 'mysql');  // database type
define('PHPGRID_DB_CHARSET','utf8'); // ex: utf8(for mysql),AL32UTF8 (for oracle), leave blank to use the default charset

// *** You should define SERVER_ROOT manually when use Apache alias directive or IIS virtual directory ***
define('SERVER_ROOT', str_replace(str_replace('\\', '/', realpath($_SERVER['DOCUMENT_ROOT'])),'', str_replace('\\', '/',dirname(__FILE__))));
define('THEME', 'start');
define('FRAMEWORK', '');	// indicating framework integrating - not used yet
define('DEBUG', true); // *** MUST SET TO FALSE WHEN DEPLOYED IN PRODUCTION ***
define('CDN', true);        // use Cloud CDN by default. False to use the local libraries



/******** DO NOT MODIFY ***********/
require_once('phpGrid.php');
/**********************************/
?>

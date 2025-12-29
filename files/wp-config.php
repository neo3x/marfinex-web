<?php
define('WP_CACHE', true); // Added by SpeedyCache

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'zdtdjqar_wp711' );

/** Database username */
define( 'DB_USER', 'zdtdjqar_wp711' );

/** Database password */
define( 'DB_PASSWORD', 'p93q25t-S]' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'dbdztqlfdoufz4pdrkk8sfty1f3eanwusjeqwk74heynwn36hpkg7d1pjsb24qn8' );
define( 'SECURE_AUTH_KEY',  'dedlgnhxizoy3u9hxfbf4b2eyfbcscc5o1acc31obosfxlo04dxmoru7sumugdje' );
define( 'LOGGED_IN_KEY',    'nm4xf9b0catxstrviwnc8ke0m9iodndzumhy4jl3yppluytgb9ifk9nicdphg5ag' );
define( 'NONCE_KEY',        'cywrrdged7vhmtgwv2rbmjopp8k5fojrh0sjkangiaesckzlskogag26dhnfnfg9' );
define( 'AUTH_SALT',        'fozfqjpizghpibawsweke7sifafakr0owm9ffwoim3l01qvdbidmpfigfeucin1a' );
define( 'SECURE_AUTH_SALT', 'nthebm5huoxplo0dfkrxz7cxbbe9rzq4iraxxqs0xolrbad8rnsbxlgo8lv8rvul' );
define( 'LOGGED_IN_SALT',   'qsypjwn5szjbngnskmscamkaytjnjqiieaphnd3gxhclvcnbkn47tq74y5flwi44' );
define( 'NONCE_SALT',       'ekhj7dpji3wk1tpbkzjkaybfzttvv6wzzedvv6peino8fkjd4b4i9sg2rknajsky' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp7i_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

<?php

/**
 * Global Configuration Override
 *
 * You can use this file for overriding configuration values from modules, etc.
 * You would place values in here that are agnostic to the environment and not
 * sensitive to security.
 *
 * @NOTE: In practice, this file will typically be INCLUDED in your source
 * control, so do not include passwords or other sensitive information in this
 * file.
 */
return array(
	'db' => array(
		'adapters' => array(
			'myLexicon' => array(
				'driver' => 'Pdo',
				'dsn' => 'mysql:dbname=myLexicon;host=localhost',
				'driver_options' => array(
					\PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''
				),
			),
			'myLexiconTest' => array(
				'driver' => 'Pdo',
				'dsn' => 'mysql:dbname=myLexiconTest;host=localhost',
				'driver_options' => array(
					\PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''
				),
			)
		)
	),

	'service_manager' => array(
		'abstract_factories' => array(
			'Zend\Db\Adapter\Adapter' => 'Zend\Db\Adapter\AdapterAbstractServiceFactory',
		),
	),
);

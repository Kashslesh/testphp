<?php
// Configurations for db
$DB_TYPE = 'mysql'; //Type of database
$DB_HOST = 'localhost'; //Host name
$DB_USER = 'root'; //Host Username
$DB_PASS = ''; //Host Password
$DB_NAME = 'test'; //Database name

$db = new PDO("$DB_TYPE:host=$DB_HOST; dbname=$DB_NAME", $DB_USER, $DB_PASS); // PDO Connection

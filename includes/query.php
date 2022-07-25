<?php
require 'configDB.php';
$data = ["userid" => $_POST['nameselect']];
$sql = ("INSERT INTO `users_actions` SET `user_id` = :userid, `activity` = :activity");
$statement = $query = $db->prepare($sql);
$result = $statement->execute(array('userid' => $data, 'activity' => true));

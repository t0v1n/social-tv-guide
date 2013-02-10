<?php

//MySQL Connection
mysql_connect("it515r.db.7810033.hostedresource.com", "it515r", "ITR0cks!") or die("Connection Failed");
mysql_select_db("it515r")or die("Connection Failed");

//POST Variables
$hashtag = $_POST['hashtag'];
$title = $_POST['title'];
$handle = $_POST['handle'];
$network = $_POST['network'];

//Insert show into shows table
$query = "INSERT INTO shows (hashtag, title, handle, network)
VALUES ('$hashtag', '$title', '$handle', '$network')";

mysql_query($query) or die(mysql_error());

?>
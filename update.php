<?php

// For use in hard-coding a time (YYYY-MM-DDTHH:MM), e.g. ?time=2012-12-11T19:00
$time = $_GET['time'];

// MySQL Connection
mysql_connect("it515r.db.7810033.hostedresource.com", "it515r", "ITR0cks!") or die("Connection Failed");
mysql_select_db("it515r")or die("Connection Failed");

// Clear episode data
$query = "UPDATE shows SET onAir=0, channel=null, logo=null, episode=null";
mysql_query($query) or die(mysql_error());

if ($time == null) {
	$url="http://api.rovicorp.com/TVlistings/v9/listings/gridschedule/79478/info?apikey=hafxfq9tz95ekg5zjdmf5fzq&sig=sig&locale=en-US&duration=60&includechannelimages=true";
}
else {
	$url="http://api.rovicorp.com/TVlistings/v9/listings/gridschedule/79478/info?apikey=hafxfq9tz95ekg5zjdmf5fzq&sig=sig&locale=en-US&startdate=".$time.":00-07:00&duration=60&includechannelimages=true";
}

// Get JSON from Rovi API (hafxfq9tz95ekg5zjdmf5fzq)
$json = file_get_contents($url); 
$data = json_decode($json, TRUE);
    
// Match listing title with hashtag database, marking matches as onAir	
for ($i=0; $i<=75; $i++){
	$channel = $data['GridScheduleResult']['GridChannels'][$i]['Channel'];
	$title = str_replace("'", '', $data['GridScheduleResult']['GridChannels'][$i]['Airings'][0]['Title']);
	$episode = str_replace("'", '', $data['GridScheduleResult']['GridChannels'][$i]['Airings'][0]['EpisodeTitle']);
	$network = $data['GridScheduleResult']['GridChannels'][$i]['ChannelImages'][0]['ImageTitle'];
	$logo = $data['GridScheduleResult']['GridChannels'][$i]['ChannelImages'][0]['ImageUrl'];
	
	echo $channel.$title.$network.$logo;
	
	$query = "UPDATE shows SET onAir=1, channel='$channel', logo='$logo', episode='$episode' WHERE title='$title'"; 

	mysql_query($query) or die(mysql_error());
} 

	
// Update Twitter data

$query = "SELECT * FROM shows"; 
	 
$result = mysql_query($query) or die(mysql_error());


while($row = mysql_fetch_array($result)){

	$hashtag = $row['hashtag'];

	$url="http://otter.topsy.com/searchcount.json?q=%23".$hashtag."&type=tweet&apikey=A064063F9B7543ABB26B89082B2E4B12";

	// Get JSON from Topsy (A064063F9B7543ABB26B89082B2E4B12)
	$json = file_get_contents($url); 
	$data = json_decode($json, TRUE);
		
	// Hour, day, week, month, alltime	
	$h = $data['response']['h'];
	$d = $data['response']['d'];
	$w = $data['response']['w'];
	$m = $data['response']['m'];
	$a = $data['response']['a'];
	
	// Weighted score
	$score = (20 * $h) + (10 * $d) + (5 * $w) + ($m);

	$query = "UPDATE shows SET hour=$h, day=$d, week=$w, month=$m, alltime=$a, score=$score WHERE hashtag='$hashtag'"; 

	mysql_query($query) or die(mysql_error());
}
?>
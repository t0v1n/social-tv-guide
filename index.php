<!DOCTYPE html>
<html lang="en">

	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title>TV Listings</title>

		<!-- CSS -->
		<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
		<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
		<link href='style.css' rel='stylesheet' type='text/css'>

		<!-- JavaScript -->
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		
		<!-- loadingModal -->
		<script>
			function update()
			{
				$('#loadingModal').modal('show');
				
				$.ajax({
				url: "update.php"
				}).done(function() {
					$('#loadingModal').modal('hide');
				});
			}
		</script>
		
	</head>

	<body>
		<!-- Twitter Bootstrap Template -->
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<a class="brand">TV Listings</a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<!-- addModal -->
							<li><a href="#addModal" data-toggle="modal">Add</a></li>
							<!-- loadingModal -->
							<li><a href="javascript:void(0);" onclick="update();">Update</a></li>
						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
		</div>

		<div class="container">
			<?php
			// For use in hard-coding a time (YYYY-MM-DDTHH:MM), e.g. ?time=2012-12-11T19:00
			$time = $_GET['time'];

			// MySQL Connection
			mysql_connect("it515r.db.7810033.hostedresource.com", "it515r", "ITR0cks!") or die("Connection Failed");
			mysql_select_db("it515r")or die("Connection Failed");

			// Trending Listings
			$result = mysql_query("SELECT hashtag,handle,hour,day,week,month,alltime,channel,title,score,logo,episode FROM shows WHERE onAIR=1 ORDER BY score DESC");
			echo "<center>";
				echo "<table class='tvListings'>";
					echo "<tr>";
						// Merged cells
						echo "<th colspan=3>TRENDING</td>";  
							while($row = mysql_fetch_array($result))
							{
								echo "<tr>";
									echo "<td><img src='" . $row['logo'] . "' width='35'/></td>";  
									echo "<td><strong>" . $row['channel'] . "</strong></td>";
									// Twitter data popover
									echo "<td rel='popover' data-content=
									'Tweets over the last...<br>
									Hour: ".number_format($row['hour'])."<br>
									Day: ".number_format($row['day'])."<br>
									Week: ".number_format($row['week'])."<br>
									Month: ".number_format($row['month'])."<br>
									All Time: ".number_format($row['alltime'])."<br>'
									data-original-title='<strong>#".$row['hashtag']." | @".$row['handle']."</strong>'>
									<strong>".$row['title']."</strong><br>".$row['episode']."</td>";
								echo "</tr>";
							}
					echo "<tr>";
				echo "<th colspan=3>TV LISTINGS</td>"; 

			//Regular Listings 

			// For use in hard-coding datetime
			if ($time == null) {
				$url="http://api.rovicorp.com/TVlistings/v9/listings/gridschedule/79478/info?apikey=hafxfq9tz95ekg5zjdmf5fzq&sig=sig&locale=en-US&duration=60&includechannelimages=true";
			}
			else {
				$url="http://api.rovicorp.com/TVlistings/v9/listings/gridschedule/79478/info?apikey=hafxfq9tz95ekg5zjdmf5fzq&sig=sig&locale=en-US&startdate=".$time.":00-07:00&duration=60&includechannelimages=true";
			}
			
			// Get JSON from Rovi API (hafxfq9tz95ekg5zjdmf5fzq)
			$json = file_get_contents($url); 
			$data = json_decode($json, TRUE);
					
					// Loop through channels
					for ($i=1; $i<=55; $i++)	
					{
						$channel = $data['GridScheduleResult']['GridChannels'][$i]['Channel'];
						$title = str_replace("'", '', $data['GridScheduleResult']['GridChannels'][$i]['Airings'][0]['Title']);
						$episode = str_replace("'", '', $data['GridScheduleResult']['GridChannels'][$i]['Airings'][0]['EpisodeTitle']);
						$network = $data['GridScheduleResult']['GridChannels'][$i]['ChannelImages'][0]['ImageTitle'];
						$logo = $data['GridScheduleResult']['GridChannels'][$i]['ChannelImages'][0]['ImageUrl'];

						echo "<tr>";
							echo "<td><img src='" . $logo . "' width='35'/></td>";  
							echo "<td><strong>" . $channel . "</strong></td>";
							echo "<td><strong>".$title."</strong><br>".$episode."</td>";
						echo "</tr>";
					}
				echo "</table>";
			echo "</center>";
			?>
		</div> <!-- /container -->

		<!-- Modals -->
		
		<!-- addModal -->
		<div id="addModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 id="myModalLabel">Add Twitter Details for a Show</h3>
			</div>
			<div class="modal-body">
				<form action="add_show.php" id="showForm">
					<input type="text" name="title" placeholder="Title" />
					<br>
					<input type="text" name="hashtag" placeholder="#" />
					<br>
					<input type="text" name="handle" placeholder="@" />
					<br>
					<input type="text" name="network" placeholder="Network" />
					<br>
					<input type="submit" class="btn btn-inverse" value="Submit" />
				</form>
				<script>
					$("#showForm").submit(function(event) {
						// Stop regular form submit
						event.preventDefault(); 
						
						// Get values from form fields
						var $form = $( this ),
						title = $form.find( 'input[name="title"]' ).val(),
						hashtag = $form.find( 'input[name="hashtag"]' ).val(),
						handle = $form.find( 'input[name="handle"]' ).val(),
						network = $form.find( 'input[name="network"]' ).val(),
						url = $form.attr( 'action' );

						// AJAX the data to add_show.php
						$.post( url, { title: title, hashtag: hashtag, handle: handle, network: network },
						function( data ) {});
						$('#addModal').modal('hide');
						$form.find( 'input[name="title"]' ).val("");
						$form.find( 'input[name="hashtag"]' ).val("");
						$form.find( 'input[name="handle"]' ).val("");
						$form.find( 'input[name="network"]' ).val("");
					});
				</script>

			</div>
			<div class="modal-footer"></div>
		</div>

		<!-- loadingModal -->
		<div id="loadingModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<h3 id="myModalLabel">Syncing Listings with Twitter...</h3>
			</div>
			<div class="modal-body">
				<div class="progress progress-striped active">
					<div class="bar" style="width: 100%;"></div>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>

		<!-- Twitter Bootstrap JavaScript -->
		<script src="./index_files/jquery.js"></script>
		<script src="./index_files/bootstrap-transition.js"></script>
		<script src="./index_files/bootstrap-alert.js"></script>
		<script src="./index_files/bootstrap-modal.js"></script>
		<script src="./index_files/bootstrap-dropdown.js"></script>
		<script src="./index_files/bootstrap-scrollspy.js"></script>
		<script src="./index_files/bootstrap-tab.js"></script>
		<script src="./index_files/bootstrap-tooltip.js"></script>
		<script src="./index_files/bootstrap-popover.js"></script>
		<script src="./index_files/bootstrap-button.js"></script>
		<script src="./index_files/bootstrap-collapse.js"></script>
		<script src="./index_files/bootstrap-carousel.js"></script>
		<script src="./index_files/bootstrap-typeahead.js"></script>

		<script>  
			$(function () { 
				$("td").popover({ html : true });  
			});  
		</script>
		
	</body>
	
</html>
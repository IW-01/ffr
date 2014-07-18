<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>Fantasy Football Radar</title>
  <meta name="description" content="Fantasy Football Radar">
  <meta name="author" content="FFR">

  <link rel="stylesheet" type= "text/css" href="styles.css">

  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>

<body>
  <header>
	<img src="logo1.svg" alt="Fantasy Football Radar"/>
  </header>
	<nav>
		<ul>
			<li><a href = "players.html">Players</a></li>
			<li><a href = "teams.html">Teams</a></li>
			<li><a href = "blog.html">Blog</a></li>
			<li><a href = "about.html">About</a></li>
			<li><a href = "contact.html">Contact</a></li>
		</ul>
	</nav>
	<section id="left-sidebar">
		
		<?php include("currentFixtures.html"); ?>
		
		<?php include("basicTable.html"); ?>
		
		<article>
			<!-- <div data-type=timetable data-id="30670" id="wgt-30670" class="tap-sport-tools" style="width:300px; height:auto;"></div>
			<div id="wgt-ft-30670" style="width:296px;"><p>Football results provided by <a href="http://www.whatsthescore.com/football/england/premier-league/" target="_blank" rel="nofollow"><img src="http://medias.whatsthescore.com/upload/logo-s.png" alt="whatsthescore.com" /></a></p></div><style type="text/css">#wgt-ft-30670  {background:#FFFFFF !important;color:#484848 !important;text-decoration:none !important;padding:4px 2px !important;margin:0 !important;}#wgt-ft-30670 * {font:10px Arial !important;}#wgt-ft-30670 a {color:#484848 !important;}#wgt-ft-30670 img {vertical-align:bottom !important;height:15px !important;}</style><script type="text/javascript" src="http://tools.whatsthescore.com/load.min.js?219"></script> -->
		</article>

	</section>
	<section id="main">
		<h2>Main</h2>
		<p>Donec et adipiscing augue. Nam adipiscing, massa in vulputate dignissim, purus tellus 
		iaculis nunc, aliquam accumsan dui ipsum in ante. Fusce ac scelerisque dolor. Vivamus 
		ultricies aliquam eros, ac hendrerit eros pellentesque ut. Donec malesuada ligula ut nisi 
		malesuada accumsan. Vestibulum sodales ut velit a pretium. Ut vehicula faucibus risus quis 
		egestas. Nunc facilisis ligula nunc, quis mollis ligula ultricies sit amet. Sed vitae interdum 
		enim. Fusce ut enim semper, facilisis dui vel, facilisis quam. Vivamus auctor, lorem nec lacinia 
		ultricies, diam nisi tempor urna, eu pellentesque leo lorem vel erat. Ut consequat eu ante nec 
		imperdiet. Pellentesque laoreet augue at molestie faucibus. Ut eu nunc in sapien euismod 
		vestibulum. Nam iaculis pulvinar eros, eu cursus metus rutrum sed.</p>
	</section>
	<section id="right-sidebar">
		<?php include("basicTable.html"); ?>

	</section>
	<footer>
		&copy; 2014 FFR. All rights reserved.
	</footer>
</body>
</html>
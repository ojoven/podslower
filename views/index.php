<?php require 'layout/header.php';?>

<?php
// Connect to DB
$db = new MysqliDb(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
$languages = $db->get('languages');
?>

		<div class="jumbotron">
			<h1>Learn Languages<br>With Slowed Down Podcasts</h1>
			<p class="lead">Want to listen to real podcasts but still feel like they talk too quick for you? It happened to me, too. Hope this helps.</p>
		</div>

		<?php foreach ($languages as $language) {?>

			<?php
			$db->where('lang',$language['code']);
			$podcasts = $db->get('podcasts');
			?>

			<div class="row marketing language">
				<h2 class="lang-title"><?php echo $language['name']; ?></h2>
				<?php foreach ($podcasts as $podcast) {?>
				<div class="col-lg-6 podcast">
					<h4 class="podcast-title"><?php echo $podcast['title']; ?></h4>
					<img src="http://podslower.s3.amazonaws.com/<?php echo $podcast['slug']; ?>.jpg">
					<ul class="episodes">
						<?php
						$db->where('idPodcast',$podcast['id']);
						$episodes = $db->get('episodes');
						foreach ($episodes as $episode) { ?>
						<li>
							<span class="episode-title"><?php echo $episode['title']; ?></span>
							<ul class="links">
								<li><a href="#">70%</a></li>
								<li><a href="#">80%</a></li>
								<li><a href="#">90%</a></li>
								<li><a href="#">original</a></li>
								<li><a href="#">120%</a></li>
							</ul>
						</li>
						<?php }?>
					</ul>
				</div>
				<?php } ?>

			</div>

		<?php }?>

<?php require 'layout/footer.php';?>
<?php require 'layout/header.php';?>

<?php
// Connect to DB
$db = new MysqliDb(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
$db->where('status',true);
$languages = $db->get('languages');
?>

		<div class="jumbotron">
			<h1>Learn Languages<br>With Slowed Down Podcasts</h1>
			<p class="lead">Want to listen to real podcasts but still feel like they talk too quick for you? It happened to me, too. Hope this helps.</p>
		</div>

		<?php foreach ($languages as $language) {?>

			<?php
			$db->where('lang',$language['code'])->where('parsed',true);
			$podcasts = $db->get('podcasts');
			?>

			<div class="row marketing language">
				<h2 id="<?php echo $language['code'];?>" class="lang-title"><?php echo $language['name']; ?></h2>
				<?php foreach ($podcasts as $podcast) {?>
				<div class="col-lg-6 podcast">
					<h4 class="podcast-title"><?php echo $podcast['title']; ?></h4>
					<img src="http://podslower.s3.amazonaws.com/<?php echo $podcast['slug']; ?>.jpg">
					<ul class="episodes">
						<?php
						$db->where('idPodcast',$podcast['id']);
						$episodes = $db->get('episodes');

						$episodes = (!empty($episodes)) ? array_slice($episodes,0,MAX_NUM_EPISODES) : array();
						foreach ($episodes as $episode) { ?>
						<li class="episode" data-href="<?php echo $episode['urlMp3']; ?>">
							<span class="episode-title"><?php echo $episode['title']; ?></span>
							<ul class="links btn-group">
								<li><a class="btn btn-default btn-xs" data-speed="70" href="#">70%</a></li>
								<li><a class="btn btn-success btn-xs" data-speed="80" href="#">80%</a></li>
								<li><a class="btn btn-default btn-xs" data-speed="90" href="#">90%</a></li>
								<li><a class="btn btn-default btn-xs" data-speed="100" href="#">original</a></li>
								<li><a class="btn btn-warning btn-xs" data-speed="120" href="#">120%</a></li>
							</ul>
						</li>
						<?php }?>
					</ul>
				</div>
				<?php } ?>

			</div>

		<?php }?>

<?php require 'layout/footer.php';?>
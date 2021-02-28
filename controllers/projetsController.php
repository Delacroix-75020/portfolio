<?php
	require "models/pdo.php";
	$leslignes = getlesprojets($bdd);

    require "views/projetsView.php";
?>
<?php

$bdd = new PDO('mysql:host=localhost;dbname=portfolio', 'root', '');

function getlesprojets(PDO $bdd){

	$req = "SELECT projet.github as github, projet.lien as lien, projet.idc as idc, projet.libelle as libelle, projet.idp as idp, projet.description as description, image.nom as nom FROM projet, image WHERE projet.idi = image.idi";

	$res = $bdd -> query($req);

	$leslignes = $res->FetchAll();

		return $leslignes;
}
/*function getlescategories(PDO $bdd){

	$req = "SELECT idc ,libelle from categorie";

	$res = $bdd -> query($req);

	$leslignes = $res->FetchAll();

		return $leslignes;

}*/

/*function insertprojet(PDO $pdo, $libelle, $description, $lien, $idi, $idc){

	$req = "INSERT INTO projet( libelle, description, lien, idc, idi)";
	$req = "VALUES('$libelle','$description','$lien','$idc','$idi')";
	$res = $pdo -> exec($req);


		return $res;

}*/
?>
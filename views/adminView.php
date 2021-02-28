<?php

require "../models/pdo.php";
  $leslignes = getlescategories($bdd);
  if(isset($_REQUEST['valider'])){
      $libelle = $_REQUEST['libelle'];
      $libelle = $_REQUEST['image'];
      $libelle = $_REQUEST['categories'];
      var_dump($_REQUEST);

  }

?>

<div class="container">
             <h1>Mise à jour des projets</h1>
             <form>
                <div class="row mb-3">

                    <div class="col">
                      <input type="textarea" name="libelle" class="form-control" placeholder="Description">
                    </div>
                    <div class="col">
                      <input type="text" name="image" class="form-control" placeholder="image">
                    </div>
                    <div class="col">
                      <select name="categories" class="form-control" >
                        <?php
                          foreach ($leslignes as $ligne) {
                            $idc = $ligne['idc'];
                            $libelle = $ligne['libelle'];
                         ?>

                         <option value="<?= $idc ?>"><?= $libelle ?></option>
                       <?php } ?>
 }
                    </div>
                    
                    </div>
            </form>
         </div>
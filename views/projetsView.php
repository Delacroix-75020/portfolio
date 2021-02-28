<!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Portfolio</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <!-- Portfolio Item 1-->
                    <?php

                    foreach ($leslignes as $ligne) {
                        
                        $idp = $ligne['idp'];
                        $libelle = $ligne['libelle'];
                        $description = $ligne['description'];
                        $categorie = $ligne['idc'];
                        $nom = $ligne['nom'];
                        $lien = $ligne['lien'];# code...
                    

                    ?>      
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1<?= $idp ?>">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="assets/portfolio/<?= $nom ?>" alt="" />
                        </div>
                    </div>

                     <!-- Portfolio Modal 1-->
                        <div class="portfolio-modal modal fade" id="portfolioModal1<?= $idp ?>" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                        <div class="modal-content">
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                        </button>
                        <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label<?= $idp ?>"><?= $libelle?></h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="assets/portfolio/<?= $nom ?>" alt="" />
                                    <!-- Portfolio Modal - Text-->
                                    <p class="mb-5"><?= $description?></p>
                                    
                                    <a class="btn btn-primary" href="<?= $lien ?>">Ouvrir <?= $libelle ?></a>  

                                  


                                         <button class="btn btn-primary" data-dismiss="modal">
                                             <i class="fas fa-times fa-fw"></i>
                                             Fermer cette fenetre
                                         </button>
                                    </button>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                   <?php } ?> 

               </div>
           </div>
       </section>


                   
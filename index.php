<?php

require_once './inc/head_inc.php';

$viewReq = $connect->query("SELECT * FROM advert ORDER BY id DESC LIMIT 15");

$annonces = $viewReq->fetchAll(PDO::FETCH_ASSOC);

?>


<title>Agence | Accueil</title>
</head>

<?php

require_once './inc/header_inc.php';

?>

<body>
    <div class="container-fluid mb-5 hero-container">
        <img src="./img/hero-bg.jpeg" class="img-fluid" style="width: 100%;" alt="">
        <h1 class="text-center mt-4 mb-5 hero-h1">Votre spécialiste de l'immobilier vous propose une sélection des plus beaux appartements et maisons à vendre</h1>
    </div>


    <div class="container mb-5 mt-4 d-flex flex-wrap">

        <?php foreach ($annonces as $annonce) { ?>

            <div class="mb-3">
                <div class="card">
                    <h5 class="card-header"><?php echo $annonce['type']; ?></h5>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $annonce['title']; ?></h5>
                        <p class="card-text"><?php echo $annonce['description']; ?></p>
                        <p class="card-text"><strong><?php echo $annonce['price']; ?> €</strong></p>
                        <a href="<?= URL ?>annonce_details.php?id=<?php echo $annonce['id']; ?>" class="btn btn-primary">Details de l'annonce</a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>

    <?php

    require_once './inc/footer_inc.php';

    ?>
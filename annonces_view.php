<?php

require_once './inc/head_inc.php';

$viewReq = $connect->query("SELECT * FROM advert ORDER BY id DESC");

$annonces = $viewReq->fetchAll(PDO::FETCH_ASSOC);

?>


<title>Agence | Liste des annonces</title>
</head>

<?php

require_once './inc/header_inc.php';

?>

<body>

    <h1 class="text-center mt-4 mb-5">Agence | Liste des annonces</h1>


    <div class="container mb-5 mt-4 d-flex flex-wrap">

        <?php foreach ($annonces as $annonce) { ?>

            <div class="mb-3">
                <div class="card">
                    <h5 class="card-header"><?php echo $annonce['type']; ?></h5>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $annonce['title']; ?></h5>
                        <p class="card-text"><?php echo $annonce['description']; ?></p>
                        <a href="<?= URL ?>annonce_details.php?id=<?php echo $annonce['id']; ?>" class="btn btn-primary">Details de l'annonce</a>

                        <?php if (!empty($annonce['reservation_message'])) : ?>

                            <span class="badge text-bg-warning m-4">Réservé</span>

                        <?php endif ?>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>

    <?php

    require_once './inc/footer_inc.php';

    ?>
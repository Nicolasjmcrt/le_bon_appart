<?php

require_once './inc/head_inc.php';

if (isset($_GET['id'])) {

    $reqProd = $connect->query("SELECT * FROM advert WHERE id = '$_GET[id]'");
    $annonce = $reqProd->fetch(PDO::FETCH_ASSOC);
}


if ($_POST) {

    $message = $_POST['message'];

    $connect->query("UPDATE advert SET reservation_message = '$message' WHERE id = '$_GET[id]'");

    header('location:annonces_view.php');
}

?>


<title>Agence | Details de l'annonce</title>
</head>

<?php

require_once './inc/header_inc.php';

?>

<body>

    <h1 class="text-center mt-4 mb-5">Agence | Details de l'annonce</h1>


    <div class="container mb-5 mt-4 d-flex flex-column align-items-center">

        <div class="col-8">
            <div class="card mb-5">
                <img src="./img/default-img.jpeg" class="card-img-top" alt="...">
                <div class="card-body mb-5">
                    <h5 class="card-title"><?php echo $annonce['title']; ?></h5>
                    <p class="card-text"><?php echo $annonce['type']; ?></p>
                    <p class="card-text"><?php echo $annonce['description']; ?></p>
                    <p class="card-text"><strong>Message : </strong><?php echo $annonce['reservation_message']; ?></p>
                    <p class="card-text"><i class="bi bi-geo-alt"></i> <?php echo $annonce['city']; ?> (<?php echo $annonce['postal_code']; ?>)</p>
                    <p class="card-text"><strong><?php echo $annonce['price']; ?> €</strong></p>
                    <p class="card-text"><small class="text-muted">N° annonce : <?php echo $annonce['id']; ?></small></p>
                </div>
            </div>
        </div>
        <div class="col-8 mt-4 mb-5">
            <form action="" method="POST">
                <div class="mb-3">
                    <label for="message" class="form-label">Message réservation</label>
                    <textarea class="form-control" id="message" name="message" rows="3"></textarea>
                </div>
                <button type="submit" name="submit" class="btn btn-dark">Je réserve</button>
            </form>
        </div>
    </div>

    <?php

    require_once './inc/footer_inc.php';

    ?>
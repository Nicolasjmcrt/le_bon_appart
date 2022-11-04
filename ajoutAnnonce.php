<?php

require_once './inc/head_inc.php';

$error = '';

if ($_POST) {

    foreach ($_POST as $key => $value) {
        $_POST[$key] = htmlspecialchars(addslashes($value));
    }


    $title = $_POST['title'];
    $description = $_POST['description'];
    $codePostal = $_POST['code_postal'];
    $city = $_POST['city'];
    $type = $_POST['type'];
    $prix = $_POST['prix'];

    if (empty($title)) {
        $error .= '<div class="alert alert-dismissible fade show alert-danger" role="alert">
    Vous devez saisir un titre !
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    }

    if (empty($description)) {
        $error .= '<div class="alert alert-dismissible fade show alert-danger" role="alert">
    Vous devez saisir une description !
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    }

    if (empty($codePostal)) {
        $error .= '<div class="alert alert-dismissible fade show alert-danger" role="alert">
    Vous devez saisir un code postal !
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    }

    if (empty($city)) {
        $error .= '<div class="alert alert-dismissible fade show alert-danger" role="alert">
    Vous devez saisir une ville !
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    }

    if (empty($type)) {
        $error .= '<div class="alert alert-dismissible fade show alert-danger" role="alert">
    Vous devez sélectionner un type !
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    }

    if (empty($prix)) {
        $error .= '<div class="alert alert-dismissible fade show alert-danger" role="alert">
    Vous devez saisir un prix !
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    }

    if (empty($error)) {
        $connect->query("INSERT INTO advert(title, description, postal_code, city, type, price) VALUES('$title', '$description', '$codePostal', '$city', '$type', '$prix')");

        $error .= '<div class="alert alert-dismissible fade show alert-success" role="alert">
                Le bien a été ajouté !
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

        $_SESSION['addPropertyMess'] = '<div class="alert alert-dismissible fade show alert-success" role="alert">
        Le bien a été ajouté !
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

        header('location:annonces_view.php');
    }

    $alert .= $error;


}


?>


    <title>Agence | Ajout d'annonces</title>
</head>

<?php 

    require_once './inc/header_inc.php';

?>

<body>
    <h1 class="text-center mt-4 mb-5">Agence | Ajout d'annonces</h1>
    <div class="container d-flex justify-content-center mt-3 mb-5">
        <div class="col-8">
            <form action="" method="POST">
                <div class="mb-3">
                    <label for="title" class="form-label">Titre de l'annonce</label>
                    <input type="text" class="form-control" name="title" id="title" aria-describedby="titlelHelp">
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description de l'annonce</label>
                    <textarea class="form-control" id="details" name="description" rows="3"></textarea>
                </div>
                <div class="mb-3">
                    <label for="code_postal" class="form-label">Code postal de l'annonce</label>
                    <input type="text" class="form-control" name="code_postal" id="code_postal" aria-describedby="code_postallHelp">
                </div>
                <div class="mb-3">
                    <label for="city" class="form-label">Ville de l'annonce</label>
                    <input type="text" class="form-control" name="city" id="city" aria-describedby="citylHelp">
                </div>
                <div class="mb-3">
                    <label for="type" class="form-label">Ville de l'annonce</label>
                    <select class="form-select" name="type" aria-label="Default select example">
                        <option selected>Choisissez un type de bien</option>
                        <option value="1">Location</option>
                        <option value="2">Vente</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="prix" class="form-label">Prix de l'annonce</label>
                    <input type="text" class="form-control" name="prix" id="prix" aria-describedby="prixlHelp">
                </div>
                <button type="submit" name="submit" class="btn btn-primary">Ajouter</button>
            </form>
        </div>
    </div>
<?php 

require_once './inc/footer_inc.php';

?>
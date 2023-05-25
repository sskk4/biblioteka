<!doctype html>
<?php $pageTitle = 'dodaj książkę'; include('../shared/header.php') ?>

<body>
<?php $currentPage = 'ksiazki'; include('../shared/navbar.php') ?>

    <div class="container mt-5 mb-5">

    <?php

require "../../controllers/KsiazkiController.php";
use controllers\KsiazkiController;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $gatunek = $_POST['gatunek'];
    $gatunek2 = 'gatunek';
    $ksiazkiController = new KsiazkiController();
    $ksiazkiController->create_select($gatunek,$gatunek, $gatunek2);
}


?>

        <div class="row mt-4 mb-4 text-center">
            <h1>Dodaj nowy gatunek</h1>
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-6">
               
            <form method="POST" action="create.gatunek.php" class="needs-validation" novalidate>

                    <div class="form-group mb-2">
                        <label for="gatunek">Gatunek</label>
                        <input id="gatunek" name="gatunek" type="text" class="form-control">
                        <div class="invalid-feedback">Nieprawidłowa nazwa!</div>
                    </div>

                    <div class="text-center mt-4 mb-4">
                        <input class="btn btn-success" type="submit" value="Dodaj"> 
                    </div>
                </form>



            </div>
        </div>
    </div>

    <?php include('../shared/footer.php') ?>
</body>

</html>

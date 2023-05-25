<!doctype html>
<?php $pageTitle = 'dodaj książkę'; include('../shared/header.php') ?>

<body>
<?php $currentPage = 'ksiazki'; include('../shared/navbar.php') ?>

    <div class="container mt-5 mb-5">

    <?php
// create.wydawnictwo.php
require "../../controllers/KsiazkiController.php";
use controllers\KsiazkiController;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $autor = $_POST['imię'];
    $nazwisko = $_POST['nazwisko'];
    $autor2 = 'autor';
    $ksiazkiController = new KsiazkiController();
    $ksiazkiController->create_select($autor,$nazwisko,$autor2);
}


?>

        <div class="row mt-4 mb-4 text-center">
            <h1>Dodaj nowego autora</h1>
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-6">
               
            <form method="POST" action="create.autor.php" class="needs-validation" novalidate>

                    <div class="form-group mb-2">
                        <label for="imię">Imię</label>
                        <input id="imię" name="imię" type="text" class="form-control">
                        <div class="invalid-feedback">Nieprawidłowa nazwa!</div>
                    </div>

                    <div class="form-group mb-2">
                        <label for="nazwisko">Nazwisko</label>
                        <input id="nazwisko" name="nazwisko" type="text" class="form-control">
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

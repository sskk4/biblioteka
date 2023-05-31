<!doctype html>
<?php $pageTitle = 'dodaj książkę'; include('../shared/header.php') ?>

<body>
<?php $currentPage = 'ksiazki'; include('../shared/navbar.php') ?>

    <div class="container mt-5 mb-5">

        <div class="row mt-4 mb-4 text-center">
            <h1>Dodaj nową ksiązkę</h1>
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-6">

                <form method="POST" class="needs-validation" novalidate>


                <div class="form-group mb-2">
                    <label for="code">Autor</label>
                    <div class="d-flex align-items-center">
                    <select class="form-select mr-3" aria-label="Default select example">
                        
                        <?php
                        require "../../controllers/KsiazkiController.php";

                        use controllers\KsiazkiController;

                        $ksiazkiController = new KsiazkiController();
                        $autor = 'autor';
                        $ksiazkiController->show_select($autor);
                        ?>

                        </select>
                        <button type="button" class="btn btn btn-success" onclick="window.location.href='create.autor.php'" >+</button>
                        <div class="invalid-feedback">Nieprawidłowy autor!</div>
                    </div>
                    </div>


                    <div class="form-group mb-2">
                    <label for="gatunek">Gatunek</label>
                    <div class="d-flex align-items-center">
                    <select class="form-select mr-3" aria-label="Default select example">
                        
                        <?php
                        $gatunek = 'gatunek';
                        $ksiazkiController->show_select($gatunek);
                        ?>

                        </select>
                        <button type="button" class="btn btn btn-success" onclick="window.location.href='create.gatunek.php'">+</button>
                        <div class="invalid-feedback">Nieprawidłowy gatunek!</div>
                    </div>
                    </div>


                    <div class="form-group mb-2">
                    <label for="wydawnictwo">Wydawnictwo</label>
                    <div class="d-flex align-items-center">
                    <select class="form-select mr-3" aria-label="Default select example">
                        
                        <?php
                        $wydawnictwo = 'wydawnictwo';
                        $ksiazkiController->show_select($wydawnictwo);
                        ?>

                        </select>
                        <button type="button" class="btn btn btn-success" onclick="window.location.href='create.wydawnictwo.php'">+</button>
                        <div class="invalid-feedback">Nieprawidłowe wydawnictwo!</div>
                    </div>
                    </div>
                        

                    <div class="form-group mb-2">
                        <label for="tytuł">Tytuł</label>
                        <input id="tytuł" name="tytuł" type="text" class="form-control">
                        <div class="invalid-feedback">Nieprawidłowa tytuł!</div>
                    </div>


                    <div class="form-group mb-2">
                        <label for="rok">Rok</label>
                        <input id="rok" name="rok" type="text" class="form-control">
                        <div class="invalid-feedback">Nieprawidłowy rok!</div>
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

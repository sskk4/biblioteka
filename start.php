<!doctype html>

<?php
$pageTitle = 'Start';
include('views/shared/header.php');
?>

  <body>

  <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <a class="navbar-brand" href="#">Biblioteka</a>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" href="start.php">Start</a>
              </li>
          </div>
        </div>
      </nav>


<div class="row mt-4 mb-4 text-center">
            <h1>Start</h1>
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-6">
    
    <div class="form-group mb-2">
                        <label for="rok">Prosze podaj id bibliotekarza</label>
                        <input id="rok" name="rok" type="text" class="form-control">
                        <div class="invalid-feedback">Nieprawidłowe id!</div>
                    </div>
                    <div class="text-center mt-4 mb-4">
                        <input class="btn btn-success" type="submit" value="Zaloguj" onclick='window.location.href="views/wypozyczenia/wypozyczenia.php"'>
                    </div>
</div>
</div>

<?php
include('views/shared/footer.php');
?>
 
</body>
</html>
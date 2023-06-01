<!doctype html>

<?php
$pageTitle = 'książki';
include('../shared/header.php');
?>

  <body>

<?php
$currentPage = 'ksiazki';
include('../shared/navbar.php');
?>


<div class="container ">
    <h2 class='title mx-1'> Gatunki </h2>
   
    <button type="button" class="btn btn-right btn-dark  mx-1" onclick="window.location.href='create.gatunek.php'">Dodaj gatunek</button>
    <button type="button" class="btn btn-right btn-outline-success mx-1" onclick="window.location.href='ksiazki.php'">Książki</button>
    <button type="button" class="btn btn-right btn-outline-dark mx-1" onclick="window.location.href='autorzy.php'">Autorzy</button>
    <button type="button" class="btn btn-right btn-outline-dark mx-1 active" onclick="window.location.href='gatunki.php'">Gatunki</button>
    <button type="button" class="btn btn-right btn-outline-dark mx-1" onclick="window.location.href='wydawnictwa.php'">Wydawnictwa</button>
    <table class="table table-striped table-hover mt-sm-1 ">
        <thead class='bg-dark text-light rounded-1'>
        <tr>
        <th class='rounded-start'>ID gatunku</th>
            <th class='rounded-end'>Nazwa gatunku</th>
        </tr>
    </thead>
    <tbody>

    <?php

    require "../../controllers/KsiazkiController.php";

    use controllers\KsiazkiController;

    $ksiazkiController = new KsiazkiController();
    $option = 'gatunki';
    $ksiazkiController->show($option);

?>

    </tbody>
  </table>
</div>

<?php
include('../shared/footer.php');
?>
 
</body>
</html>
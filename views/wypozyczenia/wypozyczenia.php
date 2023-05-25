<!doctype html>
<!doctype html>

<?php
$pageTitle = 'wypozyczenia';
include('../shared/header.php');
?>

  <body>

<?php
$currentPage = 'wypozyczenia';
include('../shared/navbar.php');
?>


<div class="container ">
    <h2 class='title'> Wypożyczenia </h2>
    <button type="button" class="btn btn-right btn-dark">Dodaj wypożyczenie</button>


    <table class="table table-striped table-hover">
        <thead class='thead-black'>
        <tr>
            <th>ID wypożyczenia</th>
            <th>Imie i nazwisko bibliotekarza</th>
            <th>Imie i nazwisko czytelnika </th>
            <th>Nazwa książki</th>
            <th>Data wypożyczenia </th>
            <th>Data oddania </th>
            <th> </th>
        </tr>
    </thead>
    <tbody>

    <?php

    require "../../php/connect.php";

$sql = "SELECT * FROM Wypożyczenie";

$stmt = $conn->prepare($sql);
if (!$stmt) {
    echo "Błąd w zapytaniu: " . $conn->errorInfo();
    die();
}
$stmt->execute();


$resultSet = $stmt->fetchAll(PDO::FETCH_ASSOC);

if (count($resultSet) === 0) {
    echo "Brak danych do wyświetlenia.";
} else {
  foreach ($resultSet as $row) {
    echo "<tr>";
    echo "<td>" . $row['id_wypożyczenie'] . "</td>";
    echo "<td>" . $row['id_bibliotekarz'] . "</td>";
    echo "<td>" . $row['id_czytelnik'] . "</td>";
    echo "<td>" . $row['id_książka'] . "</td>";
    echo "<td>" . $row['data_wypożyczenia'] . "</td>";
    echo "<td>" . $row['data_zwrotu'] . "</td>";
    echo '<td> <button type="button" class="btn btn-outline-dark">Edytuj</button> </td>';
    echo "</tr>";
  }
}
$conn = null;
?>

    </tbody>
      </table>
   
  </div>
 

  <?php
include('../shared/footer.php');
?>

</body>
</html>
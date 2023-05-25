<!doctype html>
<?php
$pageTitle = 'czytelnicy';
include('../shared/header.php');
?>

  <body>

<?php
$currentPage = 'czytelnicy';
include('../shared/navbar.php');
?>


<div class="container ">
    <h2 class='title'> Czytelnicy </h2>
    <button type="button" class="btn btn-right btn-dark" >Dodaj czytelnika</button>

    <table class="table table-striped table-hover">
        <thead class='thead-black'>
        <tr>
            
            <th>ID Czytelnika</th>
            <th>Imię</th>
            <th>Nazwisko </th>
            <th>Pesel</th>
            <th>Nr_telefonu </th>
            <th>E-mail</th>
            <th></th>
        </tr>
    </thead>
    <tbody>

    <?php

    require "../../php/connect.php";

$sql = "SELECT * FROM Czytelnik";

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
    echo "<td>" . $row['id_czytelnik'] . "</td>";
    echo "<td>" . $row['imię'] . "</td>";
    echo "<td>" . $row['nazwisko'] . "</td>";
    echo "<td>" . $row['pesel'] . "</td>";
    echo "<td>" . $row['nr_telefonu'] . "</td>";
    echo "<td>" . $row['e-mail'] . "</td>";
    echo '<td> <button type="button" class="btn btn-outline-dark" >Edytuj</button> </td>';
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
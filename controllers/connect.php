<?php
/*// Informacje dotyczące połączenia z bazą danych Oracle
$host = 'adres_serwera'; // Adres serwera Oracle
$port = 'port'; // Port (np. 1521)
$sid = 'nazwa_bazy_danych'; // Nazwa bazy danych Oracle
$username = 'uzytkownik'; // Nazwa użytkownika
$password = 'haslo'; // Hasło użytkownika

// Tworzenie połączenia z bazą danych Oracle
$dsn = "oci:dbname=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=$host)(PORT=$port)))(CONNECT_DATA=(SID=$sid)))";
$conn = new PDO($dsn, $username, $password);
*/


function getConnection() {
    $host = 'localhost'; 
    $dbname = 'biblioteka'; 
    $username = 'root'; 
    $password = ''; 

    try {
        $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        return $conn;
    } catch (PDOException $e) {
        echo "Błąd połączenia z bazą danych: " . $e->getMessage();
        return null;
    }
}


?>
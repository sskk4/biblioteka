<?php

namespace controllers;

require "connect.php";
use \PDO;
use \PDOException;

class Czytelnicy
{
    public $czytelnicy_fillable = ['id_czytelnik','imię','nazwisko','pesel','nr_telefonu'];
}

class CzytelnicyController
{

    public function show($option)
    {
        $conn = getConnection();

        if ($conn) {
            $sql = "SELECT * FROM ".$option;
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $resultSet = $stmt->fetchAll(PDO::FETCH_ASSOC);

            if (count($resultSet) === 0) {
                echo "Brak danych do wyświetlenia.";
            } else {
                
                if ($option == 'czytelnik')
                {
                    $czytelnik = new Czytelnicy();
               foreach ($resultSet as $row) {
                    echo "<tr>";
                    foreach($czytelnik->czytelnicy_fillable as $column)
                    {
                        echo "<td>" . $row[$column] . "</td>";
                    }
                    echo '<td><center><button type="button" class="btn btn-outline-dark">Edytuj</button></center></td>';
                    echo "</tr>";
                }
                }

            }

            $conn = null; 
    }
}

    public function create_select($option,$option1, $option2)
    {
        try {
            $conn = getConnection();
            if ($conn) {
                if ($option2 === 'autor') {
                    $sql = "INSERT INTO autor(imię, nazwisko) VALUES (?, ?)";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute([$option, $option1]);
                } else {
                    $sql = "INSERT INTO $option2($option2) VALUES (?)";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute([$option]);
                }
                
                header('Location: create.ksiazki.php');
                exit();
            }
        } catch (PDOException $e) {
            echo "Wystąpił błąd przy dodawaniu do bazy danych: " . $e->getMessage();
        } finally {
            if ($conn) {
                $conn = null;
            }
        }
    }

    public function index()
    {

    }

    public function create()
    {

        $conn = getConnection();

    }

    public function store()
    {

    }


    public function edit()
    {

    }


    public function update()
    {

    }


    public function destroy()
    {
 
    }
}
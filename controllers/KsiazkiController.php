<?php

namespace controllers;

require "connect.php";
use \PDO;
use \PDOException;

class Ksiazka
{
    public $ksiazka_fillable = ['id_książka','id_autor','id_gatunek','id_wydawnictwo','tytuł','rok'];

}

class Gatunek
{
    public $gatunek_fillable = ['id_gatunek','gatunek'];
}

class Wydawnictwo
{
    public $wydawnictwo_fillable = ['id_wydawnictwo','wydawnictwo'];
}

class Autor
{
    public $autor_fillable = ['id_autor','imię','nazwisko'];
}

class KsiazkiController
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
                
                if ($option == 'książka')
                {
                    $ksiazka = new Ksiazka();
               foreach ($resultSet as $row) {
                    echo "<tr>";
                    foreach($ksiazka->ksiazka_fillable as $column)
                    {
                        echo "<td>" . $row[$column] . "</td>";
                    }
                    echo '<td><center><button type="button" class="btn btn-outline-dark">Edytuj</button></center></td>';
                    echo "</tr>";
                }
                }

                if ($option == 'wydawnictwo')
                {
                    $wydawnictwo = new Wydawnictwo();
                    foreach ($resultSet as $row) {
                        echo "<tr>";
                        foreach($wydawnictwo->wydawnictwo_fillable as $column)
                        {
                            echo "<td>" . $row[$column] . "</td>";
                        }
                        echo '<td><center><button type="button" class="btn btn-outline-dark">Edytuj</button></center></td>';
                        echo "</tr>";
                    }
                }

                if($option == 'gatunek')
                {
                    $gatunek = new Gatunek();
                    foreach ($resultSet as $row) {
                        echo "<tr>";
                        foreach($gatunek->gatunek_fillable as $column)
                        {
                            echo "<td>" . $row[$column] . "</td>";
                        }
                        echo '<td><center><button type="button" class="btn btn-outline-dark">Edytuj</button></center></td>';
                        echo "</tr>";
                    }
                }

                if($option == 'autor')
                {
                    $autor = new Autor();
                    foreach ($resultSet as $row) {
                        echo "<tr>";
                        foreach($autor->autor_fillable as $column)
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

    public function show_select($option)
    {
        $conn = getConnection();

        if ($conn) {
            
            if($option == 'autor')
            {
                $sql = "SELECT imię, nazwisko FROM ".$option." ORDER BY imię";
            }
            else
            {
                $sql = "SELECT ".$option." FROM ".$option." ORDER BY ".$option;
            }
            
            
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $resultSet = $stmt->fetchAll(PDO::FETCH_ASSOC);

            if (count($resultSet) === 0) {
                echo "Brak danych do wyświetlenia.";
            } else {
               
                foreach ($resultSet as $row) {
                    if($option == 'autor')
                    {
                        echo "<option>" . $row['imię'] ." ";
                        echo $row['nazwisko'] . "</option>";    
                    }
                    else
                    {
                        echo "<option>" . $row[$option] . "</option>";      
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
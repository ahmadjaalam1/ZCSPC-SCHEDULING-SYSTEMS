<?php

// php select option value from database

$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "zcspc";

// connect to mysqli database

$connect = mysqli_connect($hostname, $username, $password, $databaseName);

// mysqli select query
$query = "SELECT * FROM `examinee_info`";

// for method 1

$result1 = mysqli_query($connect, $query);



?>


<div class="container">
<table class="table table-bordered border-primary" >
 <?php
     echo "<tr>
            <td>";
               // your database connection
         $host       = "localhost"; 
               $username   = "root"; 
               $password   = "";
               $database   = "zcspc"; 
         
               // select database
         $conn = mysqli_connect($host,$username,$password,$database) or die(mysqli_error()); 

                    $query = ("SELECT * FROM examinee_info");
                    $result = mysqli_query($conn,$query) or die(mysqli_error());
                    echo "<div class='container'><table width='' class='table table-bordered table-light' border='0.1' >
                            <tr>
                                <th>name</th>
                                <th>middle</th>
                                 <th>last</th>
                            </tr>";
                        while($row = mysqli_fetch_array($result))
                        {
                        echo "<tr>";
                        echo "<td>" . $row['firstName'] . "</td>";
                        echo "<td>" . $row['middleName'] . "</td>";
                        echo "<td>" . $row['lastName'] . "</td>";
                        echo "</tr>";
                        }
                    echo "</table>";

            echo "</td>           
        </tr>";
  ?>

</div>



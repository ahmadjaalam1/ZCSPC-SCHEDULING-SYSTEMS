<?php
  
  $conn = mysqli_connect("localhost", "root", "", "zcspc")or die("couldn't connect to the database!");
    $datess = $_POST ['datess'];
    $timess = $_POST ['times'];
    $activites = $_POST ['activities'];

    $sql = "INSERT INTO logs (date_sched,time_sched, activity_sched)VALUES('$datess','$timess','$activites')";
    $result =  mysqli_query($conn, $sql);
    if($result){
        echo '<script type="text/javascript">
        alert("New Schedule Added Successfully");
           location="schedule.php";
             </script>';
  
    }
       
    
?>
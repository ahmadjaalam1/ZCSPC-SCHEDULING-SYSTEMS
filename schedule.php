<?php

// php select option value from database

$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "zcspc";

// connect to mysqli database

$connect = mysqli_connect($hostname, $username, $password, $databaseName);

// mysqli select query
$query = "SELECT * FROM `logs`";

// for method 1

$result1 = mysqli_query($connect, $query);

$query = "SELECT * FROM `logs`";

// for method 2

$result2 = mysqli_query($connect, $query);



$query = "SELECT * FROM `logs`";

// for method 3

$result3 = mysqli_query($connect, $query);
?>

<?php require_once "nav.php";?>
<div class="container col-6">
<table class="table table-bordered border-primary ">
<thead>
    Schedule <span><button type="button" class="btn btn-info">Edit</button></span>
  </thead>
  <tbody>
    <tr class="table-active">
      
    </tr>
    <tr>
    <th scope="row">Date</th>
      <th colspan="2" class="table-active">Time</th>
      <th>Activity</th>
    </tr>
    <tr>
          <td scope="row"> <?php while($row1 = mysqli_fetch_array($result1)):;?>
                                 <option  value="<?php echo $row1[0];?>"><?php echo $row1[1];?></option>

                               <?php endwhile;?>
            </td>

      <td colspan="2" class="table-active"><?php while($row1 = mysqli_fetch_array($result2)):;?>
                                 <option  value="<?php echo $row1[1];?>"><?php echo $row1[2];?></option>

                               <?php endwhile;?></td>

      <td colspan="2" ><?php while($row1 = mysqli_fetch_array($result3)):;?>
                                 <option  value="<?php echo $row1[2];?>"><?php echo $row1[3];?></option>

                               <?php endwhile;?></td>
    </tr>
  </tbody>
</table>
</div>

<?php
// Turn on error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

// ✅ Database connection
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'cencus';

$conn = new mysqli($host, $username, $password, $database);
if ($conn->connect_error) {
    die("❌ Database connection failed: " . $conn->connect_error);
}

if (isset($_POST['data'])) {
    $city_id = 1;
    $success = true;

    // ✅ Children data
    $child_alive_list = $_POST['child_alive'] ?? [];
    $child_names = $_POST['child_name'] ?? [];
    $child_ages = $_POST['child_age'] ?? [];

    for ($i = 0; $i < count($child_names); $i++) {
        $alive = isset($child_alive_list[$i]) ? trim($child_alive_list[$i]) : null;
        $name = isset($child_names[$i]) ? trim($child_names[$i]) : null;
        $age = isset($child_ages[$i]) ? intval($child_ages[$i]) : null;

        if (!empty($name)) {
            $stmt = $conn->prepare("INSERT INTO children_final (city_id, child_alive, name, age) VALUES (?, ?, ?, ?)");
            $stmt->bind_param("issi", $city_id, $alive, $name, $age);

            if (!$stmt->execute()) {
                $success = false;
                echo "❌ Child Insert Error: " . $stmt->error . "<br>";
            }
            $stmt->close();
        }
    }

    // ✅ Elderly data
    $elderly_confirmed = $_POST['elderly_death_confirmed'] ?? [];
    $elderly_names = $_POST['elderly_name'] ?? [];
    $elderly_ages = $_POST['elderly_age'] ?? [];

    for ($j = 0; $j < count($elderly_names); $j++) {
        $confirmed = isset($elderly_confirmed[$j]) ? trim($elderly_confirmed[$j]) : null;
        $name = isset($elderly_names[$j]) ? trim($elderly_names[$j]) : null;
        $age = isset($elderly_ages[$j]) ? intval($elderly_ages[$j]) : null;

        if (!empty($name)) {
            $stmt = $conn->prepare("INSERT INTO deceased_elderly (city_id, death_confirmed, name, age) VALUES (?, ?, ?, ?)");
            $stmt->bind_param("issi", $city_id, $confirmed, $name, $age);

            if (!$stmt->execute()) {
                $success = false;
                echo "❌ Elderly Insert Error: " . $stmt->error . "<br>";
            }
            $stmt->close();
        }
    }

    if ($success) {
        echo "<script>alert('✅ Data inserted successfully!'); window.location.href='succ.php';</script>";
    } else {
        echo "<script>alert('⚠️ Some error occurred while inserting data. Check output.');</script>";
    }
}

$conn->close();
?>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Census Form</title>
<style>
:root {
  --orange: #ff7a00;
  --orange-dark: #e66900;
  --orange-light: #fff4e6;
  --border: #e0e0e0;
  --text: #333;
  --bg: #fff;
}

body {
  font-family: Arial, sans-serif;
  background: var(--orange-light);
  color: var(--text);
  margin: 20px;
}

table {
  width: 50%;
  border-collapse: collapse;
  box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  margin-bottom: 20px;
}

th {
  background: var(--orange);
  color: #fff;
  text-align: center;
  padding: 10px;
  font-size: 16px;
  border: 1px solid var(--orange-dark);
}

td {
  border: 1px solid var(--border);
  padding: 8px;
  text-align: center;
  background: var(--bg);
}

tr:nth-child(even) td {
  background: var(--orange-light);
}

input[type="text"] {
  width: 95%;
  padding: 6px;
  border: 1px solid var(--border);
  border-radius: 4px;
  font-size: 14px;
  outline: none;
  transition: border 0.3s, box-shadow 0.3s;
}

input[type="text"]:focus {
  border: 1px solid var(--orange-dark);
  box-shadow: 0 0 5px rgba(255,122,0,0.5);
}

button, .add-button {
  background-color: var(--orange);
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  font-size: 18px;
  cursor: pointer;
  margin-top: 10px;
  display: inline-block;
  user-select: none;
}
h3{
         color: #ff7a00; 
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<center>
<form method="POST" action="">

  <h3>Children Ever Born Alive</h3>
  <table id="childrenTable">
    <thead>
      <tr>
        <th>No.</th>
        <th>Child Alive (1.Yes 2.No)</th>
        <th>Name of Child</th>
        <th>Age</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td><input type="text" name="child_alive[]" /></td>
        <td><input type="text" name="child_name[]" /></td>
        <td><input type="text" name="child_age[]" /></td>
      </tr>
    </tbody>
  </table>
  <div class="add-button" id="addChildRow">Add  Row</div>

  <h3>Deaths of Old Person in Last 10 Years</h3>
  <table id="elderlyTable">
    <thead>
      <tr>
        <th>No.</th>
        <th>Death Confirmed (1.Yes 2.No)</th>
        <th>Name of Old Person</th>
        <th>Age</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td><input type="text" name="elderly_death_confirmed[]" /></td>
        <td><input type="text" name="elderly_name[]" /></td>
        <td><input type="text" name="elderly_age[]" /></td>
      </tr>
    </tbody>
  </table>
  <div class="add-button" id="addElderlyRow">Add Elderly Row</div><br>
  <br>
<p style="color: #ff7a00"><input type="checkbox" name="no"> "no children" status or not assign death sentences</p>
  <br>
  <button type="submit" name="data" >Submit</button>
</form>

<script>
$(function(){
  function updateRowNumbers(tableId) {
    $(`#${tableId} tbody tr`).each(function(index) {
      $(this).find('td:first').text(index + 1);
    });
  }

  $('#addChildRow').click(function() {
    let $lastRow = $('#childrenTable tbody tr:last');
    let $newRow = $lastRow.clone();

    $newRow.find('input').val(''); // clear inputs
    $('#childrenTable tbody').append($newRow);
    updateRowNumbers('childrenTable');
  });

  $('#addElderlyRow').click(function() {
    let $lastRow = $('#elderlyTable tbody tr:last');
    let $newRow = $lastRow.clone();

    $newRow.find('input').val(''); // clear inputs
    $('#elderlyTable tbody').append($newRow);
    updateRowNumbers('elderlyTable');
  });
});
</script>
</center>
</body>
</html>

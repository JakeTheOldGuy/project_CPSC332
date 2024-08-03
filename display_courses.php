<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cs332s11_new";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM Course";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'><tr><th>CNum</th><th>CTitle</th><th>Textbook</th><th>Units</th><th>DNo</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["CNum"]. "</td><td>" . $row["CTitle"]. "</td><td>" . $row["Textbook"]. "</td><td>" . $row["Units"]. "</td><td>" . $row["DNo"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>

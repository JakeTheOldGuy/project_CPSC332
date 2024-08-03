<?php
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

$sql = "SELECT * FROM student";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'><tr><th>CampusID</th><th>FName</th><th>LName</th><th>SAddress</th><th>STelephone</th><th>DNoMajor</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["CampusID"]. "</td><td>" . $row["FName"]. "</td><td>" . $row["LName"]. "</td><td>" . $row["SAddress"]. "</td><td>" . $row["STelephone"]. "</td><td>" . $row["DNoMajor"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>

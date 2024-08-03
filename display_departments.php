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

$sql = "SELECT * FROM department";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'><tr><th>DNum</th><th>DName</th><th>DTelephone</th><th>DOfficeLoc</th><th>ChairPersonSSN</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["DNum"]. "</td><td>" . $row["DName"]. "</td><td>" . $row["DTelephone"]. "</td><td>" . $row["DOfficeLoc"]. "</td><td>" . $row["ChairPersonSSN"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>

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

$sql = "SELECT * FROM professors";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'><tr><th>SSN</th><th>Name</th><th>Street</th><th>City</th><th>State</th><th>ZipCode</th><th>AreaCode</th><th>SevenDigit</th><th>Sex</th><th>Title</th><th>Salary</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["SSN"]. "</td><td>" . $row["Name"]. "</td><td>" . $row["Street"]. "</td><td>" . $row["City"]. "</td><td>" . $row["State"]. "</td><td>" . $row["ZipCode"]. "</td><td>" . $row["AreaCode"]. "</td><td>" . $row["SevenDigit"]. "</td><td>" . $row["Sex"]. "</td><td>" . $row["Title"]. "</td><td>" . $row["Salary"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>

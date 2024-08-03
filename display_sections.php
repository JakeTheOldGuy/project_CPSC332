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

$sql = "SELECT * FROM Section";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'><tr><th>SNum</th><th>CourseNum</th><th>Classroom</th><th>SeatNum</th><th>BeginTime</th><th>EndTime</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["SNum"]. "</td><td>" . $row["CourseNum"]. "</td><td>" . $row["Classroom"]. "</td><td>" . $row["SeatNum"]. "</td><td>" . $row["BeginTime"]. "</td><td>" . $row["EndTime"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>

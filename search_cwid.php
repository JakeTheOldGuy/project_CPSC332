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

if (isset($_GET['cwid'])) {
    $cwid = $_GET['cwid'];
    
    $sql = "SELECT * FROM student WHERE campusid = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $cwid);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "<table border='1'><tr><th>CampusID</th><th>FName</th><th>LName</th><th>SAddress</th><th>STelephone</th><th>DNoMajor</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["CampusID"]. "</td><td>" . $row["FName"]. "</td><td>" . $row["LName"]. "</td><td>" . $row["SAddress"]. "</td><td>" . $row["STelephone"]. "</td><td>" . $row["DNoMajor"]. "</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $stmt->close();
} else {
    echo "Please enter a CWID.";
}

$conn->close();
?>

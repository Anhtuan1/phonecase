<?php 
$servername = "172.16.9.108";
$username = "root";
$password = "miyatsu@1";
$dbname = "phonecase";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
mysqli_set_charset($conn,"utf8");
$getdata = json_encode($_POST['data']);

  //var_dump($_POST['data'] ;
$sql = 'INSERT INTO `dataphone` (`userid`, `data`) VALUES ('.$_POST['user'].', '.$getdata.')';

if ($conn->query($sql) === TRUE) {
  //echo $getdata ;
	
} else {
    //echo "Error: " . $sql . "<br>" . $conn->error;
}



//return $getdata;
$conn->close();

?>
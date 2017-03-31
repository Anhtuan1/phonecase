<?php 
$servername = "172.16.9.108";
$username = "root";
$password = "miyatsu@1";
$dbname = "phonecase";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
// mysqli_query("SET character_set_results=utf8", $conn);
 mysqli_set_charset( $conn, 'utf8');
 
 //$conn->set_charset("utf8");
 
 
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$getdata = json_encode($_POST['data'],JSON_UNESCAPED_UNICODE);
$sql = 'INSERT INTO `dataphone` (`userid`, `data`) VALUES ('.$_POST['user'].', '.$getdata.');';
$slct_query = mysqli_query($conn, $sql);
if ($slct_query === TRUE) {
  echo $getdata;
	
} else {
    //echo "Error: " . $sql . "<br>" . $conn->error;
}



//return $getdata;
$conn->close();

?>
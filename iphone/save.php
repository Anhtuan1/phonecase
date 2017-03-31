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

//$getdata = json_encode($_POST['data']);
$getdata = json_encode($_POST['data'],JSON_UNESCAPED_UNICODE);

  //var_dump($_POST['data'] ;
// $sql = 'INSERT INTO `dataphone` (`userid`, `data`) VALUES ('.$_POST['user'].', "日本語");';
// $getdata = htmlspecialchars($getdata, ENT_QUOTES, 'UTF-8');

$sql = 'INSERT INTO `dataphone` (`userid`, `data`) VALUES ('.$_POST['user'].', '.$getdata.');';
//$sql = 'INSERT INTO `dataphone` (`userid`, `data`) VALUES (130, '.$getdata.');';

// $sql = 'INSERT INTO `dataphone` (`userid`, `data`) VALUES ('.$_POST['user'].', "日本語");';

/*
$sql = sprintf("INSERT INTO `dataphone` (`userid`, `data`) VALUES (%s, '%s');",
            mysqli_real_escape_string($_POST['user']),
            mysqli_real_escape_string($getdata));
*/
//var_dump($sql);
$slct_query = mysqli_query($conn, $sql);

if ($slct_query === TRUE) {
  echo $getdata;
	
} else {
    //echo "Error: " . $sql . "<br>" . $conn->error;
}



//return $getdata;
$conn->close();

?>

<!DOCTYPE html>
<html>

<head>
  <title>View</title>
  <link rel="icon" href="images/logo.png" type="image/x-icon">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/double.css" rel="stylesheet">
  <link href="css/owl.carousel.css" rel="stylesheet">
  <link href="css/owl.theme.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="js/jquery.js" type="text/javascript"></script>
  <script src="js/owl.carousel.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script src="js/main.js" type="text/javascript"></script> 
  
<script>
$(document).ready(function () {
	$('.owl-carousel').owlCarousel({ // .owl-carousel is the element selector
	  margin: 0, // gives space between carousel items
	  stagePadding: 0, // shows a bit of the next item, which is still not visible
	  loop:true,
	  dots: true,
	  autoPlay:1000,
	  responsive:{ // responsive behaviour
		0:{
		  items:1
		},
		768:{ // for example at 768 screen width, owl carousel will only show two items
		  items:1
		},
		970:{
		  items:1
		}
	  }
	  
	});	
});
</script>

</head>
<style>

.reviewelement {
	position:absolute;
	margin: auto;
   
}

.reviewelement div{
	position:absolute;
	margin: auto;
    
    top: 0;
	
}
.list-case-show {
	width:100%;
	
	
	float:left;
	
}
.owl-carousel .owl-stage-outer {
	overflow:visible !important;
	top:0px;
}
.owl-carousel .owl-item {
	
}
</style>
<body>
<div class="col-xs-12">
<div style="width:100%;height:30px;">
	
	<button type='summit' id="clickview">View</button>
	
</div>
<div class="owl-carousel"> 

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

$sql = "SELECT id, userid, data FROM dataphone ORDER BY id DESC LIMIT 1";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
	// output data of each row
	while($row = $result->fetch_assoc()) {
		$endcode = $row["data"];
		$content = json_decode($endcode, true);
		$zoom_x = $content[0]['zoom']; 
?>

	<div class="item" style="transform:scale(<?php echo $zoom_x;?>,<?php echo $zoom_x;?>)">
	
<!-- <div  class="list-case-show"> -->
<div  class="list-case-show">
	<section id="content-themes">
		<div class="pecen80" id="case-important">
			<div id="content_html"> 
			
			<?php 
					
				
					if($content != ''){ 
						
						for($i =count($content)-1;$i>=0;$i--){
						//for($i =0;$i<1;$i++){
							echo "<div style='position: relative;top:10px;font-size: 13px;line-height:35px;'> User:". $content[$i]['userId'] ." - Device 1: ". $content[$i]['device1']." -  - Device 2: ". $content[$i]['device2']."  </div>";
							
							$width_device = ($content[$i]['width'])."px";
							$height_device = ($content[$i]['height'])."px";
							$width_device1 = ($content[$i]['width_device1'])."px";
							$height_device1 = ($content[$i]['height_device1'])."px";
							$width_device2 = ($content[$i]['width_device2'])."px";
							$height_device2 = ($content[$i]['height_device2'])."px";
							
							$width_white1 = ($content[$i]['width_white1']-15)."px";
							$height_white1 = ($content[$i]['height_white1'])."px";
							$width_white2 = ($content[$i]['width_white2'])."px";
							$height_white2 = ($content[$i]['height_white2'])."px";
							$width_white3 = ($content[$i]['width_white3'])."px";
							$height_white3 = ($content[$i]['height_white3'])."px";
							$width_white4 = ($content[$i]['width_white4']-15)."px";
							$height_white4 = ($content[$i]['height_white4'])."px";
							
							$background_device = $content[$i]['content']['background'];
							$imagedevice1 = $content[$i]['imagedevice1'];
							$imagedevice2 = $content[$i]['imagedevice2'];
							$max_width = $content[$i]['widthWindow']."px";
							echo "<div id='template-case".$i."'  style='width:".$width_device.";height:".$height_device.";margin: auto; position: relative;overflow:hidden;'>";								
								
								echo "<div id='template-case-content".$i."' class='reviewelement element'>";
									echo "<div style='width:".$width_device.";height:".$height_device.";background:".$background_device.";'> </div>";
									echo "<div id='phone_content' class='element' style='width:".$max_width.";left:-".($max_width/2-$width_device/2)."px;'>";		
				
										echo $content[$i]['content']['element'];
									echo "</div>";
									echo "<div style='width:50%;float:left;position: relative;'>";
									echo "<div style='left:0;background:#fff;width:".$width_white1.";height:".$height_white1."'></div>";
									echo "<div style='background:#fff;width:".$width_white2.";height:".$height_white2."'></div>";
									echo "<div style='top:".$height_white2.";width:".$width_device1.";height:".$height_device1.";border:1px solid #ccc;position:absolute;right:0;'><a href='#' class='viewdevice' ><img  src='".$imagedevice1."'style='width:100%;' /></a></div>";
									echo "</div>";
									echo "<div style='width:50%;float:right;position: relative;'>";
									echo "<div style='background:#fff;width:".$width_white3.";height:".$height_white3."'></div>";									
									echo "<div style='top:".$height_white3.";width:".$width_device2.";height:".$height_device2.";border:1px solid #ccc;position:absolute;left:0;'><a href='#' class='viewdevice' ><img  src='".$imagedevice2."'style='width:100%;' /></a></div>";
									echo "<div style='right:0;background:#fff;width:".$width_white4.";height:".$height_white4."'></div>";
									echo "</div>";
								echo "</div>";
							echo "</div>";
							
						}
					}
					
			?>
			
			</div>
		</div>
	</section>
</div>
	</div>

<?php     
	}
		} else {
		echo "0 results";
	}?>
	</div>
</div>
<script>
$(document).ready(function () {	
	/* $(".rotate6").each(function(){		
		var value = ['rotate3d(0,0,1,90deg)'];
		value = value.join(" ");		
		this.style.webkitTransform = value;
		this.style.mozTransform = value;
		this.style.transform = value;
	});
	$(".rotate3").each(function(){		
		var value = ['rotate3d(0,0,1,180deg)'];
		value = value.join(" ");		
		this.style.webkitTransform = value;
		this.style.mozTransform = value;
		this.style.transform = value;
	});
	$(".rotate8").each(function(){		
		var value = ['rotate3d(0,0,1,270deg)'];
		value = value.join(" ");		
		this.style.webkitTransform = value;
		this.style.mozTransform = value;
		this.style.transform = value;
	}); */
	
	$("#clickview").click(function() {	
		$(".viewdevice").toggle();
	});
	$("#clickview").click(function() {
		
		/* var content = JSON.parse(document.getElementById('contentvalue').value);		
		if(content != ''){
			for(var i =0;i<content.length;i++){
				
				$("#content_html").append("<div id='template-case"+i+"'></div>");
				var width_device = ((content[i].width)*content[i].zoom)+'px';
				var height_device = ((content[i].height)*content[i].zoom)+'px';
				var background_device = content[i].content.background;
				var imagedevice = content[i].imagedevice;
				
				$("#template-case"+i).append("<div id='template-case-content"+i+"' class='reviewelement element' style='width:"+ width_device+";height:"+height_device+";background:"+background_device+"'></div>");
				
				$("#template-case-content"+i).append("<div><img src='http://"+imagedevice+"'style='width:100%;'/></div>");
				$("#template-case-content"+i).append(content[i].content.element);
				
			
			}
		} */
		
	
	});
});
</script>
</body>

</html>



<?php 
$conn->close();

?>
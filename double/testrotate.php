<?php 
 $file = 'upload/U2aDAeN7G3k0zXS.jpeg';

 $image = imagerotate(imagecreatefromjpeg($file), array_values([0, 0, 0, 180, 0, 0, -90, 0, 90])[@exif_read_data($file)['Orientation'] ?: 0], 0);
	imagejpeg($image, $file);
var_dump($image );
?>
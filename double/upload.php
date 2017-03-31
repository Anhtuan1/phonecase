<?php 
	$base64_string = $_POST['data'];  
	$data = $base64_string;		
	//file_put_contents('upload/test.txt', $data);
	
	list($type, $data) = explode(';', $data);
	list(, $data)      = explode(',', $data);	
	
	//exif_read_data('data://image/jpeg;base64,' . substr($data 0, 30000));
	$data2 = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $data));   
	
	
	$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < 15; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }    
	$file = 'upload/' . $randomString . '.jpeg';
	$success = file_put_contents($file, $data2);	
	$ori = 1;
	
	/* 
	$exif = @exif_read_data($file,0 , true );	
	if($exif==1){
		$ori = 1;
	}else{
		if(!empty($exif['IFD0']['Orientation'])){
			$ori = $exif['IFD0']['Orientation'];
		}else{
			$ori = 1;
		}		
	} */
	if(@exif_imagetype($file)==2){
		$image = imagerotate(imagecreatefromjpeg($file), array_values([0, 0, 0, 180, 0, 0, -90, 0, 90])[@exif_read_data($file)['Orientation'] ?: 0], 0);
		imagejpeg($image, $file);
	}	
	$ori = @exif_imagetype($file);
	
	/* $img = new Imagick($file);
	$img->stripImage();
	$img->writeImage($file);
	$img->clear();
	$img->destroy(); */	
	echo $file.'&rotate'.$ori;

	
?>
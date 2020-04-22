<?php

$con=mysqli_connect("den1.mysql6.gear.host","chronicle1","chronicle@123","chronicle1");
if(!$con)
{
echo"Error in connection";
}
$s2="select * from diary";
$result2=mysqli_query($con,$s2);

echo "Sno"."\n"."Email"."\n"."Password"."\n"."Dateofenter"."\n"."Dayofenter"."\n"."Timeofenter"."\n"."Content"."\n";
if (mysqli_num_rows($result2) > 0){
	while($row = mysqli_fetch_assoc($result2)) {
		echo $row['sno']."\n".$row['email']."\n".$row['password']."\n".$row['dateofenter']."\n".$row['dayofenter']."\n".$row['timeofenter']."\n".$row['content']."\n";
    }
} 
else {
    echo "0 results";
}

mysqli_close($con);
?>
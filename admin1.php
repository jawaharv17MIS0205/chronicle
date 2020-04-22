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
		echo "Sno: ".$row['sno']."\n"."<br>";
		echo "Email: ".$row['email']."\n"."<br>";
		echo "Password: ".$row['password']."\n"."<br>";
		echo "Date of enter: ".$row['dateofenter']."\n"."<br>";
		echo "Day of enter: ".$row['dayofenter']."\n"."<br>";
		echo "Time of enter: ".$row['timeofenter']."\n"."<br>";
		echo "Content: ".$row['content']."\n"."<br><br>";
    }
} 
else {
    echo "0 results";
}

mysqli_close($con);
?>
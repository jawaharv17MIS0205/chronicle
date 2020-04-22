<?php

$con=mysqli_connect("den1.mysql6.gear.host","chronicle1","chronicle@123","chronicle1");
if(!$con)
{
echo"Error in connection";
}
$s2="select * from signup";
$result2=mysqli_query($con,$s2);
echo "Sno"."\n"."Dateofsignup"."\n"."Name"."\n"."Phone"."\n"."Email"."\n"."Password"."\n";

if (mysqli_num_rows($result2) > 0){
	while($row = mysqli_fetch_assoc($result2)) {
		echo $row['Sno']."\n".$row['Dateofsignup']."\n".$row['name']."\n".$row['phone']."\n".$row['email']."\n".$row['password']."\n";
}
mysqli_close($con);
?>
<?php
$a=$_POST["un"];
$b=$_POST["ps"];

$con=mysqli_connect("den1.mysql6.gear.host","chronicle1","chronicle@123","chronicle1");
if(!$con)
{
echo"Error in connection";
}
$s2="delete from signup where email='$a' and password='$b'";
$result2=mysqli_query($con,$s2);

$s3="delete from diary where email='$a' and password='$b'";
$result3=mysqli_query($con,$s3);

if($result2 && $result3)
{
	echo "Records deleted";
}
else
{
	echo "Error in deletion";
}

mysqli_close($con);
?>
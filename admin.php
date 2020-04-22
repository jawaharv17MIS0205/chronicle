<?php

$con=mysqli_connect("den1.mysql6.gear.host","chronicle1","chronicle@123","chronicle1");
if(!$con)
{
echo"Error in connection";
}
$s2="select * from signup";
$result2=mysqli_query($con,$s2);
while($row=mysqli_fetch_array($result2))
{
echo "Sno: ".$row['Sno']."\n"."<br>";
echo "Date of signup: ".$row['Dateofsignup']."\n"."<br>";
echo "Name: ".$row['name']."\n"."<br>";
echo "Phone: ".$row['phone']."\n"."<br>";
echo "Email: ".$row['email']."\n"."<br>";
echo "Password: ".$row['password']."\n"."<br>";
}
mysqli_close($con);
?>
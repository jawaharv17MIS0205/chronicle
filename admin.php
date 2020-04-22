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
echo "$row['Sno']"."\n";
echo "$row['Dateofsignup']"."\n";
echo "$row['name']"."\n";
echo "$row['phone']"."\n";
echo "$row['email']"."\n";
echo "$row['password']"."\n";
}
mysqli_close($con);
?>
<?php

$con=mysqli_connect("den1.mysql6.gear.host","chronicle1","chronicle@123","chronicle1");
if(!$con)
{
echo"Error in connection";
}
$s2="select * from diary";
$result2=mysqli_query($con,$s2);
while($row=mysqli_fetch_array($result2))
{
echo "$row['sno']"."\n";
echo "$row['email']"."\n";
echo "$row['password']"."\n";
echo "$row['dateofenter']"."\n";
echo "$row['dayofenter']"."\n";
echo "$row['timeofenter']"."\n";
echo "$row['content']"."\n";
}
mysqli_close($con);
?>
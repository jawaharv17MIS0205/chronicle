<?php
$a=$_POST["yemail"];
$b=$_POST["ypass"];
$con=mysqli_connect("den1.mysql6.gear.host","chronicle1","chronicle@123","chronicle1");
if(!$con)
{
echo"Error in connection";
}
$s="select email,password from signup where email='$a' and password='$b'";
$result2=mysqli_query($con,$s);
while($row=mysqli_fetch_array($result2))
{
$c=$row['email'];
$d=$row['password'];
}
if($a=="jaquarjack007@gmail.com" && $b=="jawahar123")
{
	header('Location: admin.html');
}
if($c==$a && $d==$b)
{
	header('Location: personal.html'); 
}
else
{
echo "<script>
alert('Username or password is wrong');
window.location.href='index.html';
</script>";
}
?>

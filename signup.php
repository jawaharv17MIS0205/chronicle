<?php
$a=$_POST["uname"];
$b=$_POST["phone"];
$c=$_POST["email"];
$d=$_POST["pass"];
	
$con=mysqli_connect("den1.mysql6.gear.host","chronicle1","chronicle@123","chronicle1");
if(!$con)
{
echo"Error in connection";
}
$s="insert into signup(name,phone,email,password) values('$a','$b','$c','$d')";
$result=mysqli_query($con,$s);
if($result)
{
echo "<script>
alert('You have registered successfully!');
window.location.href='index.html';
</script>";
}
else
{
echo"Error in entering".mysqli_error();
}
mysqli_close($con);
?>

	

<?php
$name=$_POST["name"];
$pass=$_POST["pass"];
$subject=$_POST["subject"];
$content=$_POST["content"];

$subject = htmlspecialchars($subject,ENT_QUOTES);
$content = htmlspecialchars($tontent,ENT_QUOTES);
$regist_day=date("Y-m-d(H:i)");

$con=mysqli_conntect("localhost","user",12345,"sample");

$sql="insert into freeboard(name,pass,subject,content,regist_day)";

$sql.="values('$name';'$pass','$subject','$content','$regist_day')";

mysqli_query($con,$sql);

mysqli_close($con);

echo"<script>
location.href='list.php';
</script>";









?>
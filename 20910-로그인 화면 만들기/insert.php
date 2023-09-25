<?php
    $id = $_POST["id"];
    $pass = $_POST["pass"];
    $name = $_POST["name"];
    $email = $_POST["email"];

$regist_day = date("Y-m-d(H:i)");
$con = mysqli_connect("localhost","root","","sample");
$sql = "insert into members (id,pass,name,email,regist_day,level,point)";
$sql .="values('$id','$pass','$name','$email','$regist_day',9,0)";

mysqli_query($con,$sql);
mysqli_close($con);

// echo "회원 가입 완료"
echo"<script>
    location.href = 'login_form.php';
    </script>";










?>
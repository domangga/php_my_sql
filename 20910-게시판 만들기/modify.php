<?php
$num=$_GET["num"];

$name = $_POST["name"];				// 이름
$pass = $_POST["pass"];				// 비밀번호
$subject = $_POST["subject"];		// 제목
$content = $_POST["content"];	

$subject = htmlspecialchars($subject, ENT_QUOTES);	// 제목 HTML 특수문자 변환
$content = htmlspecialchars($content, ENT_QUOTES);
$regist_day = date("Y-m-d (H:i)");  // UTC 기준 현재의 '년-월-일 (시:분)'

$con = mysqli_connect("localhost", "root", "", "sample");  
$sql = "update freeboard set name='$name',pass='$pass',subject='$subject',";	// 레코드 삽입 명령
$sql .= "content='$content',regist_day='$regist_day'where num=$num";
mysqli_query($con,$sql);

mysqli_close($con);

echo "
    <script>
    location.href='list.php';
    </script>
    ";



?>
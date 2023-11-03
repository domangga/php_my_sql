<?php
    session_start();
    if (isset($_SESSION["userid"])) 
        $userid = $_SESSION["userid"];
    else 
        $userid = "";

   	$con = mysqli_connect("localhost", "root", "", "sample");
    $sql = "select * from members where id='$userid'";
    $result = mysqli_query($con, $sql);
    $row    = mysqli_fetch_assoc($result);
    $id = $row["id"];
    $sql = "delete from members where id='$id'"; // 레코드 삭제 명령
    mysqli_query($con, $sql);     // SQL 명령 실행

    mysqli_close($con);  
             // DB 접속 해제
    unset($_SESSION["userid"]);
    // 목록보기 이동
    echo "<script>
	         location.href = 'index.php';      
	     </script>";
?>
<?php
     $mode = $_GET["mode"];				// 이름
     $num = $_GET["num"];					// 비밀번호
     $pass = $_POST["pass"];			// 제목

     $con = mysqli_connect("localhost", "root", "", "sample");  

     $sql = "select pass from freeboard where num=$num";

     $result = mysqli_query($con, $sql);	

     $row = mysqli_fetch_assoc($result);

    $db_password=$row["pass"];
    mysqli_close($con);

    if($pass ==$db_password){
        if($mode=="modify")
            $url="modify_form.php?num=$num";
        else
            $url="delete.php?num=$num";

        echo "<script>
            self.close();
            opener.location.href='$url';
            </script>";
    }
    else{
        echo "<script>
            location.href='password_form.php?num=$num&error=y';</script>";
    }



?>
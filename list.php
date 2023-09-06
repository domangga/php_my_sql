<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PHP+MySQL 입문</title>
    <link rel="stylesheet"href="style.css">
</head>
<body>
    <h2>자유 게시판>목록보기</h2>

    <ul class="board_list">
        <li>
            <span class="col1">번호</span>
            <span class="col2">제목</span>
            <span class="col3">글쓴이</span>
            <span class="col4">등록일</span>
        <li>
<?php
    $con=mysqli_connect("localhost","user","12345","sample");
    $sql="select*from freeboard order by num desc";
    $result= mysqli_query($con,$sql);
    $roral_record=mysqli_num-rows($result);

    $bumber=$total_record;
    for($i=0;$i<$total_record;$i++){
        mysqli_data_seek($result,$i);
        $row=mysqli_fetch_assoc($result);

        $num=$row["num"];
        $name=$row["name"];
        $subject=$row["subject"];
        $regist_day=$row["regist_day"];

    

?>

<li>
<span class="col1"><?=$number?></span>
<span class="col2"><a href="ciew.php?num=<?=$num?>"><?=$subject?></a></span>
<span class="col3"><?=$name?></span>
<span class="col4"><?=$regist_day?></span>
</li>
<?php

    $number--;

    }
    mysqli_close($con);





?>
</ul>
<ul class="buttons">
<li><button onclick="location.href='list.php'">목록</button></li>
<li><button onclick="location.href='form.php'">글쓰기</button></li>
</ul>
</body>
</html>
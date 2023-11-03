<?php
    $num = $_GET["num"];
    $page = $_GET["page"];

    $con = mysqli_connect("localhost","root","","sample");
    $sql = "delete from memberboard where num=$num";
    
    mysqli_query($con,$sql);
    mysqli_close($con);

    echo"<script>
        location.href = 'list.php?page=$page';
        </script>
        ";

?>
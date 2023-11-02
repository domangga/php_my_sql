<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>PHP+MySQL 입문</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script>
	function check_input()
	{
    	if (!document.login.id.value) {
        	alert("아이디를 입력하세요");    
        	document.login_form.id.focus();
        	return;
    	}

    	if (!document.login.pass.value) {
        	alert("비밀번호를 입력하세요");    
        	document.login.pass.focus();
        	return;
    	}
    	document.login.submit();
	}
</script>	
</head>
<body> 
	<h2 class="login_title">로그인</h2>
    <form name="login" method="post" action="login.php">		       	
        <ul class="login_form">
            <li>
				<span class="col1">아이디</span>
				<span class="col2"><input type="text" name="id" placeholder="아이디"></span>
			</li>	
			<li>			
				<span class="col1">비밀번호</span>
				<span class="col2"><input type="password" name="pass" placeholder="비밀번호"></span>
			</li>
			<li><button type="button" onclick="check_input()">로그인</button></li>
        </ul>	    	
	</form>
</body>
</html>


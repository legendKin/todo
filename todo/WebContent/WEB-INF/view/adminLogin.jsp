<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container pt-5 text-center">
	<h1 class="display-3">admin 로그인</h1>
	<br>
	<form method="post" action="${pageContext.request.contextPath}/adminLogin" name="AdminLogin">
		<table class="table">
			<tr>
				<td>아이디</td>
				<td><input type="text" id="adminId" name="adminId"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" id="adminPw" name="adminPw"></td>
			</tr>
		</table>
		<button type="button" class="btn btn-outline-primary" onclick="adminLogin()">로그인</button>
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/login" class="btn btn-outline-danger">되돌아가기</a>
</div>
	<script>
    // 유효성 검사
    function adminLogin(){		
		if($("#adminId").val() == ""){
			alert('ID를 입력하세요.');
			return;
		} else if($("#adminPw").val() == ""){
			alert('PW를 입력하세요.');
			return;
		} else {
			AdminLogin.submit();
		}
	};
</script>

</body>
</html>
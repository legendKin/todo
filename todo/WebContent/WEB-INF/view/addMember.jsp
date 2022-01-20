<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div class="container pt-5">
	<h1 class="text-center">회원가입</h1>
	<form class="form-inline" method ="post" action ="${pageContext.request.contextPath}/addMember" name="AddMember">
		<div style=" margin: 100px 410px">					
			<div>아이디</div>
			<div>
				<input type="text" id="memberId" name="memberId" style="text-align:left; width:220px; height:35px; font-size:15px; padding:0 10px" placeholder="id">
			</div>
			<br>	
			<div>비밀번호 : </div>
			<div>
				<input type="password" id="memberPw" name="memberPw" style="text-align:left; width:220px; height:35px; font-size:15px; padding:0 10px" placeholder="password">
			</div>
			<div style="text-align:center; width:220px; height:35px; font-size:15px; padding:0 10px">
				<br>
				<button type="button" class="btn btn-outline-info " onclick="addMember()">회원 가입완료</button>			
			</div>
		</div>
	</form>	
	</div>
	
	<script>
    // 유효성 검사
    function addMember(){		
		if($("#memberId").val() == ""){
			alert('ID를 입력하세요.');
			return;
		} else if($("#memberPw").val() == ""){
			alert('PW를 입력하세요.');
			return;
		} else {
			AddMember.submit();
		}
	};
</script>
</body>
</html>
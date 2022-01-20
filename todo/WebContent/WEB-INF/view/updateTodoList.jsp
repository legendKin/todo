<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container pt-3 text-center">
	<h1 class ="font-weight-bold">수정하기</h1>
	<form method="post" action="${pageContext.request.contextPath}/member/updateTodoList">
	<table class =" table table-bordered font-weight-bold">
		<tr>
			<td>todoNo</td>
			<td><input type ="text" name ="todoNo" value="${todoNo}" readonly></td>
		</tr>
		<tr>	
			<td>todoDate</td>
			<td><input type ="text" name ="todoDate" value="${todoDate}" readonly></td>
		</tr>
		<tr>
			<td>todoContent</td>
			<td><textarea rows="3" cols="50" name ="todoContent"></textarea></td>
		</tr>
	</table>
	<button type ="submit" class="btn btn-outline-success">수정하기</button>
	<button type ="reset" class="btn btn-outline-secondary">초기화</button>
	</form>
</body>
</html>
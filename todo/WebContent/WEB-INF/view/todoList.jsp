<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container pt-3">
	<h1 class="bg-white text-center">${todoDate} todo list</h1>
	<table class="table table-bordered table table-striped">
		<tr>
			<th>todoDate</th>
			<th>todoContent</th>
			<th>createDate</th>
			<th>updateDate</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="t" items="${todoList}">
			<tr>
				<th width="130">${todoDate}</th>
				<th>${t.todoContent}</th>
				<th>${t.createDate}</th>
				<th>${t.updateDate}</th>
				<th width="80"><a class="btn btn-outline-primary btn-sm" href ="${pageContext.request.contextPath}/member/updateTodoList?todoDate=${todoDate}&todoNo=${t.todoNo}">[수정]</a></th>
				<th width="80"><a class="btn btn-outline-danger btn-sm" href ="${pageContext.request.contextPath}/member/deleteTodoList?todoNo=${t.todoNo}">[삭제]</a></th>
			</tr>
		</c:forEach>
	</table>
	<a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/member/calendar">돌아가기</a>
	<h1 class="bg-white text-center">add todo</h1>
	<form method="post" action="${pageContext.request.contextPath}/member/addTodo">
	<!-- AddTodoController.dopost() -->
	<table class="table">
		<tr>
			<td>날짜</td>
			<td><input type="text" name="todoDate" class="form-control" value="${todoDate}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>todoContent :<td>
			<textarea row="10" clos="30" name="todoContent" class="form-control"></textarea>
		</tr>					
	</table>
	<button type="submit" class="btn btn-outline-success">추가</button>
	</form>
	
	</div>
</body>
</html>
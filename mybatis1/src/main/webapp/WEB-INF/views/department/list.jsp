<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>∙ 학과 목록 ∙</title>
<link rel="stylesheet" href="/common.css">
</head>
<body>
<section>
<div class="wrapper">
<div class="container">
	<h1><a href="/">∙ 학과목록 ∙</a></h1>
	<div class="right"><a href="create" class="btn">학과등록</a></div>
	<table class="list">
		<tr>
			<th>아이디</th>
			<th colspan="2">학과명</th>
			
		</tr>
		
		<c:forEach var="department" items="${ departments }">
		<tr>
			<td>${ department.id }</td>
			<td><a href="edit?id=${ department.id }">${ department.departmentName }</a></td>
			<td><button type="button" class="smallbtn" onclick="location='delete?id=${ department.id }' ">
			삭 제</button></td>
		</tr>
		</c:forEach>
		
	</table>
</div>
</div>
</section>
</body>
</html>
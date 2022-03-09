<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/common.js"></script>
<link rel="stylesheet" href="/common.css">
<title>∙ 학생목록 ∙</title>
</head>
<body>
<section>
<div class="wrapper">
<div class="container">
	<h1><a href="/">∙ 학생목록 ∙</a></h1>
	<div class="right"><a href="create" class="btn">학생등록</a></div>
	
	<table class="list">
		<tr>
			<th>id</th>
			<th>학번</th>
			<th>이름</th>
			<th>학과</th>
			<th>학년</th>
		</tr>
		<c:forEach var="student" items="${ students }"> 
		<!-- JSTL 반복문 -->
		<tr data-url="edit?id=${ student.id }">
			<td>${ student.id }</td>
			<td>${ student.studentNumber }</td>
			<td>${ student.name }</td>
			<td>${ student.departmentName }</td>
			<td>${ student.year }</td>
		</tr>	
		</c:forEach>
	</table>

</div>
</div>
</section>
</body>
</html>
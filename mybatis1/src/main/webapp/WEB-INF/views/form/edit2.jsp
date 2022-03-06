<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보</title>
<link rel="stylesheet" href="/common.css">
</head>
<body>
<section>
<div class="wrapper">
<div class="container">
	<form name="frm" method="post">
		<h1>학생 정보</h1>
		<table class="list">
			<tr>
				<th>아이디</th>
				<td><input type="text" value="${ student.id }" readonly disabled /></td>
			</tr>
			<tr>
				<th>학번</th>
				<td><input type="text" name="studentName" value="${ student.studentNumber }" /></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" value="${ student.name }" /></td>
			</tr>
			<tr>
				<th>학과</th>
				<td>
					<select name="departmentId">
						<c:forEach var="d" items="${ departments }">
							<option value="${ d.id }" ${ student.departmentId == d.id ? "selected" : "" }>
							${ d.departmentName }
							</option>	
						</c:forEach>
					</select>				
				</td>
			</tr>
			<tr>
				<th>학년</th>
				<td><input type="text" name="year" value="${ student.year }" /></td>		
			</tr>
		</table>
		<button type="submit" class="btn">저장</button>
		<button type="button" class="btn" onclick="location='/' ">메인으로</button>
		
		<c:if test="${ not empty message }">
			<div class="message">
				${ message }
			</div>
		</c:if>
	</form>
	
</div>
</div>
</section>
</body>
</html>
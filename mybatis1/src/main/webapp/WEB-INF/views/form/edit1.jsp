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
						<%
						String depart[] = {"국어국문학","영어영문학","불어불문학","소프트웨어공학과",
								"컴퓨터공학과","정보통신공학과","글로벌IT공학과","IT융합자율학부"};
						int index = 0;
						while(index < 8) {%>
						<option value="<%=index+1 %>" ${ student.departmentId == index+1 ? "selected" : "" }>
						<%=depart[index] %></option>
										
						<%index++;} %>
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

</body>
</html>
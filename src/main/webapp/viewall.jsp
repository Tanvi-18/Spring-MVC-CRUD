<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Of Students</title>
</head>
<body>
<h1>List Of All Students</h1>

	<table border="1px" style="border-collapse: collapse;">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>EMAIL</th>
		</tr>
		<c:forEach var="s" items="${students}">
			
			<tr>
				<td>${s.getId()}</td>
				<td>${s.getName()}</td>
				<td>${s.getEmail()}</td>
				<td><a href="delete?id=${s.getId()}">Delete</a></td>
				<td><a href="update?id=${s.getId()}">Update</a></td>
				
			</tr>
			
		</c:forEach>
	</table>

</body>
</html>
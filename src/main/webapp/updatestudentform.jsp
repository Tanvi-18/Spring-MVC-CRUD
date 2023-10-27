<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Create Student!</h1>
	<form:form action="updatestudent" modelAttribute="studentupdate">
	Id:<form:input path="id" /><br>s
    Name:<form:input path="name" />
		<br>
       Email:<form:input path="email" />
		<br>
		<form:button>Save</form:button>
	</form:form>

</body>
</html>
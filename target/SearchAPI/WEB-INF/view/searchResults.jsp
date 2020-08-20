<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
</head>
<body>
	<h2>Employee Management Screen : Search Results</h2>
	<h3>Employees</h3>
	<c:if test="${!empty employeeList}">
		<table class="data">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Telephone</th>
				<th>Age</th>
				<th>StartDate</th>
				<th>EndDate</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${employeeList}" var="emp">
				<tr>
					<td>${emp.lastname},${emp.firstname}</td>
					<td>${emp.email}</td>
					<td>${emp.telephone}</td>
					<td>${emp.age}</td>
					<td>${emp.startdate}</td>
					<td>${emp.enddate}</td>
					<td><a href="delete/${emp.id}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
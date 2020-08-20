<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<style>
#demo {
	background: #CE5937;
	background: -moz-linear-gradient(left, #CE5937 0%, #1C6EA4 50%, #C59237 100%);
	background: -webkit-linear-gradient(left, #CE5937 0%, #1C6EA4 50%, #C59237 100%);
	background: linear-gradient(to right, #CE5937 0%, #1C6EA4 50%, #C59237 100%);
}

#data {
	font-weight: bold;
	color: #FFFFFF;
	font-family: Arial, Helvetica, sans-serif;
}

#button {
	background-color: transparent;
	border: none;
	color: black;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	font-weight: bold;
	margin: 4px 2px;
	cursor: pointer;
	border: 2px solid #4CAF50;
}
</style>
<head>
<title>Employee Search Page</title>
</head>
<body>

	<div id="demo">
		<h2 align="center">Employee Search Page</h2>
	</div>
	<div id="demo">
		<form:form method="post" action="/SearchAPI/search"
			modelAttribute="employee">

			<table id="data" align="center">
				<tr></tr>
				<tr>
					<td><form:label path="firstname">
							<spring:message code="label.firstname" />
						</form:label></td>
					<td><form:input path="firstname" /></td>
				</tr>
				<tr>
					<td><form:label path="lastname">
							<spring:message code="label.lastname" />
						</form:label></td>
					<td><form:input path="lastname" /></td>
				</tr>
				<tr>
					<td><form:label path="startdate">
							<spring:message code="label.startdate" />
						</form:label></td>
					<td><form:input path="startdate" type="date" /></td>
				</tr>
				<tr>
					<td><form:label path="enddate">
							<spring:message code="label.enddate" />
						</form:label></td>
					<td><form:input path="enddate" type="date" /></td>
				</tr>
				<tr></tr>
				<tr>
					<td align="center"><input id="button" type="submit"
						name="buttonClicked" value="<spring:message code="label.search"/>" /></td>
					<td align="center"><input id="button" type="submit"
						name="buttonClicked" value="<spring:message code="label.add"/>" /></td>
				</tr>

			</table>
		</form:form>

		<c:if test="${!empty employeeList}">
			<h2 align="center">Search Results</h2>
			<table align="center">
				<tr id="data">
					<th>Name</th>
					<th>&nbsp;</th>
					<th>Email</th>
					<th>&nbsp;</th>
					<th>Telephone</th>
					<th>&nbsp;</th>
					<th>Age</th>
					<th>&nbsp;</th>
					<th>StartDate</th>
					<th>&nbsp;</th>
					<th>EndDate</th>
					<th>&nbsp;</th>
				</tr>
				<c:forEach items="${employeeList}" var="emp">
					<tr>
						<td>${emp.lastname},${emp.firstname}</td>
						<td>&nbsp;</td>
						<td>${emp.email}</td>
						<td>&nbsp;</td>
						<td>${emp.telephone}</td>
						<td>&nbsp;</td>
						<td>${emp.age}</td>
						<td>&nbsp;</td>
						<td>${emp.startdate}</td>
						<td>&nbsp;</td>
						<td>${emp.enddate}</td>
						<td>&nbsp;</td>
						<td><a href="delete/${emp.id}"><B><I>Delete</I></B></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>
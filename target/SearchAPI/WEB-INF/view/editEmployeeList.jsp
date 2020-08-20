<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Employee Add Page</title>
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
</head>
<body>

	<div id="demo">
		<h2 align="center">Employee Add Page</h2>
	</div>
	<div id="demo">
		<form:form method="post" action="/SearchAPI/add"
			modelAttribute="employee">

			<table id="data" align="center">
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
					<td><form:label path="email">
							<spring:message code="label.email" />
						</form:label></td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td><form:label path="telephone">
							<spring:message code="label.telephone" />
						</form:label></td>
					<td><form:input path="telephone" /></td>
				</tr>
				<tr>
					<td><form:label path="age">
							<spring:message code="label.age" />
						</form:label></td>
					<td><form:input path="age" /></td>
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
				<tr>
					<td align="center"><input id="button" name="buttonClicked"
						type="submit" value="<spring:message code="label.add"/>" /></td>
					<td align="center"><input id="button" name="buttonClicked"
						type="submit"
						value="<spring:message code="label.backsearch"/>" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>
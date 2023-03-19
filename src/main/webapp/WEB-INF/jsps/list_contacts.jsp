<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contacts</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

th {
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>
	<h2>LIST OF CONTACTS</h2>
	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email Id</th>
			<th>Mobile Number</th>
			<th>Source</th>
			<th>Billing</th>
		</tr>
		<c:forEach items="${contacts }" var="contact">
			<tr>
				<td><a href="contactInfo?id=${contact.id }">${contact.firstName }</a></td>
				<td>${contact.lastName }</td>
				<td>${contact.email }</td>
				<td>${contact.mobile }</td>
				<td>${contact.source }</td>
				<td><a href="generateBill?id=${contact.id }">billing</a></td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>

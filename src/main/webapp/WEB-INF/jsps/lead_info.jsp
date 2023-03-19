<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Info</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
  }
  h2 {
    margin: 20px 0;
    text-align: center;
  }
  table {
    border-collapse: collapse;
    margin: 20px auto;
    width: 80%;
    max-width: 800px;
  }
  table, th, td {
    border: 1px solid #ddd;
  }
  th, td {
    padding: 10px;
    text-align: left;
  }
  th {
    background-color: #f2f2f2;
  }
  form {
    display: flex;
    justify-content: center;
    margin-top: 20px;
  }
  input[type="submit"] {
    background-color: #333;
    border: none;
    color: #fff;
    cursor: pointer;
    padding: 10px 20px;
    transition: all 0.3s ease;
  }
  input[type="submit"]:hover {
    background-color: #fff;
    color: #333;
  }
</style>
</head>
<body>
	<h2>Lead Details</h2>
	<table>
		<tr>
			<th>First Name</th>
			<td>${lead.firstName }</td>
		</tr>
		<tr>
			<th>Last Name</th>
			<td>${lead.lastName }</td>
		</tr>
		<tr>
			<th>Email</th>
			<td>${lead.email }</td>
		</tr>
		<tr>
			<th>Mobile</th>
			<td>${lead.mobile }</td>
		</tr>
		<tr>
			<th>Source</th>
			<td>${lead.source }</td>
		</tr>
	</table>
	<form action="sendEmail" method="post">
		<input type="hidden" name="email" value="${lead.email }" />
		<input type="submit" value="Send Email" />
	</form>
	<form action="convertLead" method="post">
		<input type="hidden" name="id" value="${lead.id }" />
		<input type="submit" value="Convert" />
	</form>
</body>
</html>

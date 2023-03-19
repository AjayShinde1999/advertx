<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Bill</title>

<style>
form {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	margin-top: 50px;
}

h2 {
	text-align: center;
}

input[type="text"] {
	padding: 10px;
	margin: 5px;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
	font-size: 16px;
	width: 100%;
	max-width: 400px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	margin-top: 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	width: 100%;
	max-width: 400px;
}

table {
	border-collapse: collapse;
	margin-top: 20px;
	width: 100%;
	max-width: 400px;
}

td {
	padding: 10px;
	text-align: left;
}

.success {
	margin-top: 20px;
	color: green;
	font-size: 16px;
}
</style>

</head>
<body>
	<h2>GENERATE BILL</h2>
	<form action="saveBill" method="post">
		<table>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName"
					value="${contact.firstName }" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastName"
					value="${contact.lastName }" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="${contact.email }" /></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" value="${contact.mobile }" /></td>
			</tr>

			<tr>
				<td>Amount</td>
				<td><input type="text" name="amount" /></td>
			</tr>

			<tr>
				<td>Product</td>
				<td><input type="text" name="product" /></td>
			</tr>
			<tr>
				<td><input type="hidden" name="id" value="${contact.id }" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Generate Bill" /></td>
			</tr>

		</table>
		<div class="success">${succefully }</div>
	</form>

</body>
</html>

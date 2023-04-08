<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "menu.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Lead</title>

<style>
    
    form {
        max-width: 500px;
        margin: auto;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f2f2f2;
        padding: 20px;
        border-radius: 10px;
    }
    
    h2 {
		text-align: center;
		color: #0066cc;
		margin-top: 50px;
	}

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 10px;
    }

    td {
        padding: 8px;
        border: 1px solid #ddd;
        text-align: left;
        font-size: 16px;
    }

    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 5px;
    }

    input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
</style>

</head>
<body>
<h2>Create New Lead</h2>
<form action="saveLead" method="post">
<table>
<tr>
<td>First Name</td>
<td><input type="text" name="firstName"/></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName"/></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email"/></td>
</tr>
<tr>
<td>Mobile</td>
<td><input type="text" name="mobile"/></td>
</tr>
<tr>
<td>Source</td>
<td><select name = "source">
<option value = "radio">radio</option>
<option value = "news paper">news paper</option>
<option value = "trade show">trade show</option>
<option value = "website">website</option>
</select></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Save Lead"/></td>
</tr>
</table>

</form>
</body>
</html>

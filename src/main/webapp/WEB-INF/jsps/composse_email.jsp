<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "menu.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose</title>
<style>
    table {
        border-collapse: collapse;
        width: 50%;
        margin: auto;
    }
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    input[type=text], textarea {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type=submit]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <form action="triggeredEmail" method="post">
        <table>
            <tr>
                <td>To</td>
                <td><input type="text" name="email" value="${email }" /></td>
            </tr>
            <tr>
                <td>Subject</td>
                <td><input type="text" name="subject" /></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><textarea name="content" rows="3" cols="30"></textarea></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="send" /></td>
            </tr>
        </table>
    </form>
    ${sent }
</body>
</html>

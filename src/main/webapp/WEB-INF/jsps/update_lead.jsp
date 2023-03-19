<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Lead</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            border-collapse: collapse;
            width: 50%;
            margin: auto;
            margin-top: 50px;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #2196F3;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        input[type=text] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
        }
        input[type=submit]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="updateLead" method="post">
        <table>
            <tr>
                <td><input type="hidden" name="id" value="${lead.id }"/></td>
            </tr>
            <tr>
                <td>First Name</td>
                <td><input type="text" name="firstName" value="${lead.firstName }"/></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lastName" value="${lead.lastName }"/></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="${lead.email }"/></td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td><input type="text" name="mobile" value="${lead.mobile }"/></td>
            </tr>
            <tr>
                <td>Source</td>
                <td><input type="text" name="source" value="${lead.source }"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update"/></td>
            </tr>
        </table>
    </form>
</body>
</html>

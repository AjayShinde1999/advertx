<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Contact Info</title>
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
    </style>
</head>
<body>
    <h2>Contact Details</h2>
    <table>
        <tr>
            <td>First Name</td>
            <td>${contact.firstName}</td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>${contact.lastName }</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${contact.email }</td>
        </tr>
        <tr>
            <td>Mobile</td>
            <td>${contact.mobile }</td>
        </tr>
        <tr>
            <td>Source</td>
            <td>${contact.source }</td>
        </tr>
    </table>
</body>
</html>

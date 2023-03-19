<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
  }
  nav {
    background-color: #333;
    color: #fff;
    display: flex;
    justify-content: space-between;
    padding: 10px;
  }
  nav a {
    color: #fff;
    text-decoration: none;
    padding: 5px 10px;
    transition: all 0.3s ease;
  }
  nav a:hover {
    background-color: #fff;
    color: #333;
  }
</style>
<nav>
  <a href="listAll">Lead List</a>
  <a href="listAllContacts">Contact List</a>
  <a href="viewCreateLeadPage">Create New Lead</a>
</nav>

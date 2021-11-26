<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sample.app.usermanagement.model.User"%>
<html>
<head>
<title>Contact Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #343a40; background-size: 50px 50px; background-repeat: no-repeat; background-position: 20px;">
			<div style="margin-left:auto;">
				<a href="" class="navbar-brand">Contact Management</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Contacts</a></li>
				<li><a href=logout.jsp class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">


		<div class="container">
			<h3 class="text-center">List of Contacts</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Contact</a>
			</div>
			<br>
		
	
			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Company</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%ArrayList<User> users = (ArrayList<User>) request.getAttribute("listUser");
						for(User u:users) {
					%>
					<tr>
						<td><%=u.getId() %></td>
						<td><%=u.getName() %></td>
						<td><%=u.getEmail() %></td>
						<td><%=u.getCompany() %></td>
						<td><a href="edit?id=<%=u.getId() %>" class="btn btn-primary">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<%=u.getId() %>" class="btn btn-danger">Delete</a></td>					
					</tr>
					<%}%> 
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
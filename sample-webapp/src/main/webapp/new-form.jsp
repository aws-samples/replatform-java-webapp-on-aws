<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<%User user = (User) request.getAttribute("user"); %>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
					<form action="<%=request.getContextPath()%>/insert" method="post">
				<caption>
					<h2>
            			Add New Contact
					</h2>
				</caption>

				<fieldset class="form-group">
					<label>Contact Name</label> <input type="text"
						value="" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Contact Email</label> <input type="text"
						value="" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Company</label> <input type="text"
						value="" class="form-control"
						name="company">
				</fieldset>

				<button type="submit" class="btn btn-primary">Save</button>
				<a href="<%=request.getContextPath()%>/list"
					class="btn btn-secondary">Cancel</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
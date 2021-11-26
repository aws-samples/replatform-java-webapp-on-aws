<%@page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- get authentication endpoints for the configured OPs --%>
<c:set var="authEndpoints" value="${requestScope['org.bsworks.oidc.authEndpoints']}"/>

<%-- if single OP is configured and form-based authentication is disabled, just redirect to the authentication endpoint --%>
<c:if test="${requestScope['org.bsworks.oidc.noForm'] and fn:length(authEndpoints) eq 1}">
  <c:redirect url="${authEndpoints[0].url}"/>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
					<form action="j_security_check" method="post">
				<caption>
					<h2>
            			Login to Contact Management
					</h2>
				</caption>
				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						class="form-control"
						name="j_username">
				</fieldset>

				<fieldset class="form-group">
					<label>Password</label> <input type="password"
						class="form-control"
						name="j_password">
				</fieldset>

				<button type="submit" class="btn btn-primary">Go</button>
				<c:forEach items="${authEndpoints}" var="ep">
            		<a href="${ep.url}" class="btn btn-success"><c:out value="${ep.name}"/></a>
          		</c:forEach>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
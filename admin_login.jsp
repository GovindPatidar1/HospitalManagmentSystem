<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin login page</title>
<%@include file="component/include.jsp" %>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card point-card">
					<div class="card-body">
						<p class="fs-4 text-center">Admin Login</p>
								
					 	
						<c:if test="${not empty succMsg }">
						<P class="text-center text-success fs-5">${succMsg}</P>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
					    <c:if test="${not empty errorMsg }">
						<P class="text-center text-danger fs-5">${errorMsg}</P>
						<c:remove var="errorMsg" scope="session"/>
						</c:if>
						
						
						<form action="adminLogin" method="post">
							<div class="md-3">
								<label class="form-label">Email address</label> <input
									type="email" name="email" required class="form-control">
							</div>

							<div class="md-3">
								<label class="form-label">Password</label> <input
									type="password" name="password" required class="form-control">
							</div>
							
							<br>

							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>
</html>
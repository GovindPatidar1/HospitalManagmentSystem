<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/include.jsp"%>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card point-card">
				<p class="fs-3 text-center">Change Password</p>
					<div class="card-body">	
					 	
						<c:if test="${not empty succMsg }">
						<P class="text-center text-success fs-5">${succMsg}</P>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
					    <c:if test="${not empty errorMsg }">
						<P class="text-center text-danger fs-5">${errorMsg}</P>
						<c:remove var="errorMsg" scope="session"/>
						</c:if>
						
						
						<form action="userChangePassword" method="post">
							<div class="md-3">
								<label class="form-label">Enter New Password</label> <input
									type="text" name="newPassword" required class="form-control">
							</div>

							<div class="md-3">
								<label class="form-label">Enter Old Password</label> <input
									type="text" name="oldPassword" required class="form-control">
							</div>
							
							<br>
							<input type="hidden" value="${userObj.id }" name="uid">
							<button class="btn bg-success col-md-12 text-white">Change Password</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
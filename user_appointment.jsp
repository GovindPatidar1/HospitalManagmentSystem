<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor" %>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Appointment</title>
<%@include file="component/include.jsp"%>

<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/doctor2.jpg");
	height: 20vh;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img src="img/doctor14.webp" alt="">
			</div>
			<div class="col-md-6">
				<div class="card point-card">
					<div class="card-body">
						<p class="text-center fs-3">Appointment</p>
						<c:if test="${not empty succMsg }">
							<P class="text-center text-success fs-5">${succMsg}</P>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<P class="text-center text-danger fs-5">${errorMsg}</P>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="addappointment" method="post" class="row g-3">
						
							<input type="hidden" name="userid" value="${userObj.id}">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									type="text" required class="form-control" name="fullname">
							</div>

							<div class="col-md-6">
								<label>Gender</label> <select name="gender" class="form-control"
									required>
									<option value="male">Male</option>
									<option value="Female">Female</option>
								</select>
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Age</label> <input
									type="number" required class="form-control" name="age">
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Appointment
									Date</label> <input type="date" required class="form-control"
									name="appoint_date">
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									type="email" required class="form-control" name="email">
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone No</label> <input
									maxlength="10" type="number" required class="form-control"
									name="phno">
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Diseases</label> <input
									type="text" required class="form-control" name="diseases">
							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Doctor</label> <select
									name="doct" class="form-control" required>
									<option value="">--select--</option>
									
									<% DoctorDao dao =new DoctorDao(DBconnect.getConn());
										List<Doctor> list =dao.getAllDoctor();
										for(Doctor d: list){
										%>
											<option value="<%= d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist() %>)</option>
										<%}
										
										%>
								</select>
							</div>

							<div class="col-md-12">
								<label>Full Address</label>
								<textarea name="address" class="form-control" required rows="3"
									cols=""></textarea>
							</div>

							<c:if test="${empty userObj }">
								<a href="user_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>

							<c:if test="${not empty userObj }">
								<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="component/footer.jsp" %>

</body>
</html>
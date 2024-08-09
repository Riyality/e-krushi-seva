<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" dir="ltr" data-nav-layout="vertical"
	data-vertical-style="overlay" data-theme-mode="light"
	data-header-styles="light" data-menu-styles="light"
	data-toggled="close">

<head>

<!-- Meta Data -->
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="Description"
	content="Laravel Bootstrap Responsive Admin Web Dashboard Template">
<meta name="Author" content="Spruko Technologies Private Limited">
<meta name="keywords"
	content="admin template,admin dashboard,template dashboard,admin panel,bootstrap admin,admin,dashboard,html,admin dashboard template,html template,bootstrap template,admin panel template,bootstrap admin template,bootstrap 5 admin template,html and css">

<!-- TITLE -->
<title>Krushi Seva Center Management</title>

<!-- Authentication JS -->
<link rel="modulepreload"
	href="https://laravelui.spruko.com/synto/build/assets/authentication-main-DGw6GqpV.js" />
<script type="module"
	src="https://laravelui.spruko.com/synto/build/assets/authentication-main-DGw6GqpV.js"></script>
<!-- Favicon -->
<link rel="icon"
	href="https://laravelui.spruko.com/synto/build/assets/img/brand-logos/favicon.ico"
	type="image/x-icon">

<link href="<c:url value="/resources/assets/css/custom.css"/>"
	rel="stylesheet">

<!-- BOOTSTRAP CSS -->
<link id="style"
	href="https://laravelui.spruko.com/synto/build/assets/libs/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- ICONS CSS -->
<link
	href="https://laravelui.spruko.com/synto/build/assets/icon-fonts/icons.css"
	rel="stylesheet">

<!-- APP CSS & APP SCSS -->
<link rel="preload" as="style"
	href="https://laravelui.spruko.com/synto/build/assets/app-C3rLMrk5.css" />
<link rel="stylesheet"
	href="https://laravelui.spruko.com/synto/build/assets/app-C3rLMrk5.css" />


<style type="text/css">
body {
	background-image: url("/resources/assets/img/bg/bg-login-krushi.jpg")!important;
	
	background-size: cover;
}
</style>

</head>

<body class="login-page">

	<!-- START SWITCHER -->



	<div class="container-lg">
		<div
			class="row justify-content-center align-items-center authentication authentication-basic h-100">
			<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-6 col-sm-8 col-12">
				<div class="my-4 d-flex justify-content-center">
					<a href="#">
						<h1 style="font-family: cursive;">Krushi Seva Center</h1> <%-- <img src='<c:url value="/resources/assets/img/logos/logo.png"/>' width="200px" alt="logo"> --%>
					</a>
				</div>
				<div class="card custom-card">
					<div class="card-body">
						<form action="<c:url value='/login' />" method="post">
							<div class="authentication-cover">
								<div class="aunthentication-cover-content">
									<p class="h4 fw-bold mb-2 text-center">Sign in</p>
									<div class="row gy-3">
										<div class="col-xl-12">
											<label for="signup-Email"
												class="form-label text-default op=8">Email address</label> <input
												type="text" class="form-control form-control-lg"
												id="signup-Email"  name="email" placeholder="Email">
										</div>
										<div class="col-xl-12">
											<label class="form-label text-default d-block">password
												<a href="<c:url value='/reset-password' />"
												class="float-end text-success">Forget password?</a>
											</label>
											<div class="input-group">
												<input type="password" class="form-control form-control-lg"
													id="signup-password"  name="password" placeholder="password">
											</div>
										</div>
										<div class="col-xl-12 d-grid mt-2">
											<!-- <a href="/home" class="btn btn-lg btn-primary">Sign In</a> -->
											<input type="submit" value="Sign In"
												class="btn btn-lg btn-primary" />
										</div>
										<c:if test="${not empty errorMessage}">
											<div class="alert alert-danger mt-3">${errorMessage}</div>
										</c:if>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Bootstrap JS -->
	<script
		src="<c:url value="/resources/bootstrap/js/bootstrap.bundle.min.js" />"></script>



</body>

</html>






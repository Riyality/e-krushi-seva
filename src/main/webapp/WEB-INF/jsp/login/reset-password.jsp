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




</head>

<body>

	<!-- START SWITCHER -->



	<div class="container-lg">
		<div
			class="row justify-content-center align-items-center authentication authentication-basic h-100">
			<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-8 col-sm-8 col-12">

				<div class="row justify-content-center align-items-center">
					<div class="col-md-10">
						<div class="card">
							<div class="card-body">
								<h4 class="text-center">Reset Password</h4>
								<form action="<c:url value='/process-reset-password' />" method="post">
									<div class="mb-3">
										<label for="email" class="form-label">Email</label> <input
											type="email" class="form-control" id="email" name="email"
											placeholder="Email">
									</div>
									<div class="mb-3">
										<label for="reset-newpassword" class="form-label">New
											Password</label> <input type="password" class="form-control"
											id="reset-newpassword" name="newPassword"
											placeholder="New password">
									</div>
									<div class="mb-3">
										<label for="reset-confirmpassword" class="form-label">Confirm
											Password</label> <input type="password" class="form-control"
											id="reset-confirmpassword" name="confirmPassword"
											placeholder="Confirm password">
									</div>
									<div class="d-grid">
										<button type="submit" class="btn btn-primary">Reset
											Password</button>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="<c:url value='/resources/bootstrap/js/bootstrap.bundle.min.js' />"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" dir="ltr" data-nav-layout="vertical"
	data-theme-mode="light" data-header-styles="light"
	data-menu-styles="dark" data-toggled="close">

<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<style>
        /* Hide submenu initially */
/* Hide submenu initially */
.slide-menu {
    display: none;
    list-style: none;
    padding-left: 20px;
}
/* Main sidebar container */
.app-sidebar {
    display: flex;
    flex-direction: column;
    height: 100vh;
}

/* Sidebar scrollable content */
#sidebar-scroll {
    display: flex;
    flex-direction: column;
    flex: 1;
    overflow-y: auto;
}

/* Sidebar content wrapper */
.sidebar-content {
    flex: 1;
}

/* Sidebar footer */
.sidebar-footer {
    padding: 10px;
    background-color: #f8f9fa;
    text-align: center;
    border-top: 1px solid #e7e7e7;
    position: sticky;
    bottom: 0;
    flex-shrink: 0;
}


/* Show submenu when the parent has active class */
.slide.has-sub.active .slide-menu {
    display: block;
}



    </style>
<script>
document.addEventListener('DOMContentLoaded', function () {
    const hasSubItems = document.querySelectorAll('.slide.has-sub > .side-menu__item');

    // Check local storage to set the initial state of the dropdown
    const isActive = localStorage.getItem('dropdownActive') === 'true';
    if (isActive) {
        document.querySelector('.slide.has-sub').classList.add('active');
    }

    hasSubItems.forEach(item => {
        item.addEventListener('click', function (event) {
            // Prevent default anchor behavior for parent item
            event.preventDefault();

            // Toggle active class on the parent list item
            const parentItem = this.parentElement;
            parentItem.classList.toggle('active');

            // If dropdown is opened, set it to remain open
            if (parentItem.classList.contains('active')) {
                localStorage.setItem('dropdownActive', 'true');
            } else {
                // Comment out or remove this line to ensure it never closes once opened
                // localStorage.removeItem('dropdownActive');
            }
        });
    });
});
</script>

<script>
function navigateToDashboard() {
    window.location.href = '/home';
}
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('.sidemenu-toggle').on('click', function() {
            // Call your custom function here
            toggleSidebar();
        });
    });

    function toggleSidebar() {
        // Add your sidebar toggle logic here
        console.log('Sidebar toggle function called');
        // For example, if using Bootstrap's method to show/hide sidebar:
        // $('#sidebar').toggleClass('show');
    }
</script>

<!-- Meta Data -->
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="Description"
	content="Laravel Bootstrap Responsive Admin Web Dashboard Template">
<meta name="Author" content="Spruko Technologies Private Limited">
<meta name="keywords"
	content="laravel admin panel, admin template, admin dashboard, admin, admin panel, laravel template, laravel admin, dashboard, admin dashboard template, admin panel template, template dashboard, bootstrap dashboard, bootstrap admin template, laravel dashboard, dashboard bootstrap 5">

<!-- TITLE -->
<title>Krushi Shop Management</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

<!-- Favicon -->
<link rel="icon"
	href="<c:url value="/resources/assets/img/brand-logos/favicon.ico"/>"
	type="image/x-icon">

<!-- ICONS CSS -->
<link href="<c:url value="/resources/assets/icon-fonts/icons.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/assets/css/custom.css"/>"
	rel="stylesheet">

<!-- Choices JS -->
<script
	src="<c:url value="/resources/assets/libs/choices.js/public/assets/scripts/choices.min.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
   
<!-- Bootstrap Css -->
<link id="style"
	href="<c:url value="/resources/assets/libs/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- Node Waves Css -->
<link
	href="<c:url value="/resources/assets/libs/node-waves/waves.min.css"/>"
	rel="stylesheet">

<!-- Simplebar Css -->
<link
	href="<c:url value="/resources/assets/libs/simplebar/simplebar.min.css"/>"
	rel="stylesheet">

<!-- Color Picker Css -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/flatpickr/flatpickr.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/%40simonwep/pickr/themes/nano.min.css"/>">

<!-- Choices Css -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/choices.js/public/assets/styles/choices.min.css"/>">
<!-- APP CSS & APP SCSS -->
<link rel="preload" as="style"
	href="<c:url value="/resources/assets/app-C3rLMrk5.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/assets/app-C3rLMrk5.css"/>" />
<!-- Main Theme Js -->
<script src="<c:url value="/resources/assets/main.js"/>"></script>


<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/jsvectormap/css/jsvectormap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/swiper/swiper-bundle.min.css"/>">


</head>

<body class="">

	<!-- Switcher -->


	<!-- Loader -->
	<div id="loader">
		<img src="<c:url value="/resources/assets/img/media/loader.svg"/>"
			alt="">
	</div>
	<!-- Loader -->

	<div class="page">

		<!-- Main-Header -->
		<header class="app-header">

			<!-- Start::main-header-container -->
			<div class="main-header-container container-fluid">

				<!-- Start::header-content-left -->
				<div class="header-content-left">

					<!-- Start::header-element -->
					<div class="header-element">
						<div class="horizontal-logo">
							<a href="index.html" class="header-logo"> <img
								src="<c:url value="/resources/assets/img/brand-logos/desktop-logo.png"/>"
								alt="logo" class="desktop-logo"> <img
								src="<c:url value="/resources/assets/img/brand-logos/toggle-logo.png"/>"
								alt="logo" class="toggle-logo"> <img
								src="<c:url value="/resources/assets/img/brand-logos/desktop-dark.png"/>"
								alt="logo" class="desktop-dark"> <img
								src="<c:url value="/resources/assets/img/brand-logos/toggle-dark.png"/>"
								alt="logo" class="toggle-dark"> <img
								src="<c:url value="/resources/assets/img/brand-logos/desktop-white.png"/>"
								alt="logo" class="desktop-white"> <img
								src="<c:url value="/resources/assets/img/brand-logos/toggle-white.png"/>"
								alt="logo" class="toggle-white">
							</a>
						</div>
					</div>
					<!-- End::header-element -->
					<!-- Start::header-element -->
					<div class="header-element">
						<!-- Start::header-link -->
											<div class="sidebar-toggle-container">
					        <a class="sidebar-toggle sidemenu-toggle header-link" data-bs-toggle="sidebar" href="javascript:void(0);">
					            <span class="sr-only">Toggle Navigation</span>
					            <i class="ri-arrow-right-circle-line header-icon"></i>
					        </a>
					    </div>
						<!-- <a aria-label="Hide Sidebar" class="sidemenu-toggle header-link animated-arrow hor-toggle horizontal-navtoggle" data-bs-toggle="sidebar" href="javascript:void(0);"><span></span></a> -->
						<!-- End::header-link -->
					</div>
					<!-- End::header-element -->


				</div>
				<!-- End::header-content-left -->

				<!-- Start::header-content-right -->
				<div class="header-content-right">

					<!-- Start::header-element -->


					<!-- Start::header-element -->


					<!-- Start::header-element -->
					<div class="header-element">
						<!-- Start::header-link|dropdown-toggle -->
						<a href="javascript:void(0);" class="header-link dropdown-toggle"
							id="mainHeaderProfile" data-bs-toggle="dropdown"
							data-bs-auto-close="outside" aria-expanded="false">
							<div class="d-flex align-items-center">
								<div class="">
									<img src="<c:url value="/resources/assets/img/users/1.jpg"/>"
										alt="img" width="30" height="30" class="rounded-circle">
								</div>
							</div>
						</a>
					</div>
					<!-- End::header-element -->

				</div>
				<!-- End::header-content-right -->

			</div>
			<!-- End::main-header-container -->

		</header>
		<!-- End Main-Header -->

		<!--Main-Sidebar-->
		<aside class="app-sidebar" id="sidebar">
        <!-- Start::main-sidebar-header -->
        <div class="main-sidebar-header">
            <a href="/home" class="header-logo">
                <img src='<c:url value="/resources/assets/img/logos/logo.png"/>' width="120px" alt="logo">
            </a>
        </div>
        <!-- End::main-sidebar-header -->

        <!-- Start::main-sidebar -->
        <div class="main-sidebar" id="sidebar-scroll">
            <div class="sidebar-content">
                <!-- Start::nav -->
                <nav class="main-menu-container nav nav-pills flex-column sub-open">
                    <div class="slide-left" id="slide-left"></div>
                    <ul class="main-menu">
                        <!-- Your menu items here -->
                        <li class="slide__category"><span class="category-name">Riyality Softwares</span></li>
                        <li class="slide has-sub">
                            <a href="#" class="side-menu__item" onclick="navigateToDashboard()">
                                <i class="ri-home-8-line side-menu__icon"></i>
                                <span class="side-menu__label">Dashboard</span>
                            </a>
                        </li>
                        <!-- Other menu items -->
                        <li class="slide has-sub">
                            <a href="javascript:void(0);" class="side-menu__item">
                                <i class="ri-product-hunt-line side-menu__icon"></i>
                                <span class="side-menu__label">Product</span>
                                <i class="ri ri-arrow-right-s-line side-menu__angle"></i>
                            </a>
                            <ul class="slide-menu child1">
                                <li class="slide">
                                    <a href="/addProductForm" class="side-menu__item">Add Product</a>
                                </li>
                                <li class="slide">
                                    <a href="/products/allProd" class="side-menu__item">All Product</a>
                                </li>
                                <li class="slide">
                                    <a href="/customer/returnpolicy" class="side-menu__item">Return Product</a>
                                </li>
                            </ul>
                        </li>
                        <li class="slide has-sub">
                            <a href="javascript:void(0);" class="side-menu__item">
                                <i class="ri-user-line side-menu__icon"></i>
                                <span class="side-menu__label">Supplier</span>
                                <i class="ri ri-arrow-right-s-line side-menu__angle"></i>
                            </a>
                            <ul class="slide-menu child1">
                                <li class="slide">
                                    <a href="/suppliers/addSupplierForm" class="side-menu__item">Add Supplier</a>
                                </li>
                                <li class="slide">
                                    <a href="/suppliers/all" class="side-menu__item">All Supplier</a>
                                </li>
                                <li class="slide">
                                    <a href="/customer/returnPolicySupplier" class="side-menu__item">Return Product To Supplier</a>
                                </li>
                            </ul>
                        </li>
                        <li class="slide has-sub">
                            <a href="javascript:void(0);" class="side-menu__item">
                                <i class="ri-bill-line side-menu__icon"></i>
                                <span class="side-menu__label">Receipts</span>
                                <i class="ri ri-arrow-right-s-line side-menu__angle"></i>
                            </a>
                            <ul class="slide-menu child1">
                                <li class="slide">
                                    <a href="/purchasereceipt" class="side-menu__item">Supplier Receipt</a>
                                </li>
                                <li class="slide">
                                    <a href="/customers/addReceiptForm" class="side-menu__item">Customer Receipt</a>
                                </li>
                            </ul>
                        </li>
                        <li class="slide has-sub">
                            <a href="javascript:void(0);" class="side-menu__item">
                                <i class="ri-currency-line side-menu__icon"></i>
                                <span class="side-menu__label">Borrowing</span>
                                <i class="ri ri-arrow-right-s-line side-menu__angle"></i>
                            </a>
                            <ul class="slide-menu child1">
                                <li class="slide">
                                    <a href="/borrow" class="side-menu__item">Customer Borrowing</a>
                                </li>
                                <li class="slide">
                                    <a href="/purchaseborrow" class="side-menu__item">Purchase Borrowing</a>
                                </li>
                            </ul>
                        </li>
                        <li class="slide has-sub">
                            <a href="javascript:void(0);" class="side-menu__item">
                                <i class="ri-user-line side-menu__icon"></i>
                                <span class="side-menu__label">Customer</span>
                                <i class="ri ri-arrow-right-s-line side-menu__angle"></i>
                            </a>
                            <ul class="slide-menu child1">
                                <li class="slide">
                                    <a href="/customers/addCustomerForm" class="side-menu__item">Add Customer</a>
                                </li>
                                <li class="slide">
                                    <a href="/customers/all" class="side-menu__item">All Customer</a>
                                </li>
                                <li class="slide">
                                    <a href="/customers/customer-invoice" class="side-menu__item">Sell Between Two Dates</a>
                                </li>
                            </ul>
                        </li>
                        <li class="slide has-sub">
                            <a href="javascript:void(0);" class="side-menu__item">
                                <i class="ri-building-line side-menu__icon"></i>
                                <span class="side-menu__label">Company</span>
                                <i class="ri ri-arrow-right-s-line side-menu__angle"></i>
                            </a>
                            <ul class="slide-menu child1">
                                <li class="slide">
                                    <a href="/companies/addCompanyForm" class="side-menu__item">Add Company</a>
                                </li>
                                <li class="slide">
                                    <a href="/companies/all" class="side-menu__item">All Company</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <div class="slide-right" id="slide-right">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="#7b8191" width="24" height="24" viewBox="0 0 24 24">
                            <path d="M10.707 17.707 16.414 12l-5.707-5.707-1.414 1.414L13.586 12l-4.293 4.293z"></path>
                        </svg>
                    </div>
                </nav>
                <!-- End::nav -->
            </div>
        </div>
        <!-- End::main-sidebar -->
        
        <!-- Sidebar Footer -->
        <footer class="sidebar-footer">
           <span class="text-center">Copyright © <span id="year">2024</span>
						<a href="https://www.riyalitysoftwares.com/" class="text-primary">Riyality</a>
						<a class="text-primary" href="https://www.riyalitysoftwares.com/"> Software Services </a> All rights reserved </span>
				
        </footer>
    </aside>
		<!-- End Main-Sidebar-->
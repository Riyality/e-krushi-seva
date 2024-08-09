<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<!-- Start::app-content -->
<div class="main-content app-content">
	<div class="container-fluid my-5">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Supplier Details</div>
					</div>
					<div class="card-body">
						<!-- Supplier Form Section -->
						<form action="<c:url value='/suppliers/update'/>" method="post">
							<div class="row">
								<div class="col-xl-4 mb-3">
									<label for="name">Supplier Name:</label> <input type="hidden"
										class="form-control inp_krushi" id="id" name="id"
										value="${supplier.id}" readonly> <input type="text"
										class="form-control inp_krushi" id="name" name="name"
										value="${supplier.name}">
								</div>
								
								<div class="col-xl-4 mb-3">
									<label for="address">Address:</label> <input type="text"
										class="form-control inp_krushi" id="address" name="address"
										value="${supplier.address}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="state">State:</label> <input type="text"
										class="form-control inp_krushi" id="state" name="state"
										value="${supplier.state}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="city">City:</label> <input type="text"
										class="form-control inp_krushi" id="city" name="city"
										value="${supplier.city}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="pincode">Pin Code:</label> <input type="text"
										class="form-control inp_krushi" id="pincode" name="pincode"
										value="${supplier.pincode}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="email">Email:</label> <input type="email"
										class="form-control inp_krushi" id="email" name="email"
										value="${supplier.email}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="mobileNo">Mobile No:</label> <input type="text"
										class="form-control inp_krushi" id="mobileNo" name="mobileNo"
										value="${supplier.mobileNo}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="adharCardNo">Adhar Card No:</label> <input
										type="text" class="form-control inp_krushi" id="adharCardNo"
										name="adharCardNo" value="${supplier.adharCardNo}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="openingBalance">Opening Balance:</label> <input
										type="text" class="form-control inp_krushi"
										id="openingBalance" name="openingBalance"
										value="${supplier.openingBalance}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="credit">Credit:</label> <select
										class="form-control inp_krushi pt-1" id="credit" name="credit">
										<option value="Online">Online</option>
										<option value="Cash">Cash</option>
									</select>
								</div>

								<div class="col-xl-4 mb-3">
									<label for="gstNo">GST No:</label> <input type="text"
										class="form-control inp_krushi" id="gstNo" name="gstNo"
										value="${supplier.gstNo}">
								</div>
								<div class="col-xl-4 mb-3">
									<label for="gstType">GST Type:</label> <select
										class="form-control inp_krushi pt-1" id="gstType" name="gstType">
										<option value="SGST">SGST</option>
										<option value="CGST">CGST</option>
									</select>
								</div>

								<div class="col-xl-12">
									<button type="submit" class="btn btn-primary p-1">Update</button>
									<a href="/suppliers/all"><button type="button"
											class="btn btn-danger">Cancel</button></a>
								</div>
							</div>
						</form>
					</div>
					<div class="card-footer d-none border-top-0"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End::app-content -->

<jsp:include page="../modules/footer.jsp" />

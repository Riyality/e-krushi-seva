<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />


<!-- Start::app-content -->
<div class="main-content app-content" style="margin-top: 30px;">
	<div class="container-fluid my-5">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add Supplier</div>
					</div>
					<div class="card-body">
						<form action="/suppliers" method="post">
							<div class="row">

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="supplierName" class="form-label">Supplier
											Name</label> <input type="text" class="form-control"
											id="supplierName" name="name"
											placeholder="Enter Supplier Name" required
											pattern="[A-Za-z\s]+"
											title="Only letters and spaces are allowed">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="address" class="form-label">Address</label> <input
											type="text" class="form-control" id="address" name="address"
											placeholder="Enter Address" required>
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="state" class="form-label">State</label> <input
											type="text" class="form-control" id="state" name="state"
											placeholder="Enter State" required pattern="[A-Za-z\s]+"
											title="Only letters and spaces are allowed">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="city" class="form-label">City</label> <input
											type="text" class="form-control" id="city" name="city"
											placeholder="Enter City" required pattern="[A-Za-z\s]+"
											title="Only letters and spaces are allowed">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="pincode" class="form-label">Pincode</label> <input
											type="text" class="form-control" id="pincode" name="pincode"
											placeholder="Enter Pincode" required pattern="\d{6}"
											title="Only 6 digits are allowed">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="contact" class="form-label">Contact</label> <input
											type="text" class="form-control" id="contact" name="contact"
											placeholder="Enter Contact" required pattern="\d{10}"
											maxlength="10" title="Only 10 digits are allowed">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="email" class="form-label">Email</label> <input
											type="email" class="form-control" id="email" name="email"
											placeholder="Enter Email" required>
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="mobileNo" class="form-label">Mobile No</label> <input
											type="text" class="form-control" id="mobileNo"
											name="mobileNo" placeholder="Enter Mobile No" required
											pattern="\d{10}" title="Only 10 digits are allowed">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="adharCardNo" class="form-label">Adhar Card
											No</label> <input type="text" class="form-control" id="adharCardNo"
											name="adharCardNo" placeholder="Enter Adhar Card No" required
											pattern="\d{12}" title="Only 12 digits are allowed">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="openingBalance" class="form-label">Opening
											Balance</label> <input type="text" class="form-control"
											id="openingBalance" name="openingBalance"
											placeholder="Enter Opening Balance" required
											pattern="\d+(\.\d{1,2})?"
											title="Only numbers are allowed, up to 2 decimal places">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="credit" class="form-label">Credit</label> <select
											class="form-control pt-0" id="credit" name="credit" required>
											<option value="">Select Credit</option>
											<option value="cash">Cash</option>
											<option value="online">Online</option>
										</select>
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="gstNo" class="form-label">GST No</label> <input
											type="text" class="form-control" id="gstNo" name="gstNo"
											placeholder="Enter GST No" required pattern="\d{15}"
											title="Only 15 digits are allowed">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="gst" class="form-label">GST</label> <select
											class="form-control pt-0" id="gst" name="gstType" required>
											<option value="">Select GST</option>
											<option value="SGST">SGST</option>
											<option value="CGST">CGST</option>
										</select>
									</div>
								</div>

								<div class="col-xl-12">
									<button class="btn btn-primary btn-sm" type="submit">Submit</button>
									<a href="javascript:history.back()">
										<button type="button" class="btn btn-danger btn-sm">Cancel</button>
									</a>
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

<jsp:include page="../modules/header.jsp" />

<!-- Start::app-content -->
<div class="main-content app-content" style="margin-top: 30px;">
	<div class="container-fluid my-5">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add New Customer</div>
					</div>
					<div class="card-body">
						<form action="/customers" method="post"
							onsubmit="return validateForm()">
							<div class="row">
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="customer_name" class="form-label">Customer
											Name</label> <input type="text" class="form-control inp_krushi"
											id="customerName" name="customerName"
											placeholder="Sonam Sharma" pattern="[A-Za-z\s]+"
											title="Only letters and spaces are allowed" required>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="area" class="form-label">Area</label> <input
											type="text" class="form-control inp_krushi" id="area"
											name="area" placeholder="e.g Near ICIC Bank">
										
											
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="address" class="form-label">Address</label> <textarea
											type="text" class="form-control inp_krushi" id="address"
											name="address" placeholder="e.g Viman Nagar,pune "></textarea>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="taluka" class="form-label">Taluka</label> <select
											style="font-size: 13px !important;" class="form-control inp_krushi" id="taluka" name="taluka"
											required>
											<option value="" disabled selected>Select Taluka</option>
											<option value="Mumbai">Mumbai</option>
											<option value="Pune">Pune</option>
											<option value="Nagpur">Nagpur</option>
											<option value="Nashik">Nashik</option>
											<option value="Thane">Thane</option>
											<option value="Aurangabad">Aurangabad</option>
											<option value="Solapur">Solapur</option>
										</select>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="district" class="form-label">District</label> <select
											style="font-size: 13px !important;" class="form-control inp_krushi" id="district" name="district"
											required>
											<option value="" disabled selected>Select District</option>
											<option value="Ahmednagar">Ahmednagar</option>
											<option value="Akola">Akola</option>
											<option value="Mumbai Suburban">Mumbai Suburban</option>
											<option value="Nagpur">Nagpur</option>
											<option value="Nanded">Nanded</option>
											<option value="Nandurbar">Nandurbar</option>
											<option value="Nashik">Nashik</option>
											<option value="Pune">Pune</option>
											<option value="Raigad">Raigad</option>
											<option value="Ratnagiri">Ratnagiri</option>
											<option value="Sangli">Sangli</option>
											<option value="Satara">Satara</option>
											<option value="Sindhudurg">Sindhudurg</option>
											<option value="Solapur">Solapur</option>
											<option value="Thane">Thane</option>
										</select>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="state" class="form-label">State</label> <select
											style="font-size: 13px !important;" class="form-control inp_krushi" id="state" name="state"
											required>
											<option value="" disabled selected>Select State</option>
											<option value="Andhra Pradesh">Andhra Pradesh</option>
											<option value="Arunachal Pradesh">Arunachal Pradesh</option>
											<option value="Assam">Assam</option>
											<option value="Bihar">Bihar</option>
											<option value="Chhattisgarh">Chhattisgarh</option>
											<option value="Goa">Goa</option>
											<option value="Gujarat">Gujarat</option>
											<option value="Haryana">Haryana</option>
											<option value="Himachal Pradesh">Himachal Pradesh</option>
											<option value="Jharkhand">Jharkhand</option>
											<option value="Karnataka">Karnataka</option>
											<option value="Kerala">Kerala</option>
											<option value="Madhya Pradesh">Madhya Pradesh</option>
											<option value="Maharashtra">Maharashtra</option>
											<option value="Manipur">Manipur</option>

										</select>
									</div>
								</div>


								<div class="col-xl-4">
									<div class="mb-3">
										<label for="group" class="form-label">Group</label> <select
											style="font-size: 13px !important;" class="form-control inp_krushi" id="group" name="group"
											required>
											<option value="" disabled selected>Select Group</option>
											<option value="Individual Farmers">Individual
												Farmers</option>
											<option value="Farmer Cooperatives">Farmer
												Cooperatives</option>
											<option value="Horticulture">Horticulture</option>
											<option value="Dairy Farmers">Dairy Farmers</option>
											<option value="Poultry Farmers">Poultry Farmers</option>
											<option value="Agri-entrepreneurs">Agri-entrepreneurs</option>
											<option value="Input Suppliers">Input Suppliers</option>
											<option value="Beneficiaries of Government Schemes">Beneficiaries
												of Government Schemes</option>
										</select>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="categories" class="form-label">Categories</label>
										<select style="font-size: 13px !important;" class="form-control inp_krushi" id="categories"
											name="categories" required>
											<option value="" disabled selected>Select Category</option>
											<option value="Farmer">Farmer</option>
											<option value="Supplier">Supplier</option>
											<option value="Distributor">Distributor</option>
											<option value="Retailer">Retailer</option>
											<option value="Wholesaler">Wholesaler</option>
											<option value="Agricultural Consultant">Agricultural
												Consultant</option>
											<option value="Equipment Dealer">Equipment Dealer</option>
											<option value="Seed Dealer">Seed Dealer</option>
											<option value="Fertilizer Dealer">Fertilizer Dealer</option>
											<option value="Pesticide Dealer">Pesticide Dealer</option>
											<!-- Add more options as needed -->
										</select>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="mobile_no" class="form-label">Mobile No</label> <input
											type="text" class="form-control inp_krushi" id="mobile_no"
											name="mobile_no" placeholder="e.g +91 9987654323"
											pattern="^(\+91|91|0)?[6789]\d{9}$" title="Enter Mobile Number"
											maxlength="10">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="email_id" class="form-label">Email ID</label> <input
											type="email" class="form-control inp_krushi" id="email_id"
											name="email_id" placeholder="e.g abc@gmail.com"
											pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
											title="Enter Email">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="gst_no" class="form-label">GST No</label> <input
											type="text" class="form-control inp_krushi" id="gst_no"
											name="gst_no" placeholder="e.g. 22AAAAA0000A1Z5"
											pattern="\d*">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="aadhar_no" class="form-label">Aadhar No</label> <input
											type="text" class="form-control inp_krushi" id="aadhar_no"
											name="aadhar_no" placeholder="e.g 3489 8316 4321"
											pattern="\d{12}"
											title="Aadhar number must be exactly 12 digits"
											maxlength="12" required>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="pin_code" class="form-label">Pincode</label> <input
											type="text" class="form-control inp_krushi" id="pin_code"
											name="pin_code" placeholder="e.g 413307" pattern="\d*"
											title="Enter a valid pincode" maxlength="6" required>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="opening_balance" class="form-label">Opening
											Balance</label> <input type="text" class="form-control inp_krushi"
											id="opening_balance" name="opening_balance"
											placeholder="e.g 23000 " pattern="\d*"
											title="Enter a valid number">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="payment_type" class="form-label ">Payment
											Type</label> <select style="font-size: 13px !important;" class="form-control inp_krushi"
											id="payment_type" name="payment_type" required>
											<option value="Debit">Debit</option>
											<option value="Credit">Credit</option>
											<option value="Cash">Cash</option>
										</select>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="interest" class="form-label">Interest</label> <input
											type="text" class="form-control inp_krushi" id="interest"
											name="interest" placeholder="e.g. 5" pattern="\d*"
											title="Enter a valid number">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="interest_type" class="form-label">Interest
											Type</label> <select class="form-control inp_krushi"
											id="interest_type" name="interest_type" required>
											<option value="" disabled selected>Select Interest
												Type</option>
											<option value="Simple">Simple</option>
											<option value="Compound">Compound</option>
											<option value="Fixed">Fixed</option>
										</select>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="gst" class="form-label">GST</label> <input
											type="text" class="form-control inp_krushi" id="gst"
											name="gst" placeholder="e.g. 18%" pattern="\d*" required>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="status" class="form-label">Status</label> <select
											style="font-size: 13px !important;" style="font-size: 13px !important;" class="form-control inp_krushi" id="status" name="status"
											required>
											<option value="Active">Active</option>
											<option value="Inactive">Inactive</option>
										</select>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="birthday" class="form-label">Birthday</label> <input
											type="date" class="form-control inp_krushi" id="birthday"
											name="birthday" required>
									</div>
								</div>

								<div class="col-xl-12">
									<button class="btn btn-primary btn" type="submit">Submit</button>
									   <a href="/home"><button type="button" class="btn btn-danger btn">Cancel</button></a>
								</div>
							</div>
						</form>
					</div>
					<hr>
					<h3 style="color: green">${msg}</h3>
					<h3 style="color: red">${errorMsg}</h3>
					<hr>
					<div class="card-footer d-none border-top-0"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End::app-content -->

<jsp:include page="../modules/footer.jsp" />
<script>
	function validateForm() {
		const mobileNo = document.getElementById('mobile_no').value;
		const mobilePattern = /^(\+91|91|0)?[6789]\d{9}$/;
		if (!mobilePattern.test(mobileNo)) {
			alert('Please enter a valid mobile number');
			return false;
		}

		return true;
	}
</script>

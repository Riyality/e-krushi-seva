<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>"
	rel="stylesheet">

<style>
.form-container {
	display: flex;
	align-items: center;
	gap: 10px; /* Space between each item */
	margin-bottom: 20px;
}

.form-control {
	margin-left: 10px;
}
</style>

<!-- Bootstrap CSS for Modal -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<div class="main-content app-content">
	<div class="container-fluid">

		<!-- Page Header -->
		<div
			class="d-md-flex d-block align-items-center justify-content-between my-4 page-header-breadcrumb">

		</div>
		<!-- Page Header Close -->

		<!-- Start::row-1 -->
		<div class="row justify-content-center">
			<div class="col-xl-12">
				<form id="myreceiptForm" action="" method="post">
					<div class="card custom-card">
						<div class="card-body">
							<div class="row gy-3">
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 mb-2">
									<a href="/home" class="header-logo"> <img
										src='<c:url value="/resources/assets/img/logos/logo.png"/>'
										width="120px" style="margin-top: -26px;" alt="logo">
									</a>
									<div class="row  mt-0 border-end" >
										<div class="col-xl-6">
											<p class="mb-1 fs-14" style="margin-top: -16px;">Customer
												Name:</p>
											<input type="text" class="form-control"
												placeholder="Search customers" id="customerNameInput"
												style="width: 160px; margin-left: -5px" ; class="d-block"
												onkeyup="searchCustomers()"> <input type="hidden"
												id="customerNameInputId" name="customerId"> <select
												id="customerDropdown" size="5"
												style="width: 160px; border: none;" class="form-control"></select>


											<p class="mb-3 fs-14 d-inline">Mobile No:</p>
											<p id="mobileNo" class="mb-3 fs-14 d-inline"></p><br>
									

											<p class="mb-3 fs-14 d-inline">Address:</p>
											<p id="address"  class="mb-3 fs-14 d-inline"></p><br>
										

											<p class="mb-3 fs-14 d-inline">Aadhar No:</p>
											<p id="aadharNo" class="mb-3 fs-14 d-inline"></p>
											
										</div>
									</div>
								</div>


								<!-- <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 mb-2">

									<div class="row gy-2" style="margin-top: 40px">
										<div class="col-xl-12 px-0">

									
										</div>
									</div>
								</div> -->
								
								
								<div
									class="col-xl-4 col-lg-4 col-md-6 col-sm-6 ms-auto mt-sm-0 ">
									 <div class="row gy-2" style="margin-top: 40px">
										<div class="col-xl-12 px-0">
												<p class="mb-1 fs-14">
												Bill Date: <input type="date" name="date"
													class="fw-semibold fs-14 mb-2" />
											</p>
											Bill No: <input style="width: 130px;"
												class="mb-1 fw-semibold fs-14 mb-2" />

											<p class="mb-1 fs-14">
												Due Date: <input type="date" class="fw-semibold fs-14 mb-2" />
											</p>

										
											Item Type:<select class="mb-3" style="width: 130px;">
												<option value="Item1">Item Type1</option>
												<option value="Item2">Item Type2</option>
												<option value="Item3">Item Type3</option>
											</select><br> Mannual No: <input style="width: 128px;"
												class="mb-3 fw-semibold fs-14"><br> <br>


										</div>
									</div> 
								</div>
							</div>
							<hr class="pb-2">
							<div class="form-container">
								<!-- Input field for searching products -->
								<input type="text" id="productNameInput" class="form-control"
									placeholder="Search Products" style="width: 150px;"
									onkeyup="searchProducts()"> <input type="hidden"
									id="productNameInputId" name="productId">

								<!-- Dropdown menu to display search results -->
								<select id="productDropdown" class="form-control"
									style="width: 160px; border: none; display: none;" size="5"
									onchange="selectProduct()"></select>

								<!-- Quantity Input -->
								Qty:<input type="text" id="quantityInput" name="quantity"
									class="form-control ml-2" style="width: 160px;">

								<!-- Price Input -->
								Price:<input id="priceInput" type="text"
									class="form-control ml-2" style="width: 160px;">

								<!-- Discount Dropdown -->
								<select id="discountDropdown" class="form-control ml-2"
									style="width: 160px; font-size: 13px !important;">
									<option value="">Select Discount</option>
									<option value="5">5%</option>
									<option value="10">10%</option>
									<option value="15">15%</option>
									<option value="20">20%</option>
									<option value="25">25%</option>
									<option value="30">30%</option>
								</select>
							</div>

							<!-- <hr class="pb-2">
 -->
							<div class="col-xl-12">
								<div class="table-responsive">
									<table id="productTable"
										class="table nowrap text-nowrap border  mt-3">
										<thead>
											<tr>
												<th>Sr. No</th>
												<th>Item Name</th>
												<th>Batch No / Pack</th>
												<th>Quantity</th>
												<th>Exp.</th>
												<th>Sale Price</th>
												<th>Disc%</th>
												<th>Net Amount</th>
												<th>Amount</th>
												<th>IGST</th>
												<th>SGST Amount</th>
												<th>CGST Amount</th>
											</tr>
										</thead>
										<tbody id="productTableBody" class="invoice-body">
											<tr id="invoice-list">


											</tr>
										</tbody>
										<tfoot>
											<tr>
												<td colspan="12">
													<table class="table table-sm table-borderless mb-0">
														<tr>
															<td colspan="2" class="border-end">
																<h5 class="font-bold text-xl mb-3">Invoice Payment
																	Method</h5>
																<p class="fw-semibold fs-14 text-muted">
																	Account: <span class="fw-semibold text-default">000252522525253625</span>
																</p>
																<p class="fs-14 text-muted">
																	Account Name: <span
																		class="fw-semibold text-default fs-14">Synto</span>
																</p>
																<p class="fs-14 text-muted">
																	Bank Details: <span
																		class="fw-semibold text-default fs-14">Lorem
																		Ipsum</span>
																</p>
															</td> 
															<td colspan="2">
																<table
																	class="table table-sm text-nowrap mb-0 table-borderless border-end mr-5">
																	<tbody>
																		<tr>
																			<th scope="row" class="pr-3">
																				<div class="fw-semibold">Cash Payment:</div>
																			</th>
																			<td class="pl-3"><input style="width: 130px;"
																				name="cashPayment" id="cashPayment"
																				class="mb-3 fw-semibold fs-14"></td>
																		</tr>
																		<tr>
																			<th scope="row" class="pr-3">
																				<div class="fw-semibold">Online payment:</div>
																			</th>
																			<td class="pl-3"><input style="width: 130px;"
																				name="onlinePayment" id="onlinePayment"
																				class="mb-3 fw-semibold fs-14"></td>
																		</tr>
																		<tr id="discountRow">
																			<th scope="row" class="pr-3">
																				<div class="fw-semibold">Discount :</div>
																			</th>
																			<td class="pl-3">
																				<p id="discountValue">0%</p>
																			</td>
																		</tr>
																		<tr id="totalAmountRow">
																			<th scope="row" class="pr-3">
																				<div class="fs-14 fw-semibold">Total :</div>
																			</th>
																			<td class="pl-3">
																				<p id="totalAmountValue" name="amount"></p> <!-- Add an input field to store the total amount -->
																				<input type="hidden" id="totalAmountInput"
																				name="totalAmount" value="">

																			</td>
																		</tr>

																	</tbody>
																</table>
															</td>

															<td colspan="2">
																<table class="table table-sm text-nowrap mb-0 ">
																	<tbody>
																		<tr>
																			<th scope="row">
																				<div class="fw-semibold">Paid Amount</div>
																			</th>
																			<td><input id="paidAmountInput"
																				name="paidAmount" style="width: 130px;" type="text" readonly></td>
																		</tr>
																		<tr>
																			<th scope="row">
																				<div class="fw-semibold">Remaining Amount :</div>
																			</th>
																			<td><input id="remainingAmountInput"
																				name="remainingAmount" style="width: 130px;" type="text"></td>
																		</tr>

																		<tr>
																			<th scope="row">
																				<div class="fw-semibold">Payment Status</div>
																			</th>
																			<td>
																				<div id="paymentStatus" name="payStatus"
																					class="mb-3 p-1" style="width: 130px;"></div>
																			</td>
																		</tr>
																		<tr>
																			<th scope="row">
																				<div class="fs-14 fw-semibold">Next Payment
																					Status :</div>
																			</th>
																			<td><textarea id="nextpaymentstatus"
																					name="nextPaymentStatus" rows="3" cols="20"></textarea>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</tfoot>

									</table>
								</div>
							</div>
							<hr class="pb-2">
							<div class="col-xl-12">
								<div class="row">
									<div class="col-xl-6 col-lg-4 col-md-6 col-sm-6">
										<h5 class="fw-semibold  mb-1 text-mmuted">Terms And
											Conditions</h5>
										<p class="text-muted mb-0">Sed ut perspiciatis unde omnis
											iste natus error sit voluptatem accusantium doloremque
											laudantium, totam rem aperiam, eaque ipsa quae ab illo
											inventore veritatis et quasi architecto beatae vitae dicta
											sunt explicabo.</p>
									</div>
									<div
										class="col-xl-6 col-lg-4 col-md-6 col-sm-6 ms-auto mt-sm-0 mt-3 text-end">
										<h5 class=" mb-1 text-primary fs-28">Synto</h5>
										<p class="fw-semibold mb-0">Signature</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer">
						<div class=" gap-2 d-flex flex-wrap float-end">
							<button class="btn btn-primary btn-sm me-1 btn-w-xs "
								onclick="javascript:window.print();">Print</button>
							<button class="btn btn-secondary btn-sm me-1 btn-w-xs"
								type="submit">Save</button>
							<button class="btn btn-danger btn-sm btn-w-xs ">Cancel</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--End::row-1 -->

</div>
</div>
<!-- End::app-content -->

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	// Function to handle search and display products
	function searchProducts() {
		var input = $("#productNameInput").val();
		if (input.length >= 1) {
			$.ajax({
				url : "/products/search",
				method : "GET",
				data : {
					productName : input
				},
				success : function(products) {
					$("#productDropdown").empty();
					products.forEach(function(product) {
						$("#productDropdown").append(
								$("<option>").val(product.id).text(
										product.productName).data("product",
										product));
					});
					// Show the dropdown after populating
					$("#productDropdown").show();
				},
				error : function(xhr, status, error) {
					console.error("Error fetching products:", error);
				}
			});
		} else {
			// Hide the dropdown if input is empty
			$("#productDropdown").empty().hide();
		}
	}

	// Function to handle selection from dropdown
	function selectProduct() {
		var selectedProduct = $("#productDropdown").find(':selected').data(
				'product');

		//Assuming selectedProduct is the object containing the selected product details
		const productId = selectedProduct.id;
		document.getElementById('productNameInputId').value = productId;

		$("#productNameInput").val(selectedProduct.productName);
		displayProduct(selectedProduct);
		// Hide the dropdown after selection
		$("#productDropdown").hide();
	}

	function displayProduct(product) {
		var tableBody = $("#productTableBody");
		tableBody.empty();

		// Get the current number of rows in the table
		var rowCount = tableBody.children().length;
		// Create table row for product
		var row = $("<tr>");
		// Calculate Sr. No
		var srNo = rowCount + 1;
		// Add Sr. No
		row.append($("<td>").text(srNo)); // Sr. No

		/*  // Create table row for product
		 var row = $("<tr>"); */
		/*   row.append($("<td>").text(product.id)); // Sr. No  */
		row.append($("<td>").text(product.productName)); // Item Name
		var batchAndPacking = product.batchNo + " / " + product.packing;
		row.append($("<td>").text(batchAndPacking));

		var quantityCell = $("<td>");

		// Create an editable input field for quantity
		var quantityInput = $("<input>").attr("type", "text").attr("class",
				"form-control").attr("style", "width: 100px;").val("").on(
				"input", function() {
					var enteredQuantity = parseFloat($(this).val()) || 0;
					product.quantity = enteredQuantity; // Update product quantity dynamically
					updateProductRow(row, product);
				});

		quantityCell.append(quantityInput);
		row.append(quantityCell); // Append quantity input cell

		row.append($("<td>").text(product.expiryDate)); // Exp.

		var salePriceCell = $("<td>").text(product.mrp); // Sale Price
		row.append(salePriceCell);

		var discountCell = $("<td>").text(product.discountPercentage); // Disc%
		row.append(discountCell);

		row.append($("<td>").text(product.netAmount)); // Net Amount
		row.append($("<td>").text(product.amount)); // Amount

		row.append($("<td>").text(product.igst)); // IGST
		row.append($("<td>").text(product.sgstAmount)); // SGST Amount
		row.append($("<td>").text(product.cgstAmount)); // CGST Amount

		// Append the row to the table body
		tableBody.append(row);

		// Capture quantity input from external field
		$("#quantityInput").on("input", function() {
			var enteredQuantity = parseFloat($(this).val()) || 0;
			quantityInput.val(enteredQuantity); // Update the table's quantity input field
			product.quantity = enteredQuantity; // Update product object quantity
			updateProductRow(row, product); // Update the table row
		});

		// Capture price input from external field
		$("#priceInput").on("input", function() {
			var enteredPrice = parseFloat($(this).val()) || 0;
			product.mrp = enteredPrice; // Update product's sale price (MRP)
			salePriceCell.text(enteredPrice.toFixed(2)); // Update the table's sale price cell
			updateProductRow(row, product); // Update the table row
		});

		// Capture discount selection from dropdown
		$("#discountDropdown").on("change", function() {
			var selectedDiscount = parseFloat($(this).val()) || 0;
			product.discountPercentage = selectedDiscount; // Update product's discount percentage
			discountCell.text(selectedDiscount.toFixed(2)); // Update the table's discount cell
			updateProductRow(row, product); // Update the table row
		});
	}
	// Function to update product row based on quantity input and discount
	function updateProductRow(row, product) {
		var enteredQuantity = parseFloat(product.quantity) || 0;
		var salePrice = parseFloat(product.mrp) || 0;
		var discountPercentage = parseFloat(product.discountPercentage) || 0;

		// Calculate the net amount and amount
		var netAmount = enteredQuantity * salePrice;
		var discountAmount = netAmount * discountPercentage / 100;
		var amount = netAmount - discountAmount;

		// Update the corresponding cells in the row
		row.children().eq(6).text(discountPercentage.toFixed(2)); // Disc%
		row.children().eq(7).text(netAmount.toFixed(2)); // Net Amount
		row.children().eq(8).text(amount.toFixed(2)); // Amount

		// For debugging purposes
		console
				.log(`Quantity: ${enteredQuantity}, Sale Price: ${salePrice}, Discount: ${discountPercentage}, Net Amount: ${netAmount}, Amount: ${amount}`);

		updateTotalAmount(); // Update total amount after updating product row
	}

	// Function to calculate remaining amount and update payment status
	function calculateRemainingAmount() {
		var totalAmount = parseFloat($("#totalAmountValue").text().replace('$',
				'').replace(',', '')) || 0;
		var paidAmount = parseFloat($("#paidAmountInput").val()) || 0;

		var remainingAmount = totalAmount - paidAmount;
		$("#remainingAmountInput").val(remainingAmount.toFixed(2));

		// Update payment status
		var paymentStatus = remainingAmount === 0 ? "Paid" : "Pending";
		$("#paymentStatus").text(paymentStatus);
	}

	// Attach event listener to the paidAmountInput field to calculate remaining amount on input change
	$("#paidAmountInput").on("input", function() {
		calculateRemainingAmount();
	});

	// Initialize payment status and remaining amount on page load
	$(document).ready(function() {
		calculateRemainingAmount();
	});

	// Function to update total amount and total discount
	function updateTotalAmount() {
		var totalAmount = 0;
		var totalDiscount = 0;

		// Iterate through each row in tbody to calculate total amount and total discount
		$("#productTableBody tr")
				.each(
						function() {
							var netAmount = parseFloat($(this).find("td").eq(7)
									.text()) || 0;
							var amount = parseFloat($(this).find("td").eq(8)
									.text()) || 0; // Assuming amount is in the 9th column (index 8)
							var discountPercentage = parseFloat($(this).find(
									"td").eq(6).text()) || 0;

							totalAmount += amount;
							totalDiscount += netAmount
									* (discountPercentage / 100);
						});

		// Update the total amount value in <tfoot> without currency symbol
		$("#totalAmountValue").text(totalAmount.toFixed(2));

		// Set the value of the hidden input field for backend submission
		$("#totalAmountInput").val(totalAmount.toFixed(2));

		$("#discountValue").text(totalDiscount.toFixed(2));
	}

	// Function to update paid amount and trigger recalculation of remaining amount
	function updatePaidAmount() {
		// Get the values of the input fields
		let onlinePayment = parseFloat(document.getElementById('onlinePayment').value) || 0;
		let cashPayment = parseFloat(document.getElementById('cashPayment').value) || 0;

		// Calculate the sum of the two payments
		let totalPayment = onlinePayment + cashPayment;

		// Set the value of the paidAmountInput field
		$("#paidAmountInput").val(totalPayment.toFixed(2));

		// Recalculate the remaining amount
		calculateRemainingAmount();
	}

	// Attach event listeners to update the paid amount whenever the input values change
	document.getElementById('onlinePayment').addEventListener('input',
			updatePaidAmount);
	document.getElementById('cashPayment').addEventListener('input',
			updatePaidAmount);
</script>

<script>
	// Function to handle search and display customers
	function searchCustomers() {
		var name = $("#customerNameInput").val();
		if (name.length >= 1) {
			$.ajax({
				url : "/customers/search",
				method : "GET",
				data : {
					customerName : name
				},
				success : function(customers) {
					console.log(customers);

					$("#customerDropdown").empty();
					customers.forEach(function(customer) {

						$("#customerDropdown").append(
								$("<option>").val(customer.customer_ID).text(
										customer.customer_name).data(
										"customer", customer));
					});
					// Show the dropdown after populating
					$("#customerDropdown").show();
				}
			});
		} else {
			// Hide the dropdown if input is empty
			$("#customerDropdown").empty().hide();
		}
	}

	// Function to handle selection from dropdown
	$("#customerDropdown").change(function() {
		var selectedCustomer = $(this).find(':selected').data('customer');

		//Directly assign customerId assuming it's already a number
		const customerId = selectedCustomer.customer_ID;
		document.getElementById('customerNameInputId').value = customerId;

		console.log('Customer ID:', customerId);
		console.log('Type of Customer ID:', typeof customerId); // Should output "number"

		$("#customerNameInput").val(selectedCustomer.customer_name);
		// Set other customer details based on selected customer
		$("#mobileNo").text(selectedCustomer.mobile_no);
		$("#address").text(selectedCustomer.address);
		$("#aadharNo").text(selectedCustomer.aadhar_no);
		// Hide the dropdown after selection
		$(this).hide();
	});
</script>
<script>
	// Function to gather and send data to backend
	function sendDataToBackend() {
		console.log("123456");
		var customerName = $("#customerNameInput").val();
		var mobileNo = $("#mobileNo").text().trim();
		var address = $("#address").text().trim();
		var aadharNo = $("#aadharNo").text().trim();
		var billDate = $("input[name='date']").val();
		var dueDate = $("input[name='dueDate']").val();
		var itemType = $("#itemType").val();
		var paidAmount = $("#paidAmountInput").val();
		var remainingAmount = $("#remainingAmountInput").val();
		var onlinePayment = $("input[name='onlinePayment']").val();
		var cashPayment = $("input[name='cashPayment']").val();
		var paymentStatus = $("#paymentStatus").text().trim();
		var nextPaymentStatus = $("#nextpaymentstatus").val().trim();

		var dataToSend = {
			customerBill : {
				customerId : $("#customerNameInputId").val(),
				amount : parseFloat($("#totalAmountInput").val()),
				paidAmount : parseFloat(paidAmount),
				remainingAmount : parseFloat(remainingAmount),
				onlinePayment : parseFloat(onlinePayment),
				cashPayment : parseFloat(cashPayment),
				payStatus : paymentStatus,
				date : billDate,
				nextPaymentStatus : nextPaymentStatus
			},
			customerHistory : [ {
				customerId : $("#customerNameInputId").val(),
				productId : $("#productNameInputId").val(),
				date : billDate,
				amount : parseFloat($("#totalAmountInput").val()),
				quantity : parseFloat($("#quantityInput").val())
			} ]
		};

		console.log("Data to send:", dataToSend);

		$.ajax({
			url : "/customer/addBill",
			method : "POST",
			contentType : "application/json",
			data : JSON.stringify(dataToSend),
			success : function(response) {
				console.log("Data sent successfully:", response);
			},
			error : function(xhr, status, error) {
				console.error("Error sending data:", error);
			}
		});
	}

	$('#myreceiptForm').submit(function(event) {
		event.preventDefault();
		sendDataToBackend();
	});
</script>



<jsp:include page="../modules/footer.jsp" />
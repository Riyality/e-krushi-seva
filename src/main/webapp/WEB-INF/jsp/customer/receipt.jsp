<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>" rel="stylesheet">

<style>
/* Custom styles for the form */
.form-container .search-container {
    position: relative;
}

.form-container {
    margin-top: -20px;
}

.search-container {
    margin-left: 130px;
}

#productDropdown {
    position: absolute;
    top: 100%;
    left: 0;
    width: 100%;
    z-index: 1000;
    display: none;
    border: 1px solid #ccc;
    background-color: #fff;
}

/* Additional custom styles */
.header-logo img {
    margin-top: -26px;
}

.custom-card {
    margin: 20px 0;
}

.table-responsive {
    margin-top: 20px;
}

.table thead th {
    vertical-align: middle;
    text-align: center;
}

.table tbody td {
    vertical-align: middle;
    text-align: center;
}

.table tfoot td {
    vertical-align: middle;
    text-align: center;
}

.table .table-sm th,
.table .table-sm td {
    padding: 0.3rem;
}

.table .table-borderless th,
.table .table-borderless td {
    border: 0;
}

.border-end {
    border-right: 1px solid #dee2e6;
}

.ml-2 {
    margin-left: 0.5rem;
}

#discountValue,
#totalAmountValue {
    margin: 0;
}

.fs-14 {
    font-size: 14px;
}

.fw-semibold {
    font-weight: 600;
}

.mb-3 {
    margin-bottom: 1rem;
}

.me-1 {
    margin-right: 0.25rem;
}

.btn-w-xs {
    width: 100px;
}

.float-end {
    float: right;
}

.form-group {
    margin-bottom: 1rem; /* Adjust margin bottom as needed */
}

@media (max-width: 768px) {
    .form-container .search-container {
        margin-left: 0;
    }

    .float-end {
        float: none;
    }

    .gap-2 {
        justify-content: center;
    }

    .btn-w-xs {
        width: 80px;
    }
}
@media print {
    /* Hide input fields and buttons */
    input,
    select,
    .btn {
        display: none !important;
    }
}
</style>

<!-- Bootstrap CSS for Modal -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<div class="main-content app-content">
    <div class="container-fluid">

        <!-- Page Header -->
        <div class="d-md-flex d-block align-items-center justify-content-between my-4 page-header-breadcrumb">

        </div>
        <!-- Page Header Close -->

        <!-- Start::row-1 -->
        <div class="row justify-content-center">
            <div class="col-xl-12">
                <form id="myreceiptForm" action="" method="post">
                    <div class="card custom-card">
                        <div class="card-body">
                            <div class="row gy-3">
                                <!-- Customer Information -->
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 mb-2" style="margin-left: 80px;">
                                    <a href="/home" class="header-logo">
                                        <img src='<c:url value="/resources/assets/img/logos/logo.png"/>' width="120px" style="margin-top: -26px;" alt="logo">
                                    </a>
                                    <div class="row mt-0 border-end">
                                        <div class="col-xl-6">
                                            <p class="mb-1 fs-14">Customer Name:</p>
                                            <div class="d-flex align-items-center">
                                                <input type="text" class="form-control me-2" placeholder="Search customers" id="customerNameInput" style="width: 160px;" onkeyup="searchCustomers()">
                                                <input type="hidden" id="customerNameInputId" name="customerId">
                                            </div>
                                            <select id="customerDropdown" size="5" style="width: 160px; border: none; margin-top: 5px;" class="form-control"></select>

                                            <div class="mt-2">
                                                <p class="mb-1 fs-14 d-inline">Mobile No:</p>
                                                <p id="mobileNo" class="mb-1 fs-14 d-inline"></p>
                                            </div>

                                            <div>
                                                <p class="mb-1 fs-14 d-inline">Address:</p>
                                                <p id="address" class="mb-1 fs-14 d-inline"></p>
                                            </div>

                                            <div>
                                                <p class="mb-1 fs-14 d-inline">Aadhar No:</p>
                                                <p id="aadharNo" class="mb-1 fs-14 d-inline"></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Bill Information -->
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 ms-auto mt-sm-0">
                                    <div class="row gy-2" style="margin-top: 40px;">
                                        <div class="col-xl-12 px-0">
                                            <div class="form-group mb-1 d-flex align-items-center">
                                                <label for="billDate" class="mb-0 fs-14 me-2" style="margin-right: 15px !important;">Bill Date:</label>
                                                <input type="date" name="date" id="billDate" class="form-control fw-semibold fs-14" style="width: 160px; margin-right: 10px;">
                                            </div>
                                            <div class="form-group mb-1 d-flex align-items-center">
                                                <label for="billNo" class="mb-0 fs-14 me-2" style="margin-right: 27px !important;">Bill No:</label>
                                                <input type="text" id="billNo" class="form-control fw-semibold fs-14" style="width: 160px; margin-right: 30px !important;">
                                            </div>
                                            <div class="form-group mb-1 d-flex align-items-center">
                                                <label for="dueDate" class="mb-0 fs-14 me-2" style="margin-right: 11px !important;">Due Date:</label>
                                                <input type="date" id="dueDate" class="form-control fw-semibold fs-14" style="width: 160px; margin-right: 10px;">
                                            </div>
                                            <div class="form-group mb-1 d-flex align-items-center">
                                                <label for="itemType" class="mb-0 fs-14 me-2" style="margin-right: 11px !important; ">Item Type:</label>
                                                <select id="itemType" class="form-control" style="width: 160px; margin-right: 10px;  font-size: 13px !important;">
                                                    <option value="Item1">Item Type1</option>
                                                    <option value="Item2">Item Type2</option>
                                                    <option value="Item3">Item Type3</option>
                                                </select>
                                            </div>
                                            <div class="form-group mb-1 d-flex align-items-center">
                                                <label for="manualNo" class="mb-0 fs-14 me-2">Manual No:</label>
                                                <input type="text" id="manualNo" class="form-control fw-semibold fs-14" style="width: 160px; margin-right: 10px;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <hr class="pb-2">

                            <!-- Product Search and Details -->
                            <div class="form-container">
                                <div class="row">
                                    <!-- Column for Product Search -->
                                    <div class="col-auto">
                                        <div class="search-container">
                                            <label for="productNameInput">Product:</label>
                                            <input type="text" id="productNameInput" class="form-control" placeholder="Search Products" style="width: 150px;" onkeyup="searchProducts()">
                                            <input type="hidden" id="productNameInputId" name="productId">
                                            <!-- Dropdown menu to display search results -->
                                            <select id="productDropdown" class="form-control" style="width: 160px; border: none; display: none;" size="5"></select>
                                        </div>
                                    </div>

                                    <!-- Column for Quantity Input -->
                                    <div class="col-auto">
                                        <label for="quantityInput">Qty:</label>
                                        <input type="text" id="quantityInput" name="quantity" class="form-control ml-2" style="width: 160px;">
                                    </div>

                                    <!-- Column for Price Input -->
                                    <div class="col-auto">
                                        <label for="priceInput">Price:</label>
                                        <input id="priceInput" type="text" class="form-control ml-2" style="width: 160px;">
                                    </div>

                                    <!-- Column for Discount Dropdown -->
                                    <div class="col-auto">
                                        <label for="discountDropdown">Discount:</label>
                                        <select id="discountDropdown" class="form-control ml-2" style="width: 160px; font-size: 13px !important;">
                                            <option value="">Select Discount</option>
                                            <option value="5">5%</option>
                                            <option value="10">10%</option>
                                            <option value="15">15%</option>
                                            <option value="20">20%</option>
                                            <option value="25">25%</option>
                                            <option value="30">30%</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <hr class="pb-2">

                            <!-- Product Table -->
                            <div class="col-xl-12">
                                <div class="table-responsive">
                                    <table id="productTable" class="table nowrap text-nowrap border mt-3">
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
                                            <tr id="invoice-list"></tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="12">
                                                    <table class="table table-sm table-borderless mb-0">
                                                        <tr>
                                                            <td colspan="2">
                                                                <table class="table table-sm text-nowrap mb-0 table-borderless border-end mr-5">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row" class="pr-3">
                                                                                <div class="fw-semibold">Cash Payment:</div>
                                                                            </th>
                                                                            <td class="pl-3">
                                                                                <input style="width: 130px;" name="cashPayment" id="cashPayment" class="mb-3 fw-semibold fs-14">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row" class="pr-3">
                                                                                <div class="fw-semibold">Online payment:</div>
                                                                            </th>
                                                                            <td class="pl-3">
                                                                                <input style="width: 130px;" name="onlinePayment" id="onlinePayment" class="mb-3 fw-semibold fs-14">
                                                                            </td>
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
                                                                                <p id="totalAmountValue" name="amount"></p>
                                                                                <!-- Add an input field to store the total amount -->
                                                                                <input type="hidden" id="totalAmountInput" name="totalAmount" value="">
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                            <td colspan="2">
                                                                <table class="table table-sm text-nowrap mb-0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row">
                                                                                <div class="fw-semibold">Paid Amount</div>
                                                                            </th>
                                                                            <td>
                                                                                <input id="paidAmountInput" name="paidAmount" style="width: 130px;" type="text" readonly>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">
                                                                                <div class="fw-semibold">Remaining Amount :</div>
                                                                            </th>
                                                                            <td>
                                                                                <input id="remainingAmountInput" name="remainingAmount" style="width: 130px;" type="text">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">
                                                                                <div class="fw-semibold">Payment Status</div>
                                                                            </th>
                                                                            <td>
                                                                                <div id="paymentStatus" name="payStatus" class="mb-3 p-1" style="width: 130px;"></div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">
                                                                                <div class="fs-14 fw-semibold">Next Payment Status :</div>
                                                                            </th>
                                                                            <td>
                                                                                <input id="nextpaymentstatus" type="date" name="nextPaymentStatus" />
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

                            <!-- Buttons -->
                            <div class="gap-2 d-flex flex-wrap float-end">
                                <button class="btn btn-primary btn-sm me-1 btn-w-xs" onclick="javascript:window.print();">Print</button>
                                <button id="mybutton" class="btn btn-secondary btn-sm me-1 btn-w-xs" type="submit">Save</button>
                                <button class="btn btn-danger btn-sm btn-w-xs">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

	<!--End::row-1 -->


<!-- End::app-content -->

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
// Function to handle search and display products
function searchProducts() {
    var input = $("#productNameInput").val();
    if (input.length >= 1) {
        $.ajax({
            url: "/products/search",
            method: "GET",
            data: {
                productName: input
            },
            success: function(products) {
                $("#productDropdown").empty();
                products.forEach(function(product) {
                    $("#productDropdown").append(
                        $("<option>").val(product.id).text(product.productName).data("product", product)
                    );
                });
                // Show the dropdown after populating
                $("#productDropdown").show();
            },
            error: function(xhr, status, error) {
                console.error("Error fetching products:", error);
            }
        });
    } else {
        // Hide the dropdown if input is empty
        $("#productDropdown").empty().hide();
    }
}

// Event listener for change in productDropdown to handle product selection
$("#productDropdown").on("change", function() {
    var selectedOption = $("#productDropdown option:selected"); // Get selected option
    if (selectedOption.length === 0) {
        console.error("No product is selected.");
        return;
    }

    var selectedProductId = selectedOption.val();
    var selectedProduct = selectedOption.data("product");

    // Check if the selected product is defined
    if (selectedProduct) {
        const productId = selectedProduct.id;
        document.getElementById('productNameInputId').value = productId;

        $("#productNameInput").val(selectedProduct.productName);
        addRow(selectedProduct);
        // Hide the dropdown after selection
        $("#productDropdown").hide();
    } else {
        console.error("Selected product is undefined or null.");
    }
});

// Event listener for keyup in productNameInput to trigger product search
$("#productNameInput").on("keyup", function() {
    searchProducts();
});



var rowCount = $("#productTableBody tr").length;

function addRow(product) {
	  var tableBody = $("#productTableBody");
	    var newRow = $("<tr>").attr("id", "row_" + rowCount).addClass("productEntry").data("product", product);

	    newRow.append($("<td>").text(rowCount)); // Sr. No
	    rowCount++;

	newRow.append($("<td>").text(product.productName)); // Item Name
	var batchAndPacking = product.batchNo + " / " + product.packing;
	newRow.append($("<td>").text(batchAndPacking));

	  var quantityCell = $("<td>");
	    var quantityInput = $("<input>")
	        .attr("type", "text")
	        .attr("id", "quantityInput_" + rowCount) // Unique ID
	        .addClass("form-control quantity-input")
	        .attr("style", "width: 100px;")
	        .val("")
	        .on("input", function() {
	            var enteredQuantity = parseFloat($(this).val()) || 0;
	            product.quantity = enteredQuantity;
	            updateProductRow(newRow, product);
	        });
	    quantityCell.append(quantityInput);
	    newRow.append(quantityCell);

	    newRow.append($("<td>").text(product.expiryDate)); // Exp.

	    var priceCell = $("<td>");
	    var priceInput = $("<input>")
	        .attr("type", "text")
	        .attr("id", "priceInput_" + rowCount) // Unique ID
	        .addClass("form-control price-input")
	        .attr("style", "width: 100px;")
	        .val(product.mrp)
	        .on("input", function() {
	            var enteredPrice = parseFloat($(this).val()) || 0;
	            product.mrp = enteredPrice;
	            updateProductRow(newRow, product);
	        });
	    priceCell.append(priceInput);
	    newRow.append(priceCell);

	    var discountCell = $("<td>");
	    var discountSelect = $("<select>")
	        .attr("id", "discountSelect_" + rowCount) // Unique ID
	        .addClass("form-control discount-select")
	        .attr("style", "width: 100px;")
	        .on("change", function() {
	            var selectedDiscount = parseFloat($(this).val()) || 0;
	            product.discountPercentage = selectedDiscount;
	            updateProductRow(newRow, product);
	        });
	    
	    discountSelect.append($("<option>").val(0).text("0%"));
    discountSelect.append($("<option>").val(5).text("5%"));
    discountSelect.append($("<option>").val(10).text("10%"));
    discountSelect.append($("<option>").val(15).text("15%"));
    discountSelect.append($("<option>").val(20).text("20%"));
    discountSelect.append($("<option>").val(25).text("25%"));
    discountSelect.append($("<option>").val(30).text("30%"));
    discountCell.append(discountSelect);
    newRow.append(discountCell); // Append discount select cell

	newRow.append($("<td>").text(product.netAmount)); // Net Amount
	newRow.append($("<td>").text(product.amount)); // Amount

	newRow.append($("<td>").text(product.igst)); // IGST
	newRow.append($("<td>").text(product.sgstAmount)); // SGST Amount
	newRow.append($("<td>").text(product.cgstAmount)); // CGST Amount
	
	newRow.append($("<input>")
		    .attr("type", "hidden")
		    .attr("id", `productId_${rowCount}`)
		    .attr("name", `productIds[${rowCount}]`) // Use an array notation for form submission
		    .val(product.id));




	// Append the row to the table body
	tableBody.append(newRow);

	 bindExternalInputs(newRow);
	 clearInputFields();
}

function bindExternalInputs(newRow) {
    var quantityInput = newRow.find(".quantity-input");
    var priceInput = newRow.find(".price-input");
    var discountSelect = newRow.find(".discount-select");

    $("#quantityInput").off("input").on("input", function() {
        var enteredQuantity = parseFloat($(this).val()) || 0;
        var rowId = quantityInput.closest("tr").attr("id");
        $("#"+rowId+" .quantity-input").val(enteredQuantity); // Update the specific row's quantity input field
        var product = newRow.data("product");
        product.quantity = enteredQuantity;
        updateProductRow(newRow, product);
    });

    $("#priceInput").off("input").on("input", function() {
        var enteredPrice = parseFloat($(this).val()) || 0;
        var rowId = priceInput.closest("tr").attr("id");
        $("#"+rowId+" .price-input").val(enteredPrice); // Update the specific row's price input field
        var product = newRow.data("product");
        product.mrp = enteredPrice;
        updateProductRow(newRow, product);
    });

    $("#discountDropdown").off("change").on("change", function() {
        var selectedDiscount = parseFloat($(this).val()) || 0;
        var rowId = discountSelect.closest("tr").attr("id");
        $("#"+rowId+" .discount-select").val(selectedDiscount); // Update the specific row's discount select field
        var product = newRow.data("product");
        product.discountPercentage = selectedDiscount;
        updateProductRow(newRow, product);
    });
}

function clearInputFields() {
    $("#productNameInput").val("");
    $("#productNameInputId").val("");
    $("#quantityInput").val("");
    $("#priceInput").val("");
    $("#discountDropdown").val("");
    $("#productDropdown").empty().hide();

  
}


// Function to update product row based on quantity input and discount
function updateProductRow(newRow, product) {
	var enteredQuantity = parseFloat(product.quantity) || 0;
	var salePrice = parseFloat(product.mrp) || 0;
	var discountPercentage = parseFloat(product.discountPercentage) || 0;

	// Calculate the net amount and amount
	var netAmount = enteredQuantity * salePrice;
	var discountAmount = netAmount * discountPercentage / 100;
	var amount = netAmount - discountAmount;

	// Update the corresponding cells in the row
	newRow.children().eq(6).text(discountPercentage.toFixed(2)); // Disc%
	newRow.children().eq(7).text(netAmount.toFixed(2)); // Net Amount
	newRow.children().eq(8).text(amount.toFixed(2)); // Amount

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
function sendDataToBackend() {
    // Collect data from the form, including the dynamically created inputs
    var dataToSend = {
        customerBill: {
            customerId: $("#customerNameInputId").val(),
            amount: parseFloat($("#totalAmountInput").val()),
            paidAmount: parseFloat($("#paidAmountInput").val()),
            remainingAmount: parseFloat($("#remainingAmountInput").val()),
            onlinePayment: parseFloat($("#onlinePayment").val()),
            cashPayment: parseFloat($("#cashPayment").val()),
            payStatus: $("#paymentStatus").text().trim(),
            date: $("input[name='date']").val(),
            nextPaymentStatus: $("#nextpaymentstatus").val().trim()
        },
        customerHistory: []
    };

    $(".productEntry").each(function(index, element) {
        var productId = $(`#productId_${index}`).val();
        console.log(`Row ${index} - Product ID: ${productId}`);
        dataToSend.customerHistory.push({
            customerId: $("#customerNameInputId").val(),
            productId: productId,
            date: $("input[name='date']").val(),
            amount: parseFloat($(`#totalAmountInput${index}`).val()),
            quantity: parseFloat($(`#quantityInput${index}`).val())
        });
    });

    console.log("Data to send:", dataToSend);

    $.ajax({
        url: "/customer/addBill",
        method: "POST",
        contentType: "application/json",
        data: JSON.stringify(dataToSend),
        success: function(response) {
            console.log("Data sent successfully:", response);
        },
        error: function(xhr, status, error) {
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
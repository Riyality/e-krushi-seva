
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>" rel="stylesheet">

<style>
/* Custom styles for the form */
.form-container {
    margin-top: -20px;
}

.form-container .form-group {
    display: flex;
    align-items: center;
    margin-right: 10px;
    margin-top: 10px;
    margin-bottom: -0px;
}

.form-container .form-group label {
    margin-right: 5px; /* Adjust the margin as needed for spacing */
}

#productNameInput {
    width: 150px;
}

#productDropdown {
    position: absolute;
    width: 150px; /* Match the width of the input field */
    z-index: 1000;
    display: none;
    border: 1px solid #ccc;
    background-color: #fff;
}

.search-container {
    position: relative;
    width: 150px; /* Match the width of the input field */
}

#product {
    margin-left: 20px !important;
   
}

.supplier{
 margin-left: -74px !important;
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

.mb-1{

  font-size: 14px !important ;
  color: #1e293b !important;
  font-weight: 600 !important;
}

#customerDropdown {
    position: absolute;
    top: 100%;
    left: 0;
    width: 100%;
    z-index: 1000;
    border: 1px solid #ccc;
    background-color: #fff;
}

.supplier .form-control {
    width: 160px;
}

.supplier .form-group {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

.supplier label {
    width: 100px; /* Adjust this width to ensure labels are aligned */
}
.form-container label{
 margin-top: 8px !important;
}

#customerNameInput::placeholder {
    color: #c4cacf !important;
    padding-bottom: 12px !important;
    font-size: 12px !important; 
}


#productNameInput::placeholder{
  color: #c4cacf !important;
   padding-bottom: 8px !important;
   font-size: 12px !important;
    
}
.form-control ::placeholder{
 
 padding-bottom: 8px !important;
} 


#orderDate{
 font-size: 15px !important;
  color: #c4cacf !important;
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
                                        <img src='<c:url value="/resources/assets/img/logos/logo.png"/>' width="120px" style="margin-top: -26px; margin-left: -73px !important;" alt="logo">
                                    </a>
                                   <div class="row mt-0 border-end supplier">
    <div class="col-xl-6">
        <!-- Supplier Name -->
        <div class="d-flex align-items-center mb-2">
            <label for="customerNameInput" class="mb-1 fs-14 me-2">SupplierName:</label>
            <div style="position: relative;">
                <input type="text" class="form-control" placeholder="Search Supplier" id="customerNameInput" style="width: 160px;" onkeyup="searchSuppliers()">
                <input type="hidden" id="customerNameInputId" name="supplierId">
                <select id="customerDropdown" size="5" class="form-control" style="width: 160px; border: none; position: absolute; top: 100%; display: none;"></select>
            </div>
        </div>

        <!-- Mobile No -->
        <div class="d-flex align-items-center mb-2">
            <label for="mobileNo" class="mb-1 fs-14 me-2">Mobile No:</label>
            <p id="mobileNo" class="mb-1 fs-14"></p>
        </div>

        <!-- Address -->
        <div class="d-flex align-items-center mb-2">
            <label for="address" class="mb-1 fs-14 me-2">Address :</label>
            <p id="address" class="mb-1 fs-14"></p>
        </div>
    </div>
</div>


                                </div>

                                <!-- Bill Information -->
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 ms-auto mt-sm-0">
                                    <div class="row gy-2" style="margin-top: 90px;">
                                        <div class="col-xl-12 px-0">
                                          <div class="form-group mb-1 d-flex align-items-center">
                                                <label for="orderno" class="mb-0 fs-14 me-2" style="margin-right: 27px !important;">Order No:</label>
                                                <input type="text" id="orderNumberInput" class="form-control fw-semibold fs-14"  name="orderNumber" style="width: 160px; margin-right: 30px !important;">
                                            </div>
                                        
                                            <div class="form-group mb-1 d-flex align-items-center">
                                                <label for="orderDate" class="mb-0 fs-14 me-2" style="margin-right: 15px !important;">Order Date:</label>
                                                <input type="date" name="date" id="orderDate" class="form-control fw-semibold fs-14" style="width: 160px; margin-right: 10px;">
                                            </div>
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <hr class="pb-2">

                            <!-- Product Search and Details -->
                           <div class="form-container">
    <div class="row align-items-center">
        <!-- Column for Product Search -->
        <div class="col-auto">
            <div class="form-group">
                <label for="productNameInput" id="product">Product:</label>
                <div class="search-container">
                    <input type="text" id="productNameInput" class="form-control" placeholder="Search Products" style="width: 150px;" onkeyup="searchProducts()">
                    <input type="hidden" id="productNameInputId" name="productId">
                    <!-- Dropdown menu to display search results -->
                    <select id="productDropdown" class="form-control" size="5"></select>
                </div>
            </div>
        </div>

        <!-- Column for Quantity Input -->
        <div class="col-auto">
            <div class="form-group">
                <label for="quantityInput">Qty:</label>
                <input type="text" id="quantityInput" name="quantity" class="form-control" style="width: 160px;">
            </div>
        </div>

        <!-- Column for Price Input -->
        <div class="col-auto">
            <div class="form-group">
                <label for="priceInput">Price:</label>
                <input id="priceInput" type="text" class="form-control" style="width: 160px;">
            </div>
        </div>

        <!-- Column for Discount Dropdown -->
        <div class="col-auto">
            <div class="form-group">
                <label for="discountDropdown">Discount:</label>
                <select id="discountDropdown" class="form-control" style="width: 160px; font-size: 12px !important;">
                    <option value="" id="placeholder">Select Discount</option>
                    <option value="5">5%</option>
                    <option value="10">10%</option>
                    <option value="15">15%</option>
                    <option value="20">20%</option>
                    <option value="25">25%</option>
                    <option value="30">30%</option>
                </select>
            </div>
        </div>

        <!-- Column for Add Button -->
        <div class="col-auto">
            <div class="form-group">
                <button type="button" id="addButton" class="btn btn-primary btn-sm">Add</button>
            </div>
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
                                                <th>Discount %</th>
                                                <th>Purchase Price.</th>
                                                <th>Total Amount </th>
                                                <th>BarCode</th>
                                                <th>MRP</th>
                                                <th>Discount Amount</th>
                                                  <th>Action</th>
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
                                                                                <input style="width: 130px;" name="cashPayment" id="cashPayment" class="mb-3 fw-semibold fs-14 form-control">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row" class="pr-3">
                                                                                <div class="fw-semibold">Online payment:</div>
                                                                            </th>
                                                                            <td class="pl-3">
                                                                                <input style="width: 130px;" name="onlinePayment" id="onlinePayment" class="mb-3 fw-semibold fs-14 form-control">
                                                                            </td>
                                                                        </tr>
                                                                       
                                                                        <tr id="totalAmountRow">
                                                                            <th scope="row" class="pr-3">
                                                                                <div class="fs-14 fw-semibold">Total :</div>
                                                                            </th>
                                                                            <td class="pl-3">
                                                                                <p id="totalAmountValue" name="amount"></p>
                                                                                <!-- Add an input field to store the total amount -->
                                                                                <input type="hidden" id="totalAmountInput" name="totalAmount" class="form-control" value="">
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
                                                                                <input id="paidAmountInput" name="paidAmount" style="width: 130px;" class="form-control" type="text" readonly>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">
                                                                                <div class="fw-semibold">Remaining Amount :</div>
                                                                            </th>
                                                                            <td>
                                                                                <input id="remainingAmountInput" name="remainingAmount" class="form-control" style="width: 130px;" type="text">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">
                                                                                <div class="fw-semibold">Payment Status</div>
                                                                            </th>
                                                                            <td>
                                                                                <div id="paymentStatus" name="payStatus" class="mb-3 p-1 form-control" style="width: 130px;"></div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">
                                                                                <div class="fs-14 fw-semibold">Next Payment Status :</div>
                                                                            </th>
                                                                            <td>
                                                                                <input id="nextpaymentstatus" class="form-control" style="width: 132px !important;" type="date" name="nextPaymentStatus" />
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    // Function to search products based on input
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
                    $("#productDropdown").show(); // Show the dropdown after populating
                },
                error: function(xhr, status, error) {
                    console.error("Error fetching products:", error);
                }
            });
        } else {
            $("#productDropdown").empty().hide(); // Hide the dropdown if input is empty
        }
    }

   
   
    $("#productNameInput").on("keyup", function() {
        searchProducts();
    });

    // Event listener for changing selection in product dropdown
    $("#productDropdown").on("change", function() {
        var selectedOption = $(this).find("option:selected");
        if (selectedOption.length > 0) {
            var selectedProduct = selectedOption.data("product");
            if (selectedProduct) {
                $("#productNameInput").val(selectedProduct.productName); // Set the selected product name in the input field
                $("#priceInput").val(selectedProduct.mrp); // Set the price input field using mrp
                $("#productDropdown").hide(); // Hide the dropdown
            }
        }
    });

    $("#addButton").on("click", function() {
        var selectedOption = $("#productDropdown option:selected");
        if (selectedOption.length === 0) {
            console.error("No product is selected.");
            return;
        }

        var selectedProduct = selectedOption.data("product");

        if (selectedProduct) {
            // Set entered quantity to product quantity
            var enteredQuantity = parseFloat($("#quantityInput").val()) || 0;

            // Set entered price to product price
            var enteredPrice = parseFloat($("#priceInput").val()) || 0;
            selectedProduct.mrp = enteredPrice;

            // Set selected discount to product discount
            var selectedDiscount = parseFloat($("#discountDropdown").val()) || 0;
            selectedProduct.discountPercentage = selectedDiscount;

            // Set product name in input field
            $("#productNameInput").val(selectedProduct.productName);

            // Calculate total amount based on quantity, price, and discount
            selectedProduct.quantity = enteredQuantity;
            selectedProduct.amount = enteredQuantity * enteredPrice;
            var discountedAmount = selectedProduct.amount - (selectedProduct.amount * (selectedDiscount / 100));
            selectedProduct.amount = discountedAmount;

            addRow(selectedProduct);
            $("#productDropdown").hide(); // Hide the dropdown after adding to table

            clearInputFields(); // Clear input fields after adding the product
        } else {
            console.error("Selected product is undefined or null.");
        }
    });


    function addRow(product) {
        var tableBody = $("#productTableBody");
        var rowCount = tableBody.find("tr").length + 0; // Calculate the row count dynamically

        var newRow = $("<tr>").attr("id", "row_" + rowCount).addClass("productEntry").data("product", product);

        newRow.append($("<td>").text(rowCount)); // Sr. No
        newRow.append($("<td>").text(product.productName)); // Item Name
        newRow.append($("<td>").text(product.batchNo + " / " + product.packing)); // Batch No / Pack

        var quantityCell = $("<td>");
        var quantityInput = $("<input>")
            .attr("type", "text")
            .attr("id", "quantityInput_" + rowCount)
            .addClass("form-control quantity-input")
            .attr("style", "width: 100px;")
            .val(product.quantity) // Set product quantity
            .on("input", function() {
                var enteredQuantity = parseFloat($(this).val()) || 0;
                product.quantity = enteredQuantity;
                product.amount = enteredQuantity * product.purchasePrice; // Update amount based on new quantity
                updateProductRow(newRow, product);
            });
        quantityCell.append(quantityInput);
        newRow.append(quantityCell); // Quantity

        var discountCell = $("<td>");
        var discountSelect = $("<select>")
            .attr("id", "discountSelect_" + rowCount)
            .addClass("form-control discount-select")
            .attr("style", "width: 100px; font-size: 14px; padding: 2px;")
            .on("change", function() {
                var selectedDiscount = parseFloat($(this).val()) || 0;
                product.discountPercentage = selectedDiscount;
                updateProductRow(newRow, product);
            });

        // Options for discount percentages
        var discountOptions = [
            { value: 0, text: "0%" },
            { value: 5, text: "5%" },
            { value: 10, text: "10%" },
            { value: 15, text: "15%" },
            { value: 20, text: "20%" },
            { value: 25, text: "25%" },
            { value: 30, text: "30%" }
        ];

        // Populate options
        discountOptions.forEach(function(option) {
            discountSelect.append($("<option>").attr("value", option.value).text(option.text));
        });

        // Set initial value
        discountSelect.val(product.discountPercentage); // Set product discount percentage

        discountCell.append(discountSelect);
        newRow.append(discountCell); // Discount %

        var purchasePriceCell = $("<td>");
        var purchasePriceInput = $("<input>")
            .attr("type", "text")
            .attr("id", "purchasePriceInput_" + rowCount)
            .addClass("form-control price-input")
            .attr("style", "width: 100px;")
            .val(product.purchasePrice) // Set product purchase price
            .on("input", function() {
                var enteredPrice = parseFloat($(this).val()) || 0;
                product.purchasePrice = enteredPrice;
                product.amount = product.quantity * enteredPrice; // Update amount based on new price
                updateProductRow(newRow, product);
            });
        purchasePriceCell.append(purchasePriceInput);
        newRow.append(purchasePriceCell); // Purchase Price

        newRow.append($("<td>").addClass("total-amount")); // Total Amount

        newRow.append($("<td>").text(product.barCode)); // BarCode
        newRow.append($("<td>").text(product.mrp)); // MRP

        newRow.append($("<td>").addClass("discount-amount")); // Discount Amount

        // Action - Delete button
        var deleteButton = $("<button>")
            .addClass("btn btn-danger btn-sm")
            .text("Delete")
            .on("click", function() {
                newRow.remove(); // Remove the row from the table
                // Optionally, you can perform additional cleanup or update actions here
            });
        var deleteCell = $("<td>").append(deleteButton);
        newRow.append(deleteCell);

        newRow.append($("<input>")
            .attr("type", "hidden")
            .attr("id", `productId_${rowCount}`)
            .attr("name", `productIds[${rowCount}]`)
            .val(product.id));

        tableBody.append(newRow);

        updateProductRow(newRow, product); // Update row initially after adding
    }

    function updateProductRow(row, product) {
        var quantity = parseFloat(product.quantity) || 0;
        var purchasePrice = parseFloat(product.purchasePrice) || 0;
        var discountPercentage = parseFloat(product.discountPercentage) || 0;

        // Calculate total amount and discount amount
        var totalAmount = quantity * purchasePrice;
        var discountAmount = totalAmount * (discountPercentage / 100);
        var netAmount = totalAmount - discountAmount;

        // Update row with calculated values
        row.find(".total-amount").text(totalAmount.toFixed(2));
        row.find(".discount-amount").text(discountAmount.toFixed(2));
        row.find(".discount-input").val(discountPercentage); // Update the discount input field in the row

        updateTotalAmount(); // Update the total amount if necessary
    }

    function clearInputFields() {
        $("#productNameInput").val("");
        $("#quantityInput").val("");
        $("#priceInput").val("");
        $("#discountInput").val("");
        $("#productDropdown").empty().hide();
    }


    function calculateRemainingAmount() {
        var totalAmount = parseFloat($("#totalAmountValue").text().replace('$', '').replace(',', '')) || 0;
        var onlinePayment = parseFloat($("#onlinePayment").val()) || 0;
        var cashPayment = parseFloat($("#cashPayment").val()) || 0;

        var paidAmount = onlinePayment + cashPayment;

        if (paidAmount > totalAmount) {
            paidAmount = totalAmount;
            $("#onlinePayment").val(paidAmount.toFixed(2));
            $("#cashPayment").val("0.00");
            alert("Paid amount cannot exceed the total amount.");
        }

        var remainingAmount = totalAmount - paidAmount;

        $("#paidAmountInput").val(paidAmount.toFixed(2));
        $("#remainingAmountInput").val(remainingAmount.toFixed(2));

        // Update payment status
        var paymentStatus = remainingAmount === 0 ? "Paid" : "Pending";
        $("#paymentStatus").text(paymentStatus);
    }

    // Event listener for online payment input
    $("#onlinePayment, #cashPayment").on("input", function() {
        calculateRemainingAmount();
    });

    // Function to update total amount and total discount
    function updateTotalAmount() {
        var totalPurchasePrice = 0;

        // Iterate through each row in tbody to calculate total purchase price minus discount
        $("#productTableBody tr").each(function() {
            var row = $(this);
            var quantity = parseFloat(row.find(".quantity-input").val()) || 0;
            var purchasePrice = parseFloat(row.find(".price-input").val()) || 0;
            var discountPercentage = parseFloat(row.find(".discount-select").val()) || 0;

            var amount = quantity * purchasePrice;
            var discountAmount = amount * (discountPercentage / 100);

            totalPurchasePrice += amount - discountAmount;
        });

        $("#totalAmountValue").text(totalPurchasePrice.toFixed(2));
        $("#totalAmountInput").val(totalPurchasePrice.toFixed(2));

        calculateRemainingAmount(); // Recalculate remaining amount after updating total amount
    }

});
</script>

<script>
	// Function to handle search and display customers
	function searchSuppliers() {
    var name = $("#customerNameInput").val();
    if (name.length >= 1) {
        $.ajax({
            url: "/suppliers/search",
            method: "GET",
            data: {
                name: name
            },
            success: function(suppliers) {
                console.log(suppliers);

                $("#customerDropdown").empty();
                suppliers.forEach(function(supplier) {
                    $("#customerDropdown").append(
                        $("<option>").val(supplier.id).text(supplier.name).data("supplier", supplier)
                    );
                });
                // Show the dropdown after populating
                $("#customerDropdown").show();
            },
            error: function(err) {
                console.error("Error fetching suppliers:", err);
            }
        });
    } else {
        // Hide the dropdown if input is empty
        $("#customerDropdown").empty().hide();
    }
}

function selectSupplier() {
    var selectedSupplier = $("#customerDropdown").find(':selected').data('supplier');

    if (selectedSupplier) {
        const supplierId = selectedSupplier.id;
        document.getElementById('customerNameInputId').value = supplierId;

        console.log('Supplier ID:', supplierId);
        console.log('Type of Supplier ID:', typeof supplierId);

        $("#customerNameInput").val(selectedSupplier.name);
        $("#mobileNo").text(selectedSupplier.contact);
        $("#address").text(selectedSupplier.address);
        // Hide the dropdown after selection
        $("#customerDropdown").hide();
    }
}

// Bind the change event handler to the dropdown
$("#customerDropdown").change(selectSupplier);


</script>
<script>
function sendDataToBackend() {
    // Collect data from the form, including the dynamically created inputs
    var dataToSend = {
        purchaseBill: {
            supplierId: parseInt($("#customerNameInputId").val()), // Ensure supplierId is parsed as an integer
            orderNumber: $("#orderNumberInput").val(),
            amount: parseFloat($("#totalAmountInput").val()),
            paidAmount: parseFloat($("#paidAmountInput").val()),
            remainingAmount: parseFloat($("#remainingAmountInput").val()),
            onlinePayment: parseFloat($("#onlinePayment").val()),
            cashPayment: parseFloat($("#cashPayment").val()),
            payStatus: $("#paymentStatus").text().trim(),
            date: $("input[name='date']").val(),
            nextPaymentStatus: $("#nextpaymentstatus").val().trim()
        },
        supplierHistory: []
    };

    // Iterate over each product entry to collect the product IDs and other details
    $(".productEntry").each(function(index, element) {
        var productId = $(this).find("input[type='hidden']").val();
        var quantity = parseFloat($(this).find(".quantity-input").val());
        var amount = parseFloat($(this).find(".total-amount").text());

        if (productId && !isNaN(quantity) && !isNaN(amount)) {
            dataToSend.supplierHistory.push({
                supplierId: parseInt($("#customerNameInputId").val()), // Ensure supplierId is parsed as an integer
                productId: productId,
                date: $("input[name='date']").val(),
                quantity: quantity,
                amount: amount
            });
        }
    });

    console.log("Data to send:", dataToSend);

    // Send data to the backend via AJAX
    $.ajax({
        url: "/suppliers/add",
        method: "POST",
        contentType: "application/json",
        data: JSON.stringify(dataToSend),
        success: function(response) {
            console.log("Data sent successfully:", response);
            // Optionally, you can handle success actions here, like displaying a success message
        },
        error: function(xhr, status, error) {
            console.error("Error sending data:", error);
            console.log("Server response:", xhr.responseText); // Log server response for detailed error
            // Handle errors appropriately, such as displaying an error message
        }
    });
}



// Event listener for form submission
$('#myreceiptForm').submit(function(event) {
    event.preventDefault();
    sendDataToBackend();
});



</script>

<jsp:include page="../modules/footer.jsp" />
	
	

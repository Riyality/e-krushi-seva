<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />

<link href="<c:url value='/resources/assets/css/custom.css'/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">

<style>
label {
	font-weight: 600 !important;
}

.edit-mode input, .edit-mode select {
	width: 100%;
	border: 1px solid #ced4da;
	padding: 5px 8px;
	border-radius: 4px;
	box-sizing: border-box;
}

.input-group {
	display: flex;
	align-items: center;
}

.input-group>* {
	margin-right: 10px;
}

.form-group.d-flex {
	display: flex;
	align-items: center;
}
</style>

<div class="main-content app-content">
	<div class="container-fluid my-5">
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Bill Details</div>
						<button class="btn btn-primary btn-sm" onclick="toggleEditMode()">Edit</button>
					</div>
					<form action="/borrow/update" method="POST">
						<div class="card-body">
							<!-- Profile Section -->
							<div class="profile">
								<h5>
									<i class="fas fa-user-circle"></i>
								</h5> <input type="hidden" name="billId" value="${bill.id}">
								   <input type="hidden" name="id" value="${bill.id}"> <!-- Ensure this field is present and populated -->
								 <input type="hidden" name="customerId" value="${bill.customerId.customer_ID}">
								<div class="row mb-3">
									<div class="col-md-6">
										<div class="form-group">
											<label for="customerName">Customer Name:</label> <span
												id="customerNamePlain">${bill.customerId.customer_name}</span>
											<input type="hidden" name="customerName" id="customerName"
												class="form-control d-none edit-mode"
												value="${bill.customerId.customer_name}" readonly>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="totalAmount">Total Amount:</label> <span
												id="totalAmountPlain">${bill.amount}</span> <input
												type="hidden" name="amount" id="totalAmount"
												class="form-control d-none edit-mode" value="${bill.amount}"
												readonly>
										</div>
									</div>
								</div>

								<!-- Additional Fields initially hidden -->
								<div id="additionalFields" class="d-none">
									<div class="row mb-3">
										<div class="col-md-3">
											<div class="form-group d-flex align-items-center">
												<label for="remainingAmount" class="mr-2">Remaining
													Amount:</label> <span class="plain-text" id="remainingAmount_Plain">${bill.remainingAmount}</span>
												<input type="text" name="remainingAmount"
													id="remainingAmount" class="form-control d-none edit-mode"
													value="${bill.remainingAmount}" readonly>
											</div>
										</div>

										<div class="col-md-3">
											<div class="form-group d-flex align-items-center">
												<label for="onlinePayment" class="mr-2">Online Paid:</label>
												<span class="plain-text" id="onlinePayment_Plain">${bill.onlinePayment}</span>
												<input type="text" id="online_Payment"
													class="form-control d-none" value="${bill.onlinePayment}"
													oninput="updateOnlinePayment()">
											</div>
										</div>

										<div class="col-md-3">
											<div class="form-group d-flex align-items-center">
												<label for="cashPayment" class="mr-2">Cash Paid:</label> <span
													class="plain-text" id="cashPayment_Plain">${bill.cashPayment}</span>
												<input type="text" id="cash_Payment"
													class="form-control d-none" value="${bill.cashPayment}"
													oninput="updateCashPayment()">
											</div>
										</div>
									</div>
								</div>

								<hr />
								<!-- Product Details Section -->
								<div class="product-details">
									<h6>Borrowing Details</h6>
									<div class="row mb-3">
										<div class="col-md-4">
											<div class="form-group d-flex align-items-center">
												<label for="onlinePayment" class="mr-2">Online Paid:</label>
												<div class="input-group">
													<span class="plain-text" id="onlinePaymentPlain">${bill.onlinePayment}</span>
													<input type="text" name="online_Payment" id="onlinePayment"
														class="form-control d-none edit-mode"
														value="${isEditMode ? 0 : bill.onlinePayment}"
														oninput="updateOnlinePayment()">
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group d-flex align-items-center">
												<label for="cashPayment" class="mr-2">Cash Paid:</label>
												<div class="input-group">
													<span class="plain-text" id="cashPaymentPlain">${bill.cashPayment}</span>
													<input type="text" name="cash_Payment" id="cashPayment"
														class="form-control d-none edit-mode"
														value="${isEditMode ? 0 : bill.cashPayment}"
														oninput="updateCashPayment()">
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group d-flex align-items-center">
												<label for="payStatus" class="mr-2">Pay Status:</label> <select
													name="payStatus" id="payStatus"
													class="form-control d-none edit-mode">
													<option value="Paid"
														${bill.payStatus == 'Paid' ? 'selected' : ''}>Paid</option>
													<option value="Pending"
														${bill.payStatus == 'Pending' ? 'selected' : ''}>Pending</option>
												</select> <span class="plain-text" id="payStatusPlain">${bill.payStatus}</span>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group d-flex align-items-center">
												<label for="billDate" class="mr-2">Bill Date:</label>
												<div class="input-group">
													<span class="plain-text" id="billDatePlain">${bill.date}</span>
													<input type="date" name="billDate" id="billDate"
														class="form-control d-none edit-mode" value="${bill.date}">
												</div>
											</div>
										</div>
									 <div class="col-md-4">
                                            <div class="form-group d-flex align-items-center">
                                                <label for="nextPaymentStatus" class="mr-2">Next Payment Status:</label>
                                                <div class="input-group">
                                                    <span class="plain-text" id="nextPaymentStatusPlain">${bill.nextPaymentStatus}</span>
                                                    <input type="date" name="nextPaymentStatus" id="nextPaymentStatus"
                                                        class="form-control d-none edit-mode"
                                                        value="${bill.nextPaymentStatus}">
                                                </div>
                                            </div>
                                        </div>

									</div>
								</div>
							</div>
							<div class="card-footer text-right">
								<button type="submit" class="btn btn-primary">Save</button>
								<a href="javascript:window.history.back();"
									class="btn btn-secondary">Cancel</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
    let initialOnlinePayment = parseFloat('${bill.onlinePayment}') || 0;
    let initialCashPayment = parseFloat('${bill.cashPayment}') || 0;
    let isEditMode = false;

    function updateOnlinePayment() {
        let onlinePaymentField = document.getElementById("onlinePayment");
        let onlinePayment = parseFloat(onlinePaymentField.value) || 0;
        let totalOnlinePayment = initialOnlinePayment + onlinePayment;
        document.getElementById("onlinePaymentPlain").innerText = totalOnlinePayment.toFixed(2);
    }

    function updateCashPayment() {
        let cashPaymentField = document.getElementById("cashPayment");
        let cashPayment = parseFloat(cashPaymentField.value) || 0;
        let totalCashPayment = initialCashPayment + cashPayment;
        document.getElementById("cashPaymentPlain").innerText = totalCashPayment.toFixed(2);
    }

    function toggleEditMode() {
        isEditMode = !isEditMode;
        const form = document.querySelector('form');

        // Toggle edit-mode class and readonly attribute for fields in Product Details Section
        form.querySelectorAll('.product-details .edit-mode').forEach(input => {
            if (input.tagName === 'SELECT') {
                input.disabled = !isEditMode;
            } else {
                input.readOnly = !isEditMode;
            }
            input.classList.toggle('d-none', !isEditMode);
            if (isEditMode && (input.id === 'onlinePayment' || input.id === 'cashPayment')) {
                input.value = '0';
            }
        });

        // Toggle visibility of plain-text spans for fields in Product Details Section
        form.querySelectorAll('.product-details .plain-text').forEach(span => {
            span.classList.toggle('d-none', isEditMode);
        });

        // Toggle visibility of additional fields
        const additionalFields = document.getElementById('additionalFields');
        additionalFields.classList.toggle('d-none', !isEditMode);
    }

    document.addEventListener('DOMContentLoaded', function () {
        // Initially hide all edit-mode inputs and additional fields
        const form = document.querySelector('form');
        form.querySelectorAll('.edit-mode').forEach(input => {
            if (input.tagName === 'SELECT') {
                input.disabled = true;
            } else {
                input.classList.add('d-none');
            }
        });
        document.getElementById('additionalFields').classList.add('d-none');
    });
</script>

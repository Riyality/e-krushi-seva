<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../modules/header.jsp" />

<link href="<c:url value='/resources/assets/css/custom.css'/>" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<!-- Start::app-content -->
<style>
    label {
        font-weight: 600 !important;
    }
    .edit-mode input {
        width: 100%; /* Full width within the column */
        border: 1px solid #ced4da;
        padding: 5px 8px;
        border-radius: 4px;
        box-sizing: border-box; /* Ensures padding and border are included in width */
    }
    .input-group {
        display: flex;
        align-items: center;
    }
    .input-group > * {
        margin-right: 10px;
    }
    .form-group.d-flex {
        display: flex;
        align-items: center;
    }
</style>
<div class="main-content app-content">
    <div class="container-fluid my-5">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card">
                    <div class="card-header justify-content-between">
                        <div class="card-title">Bill Details</div>
                        <!-- Edit button -->
                        <button class="btn btn-primary btn-sm" onclick="toggleEditMode()">Edit</button>
                    </div>
                    <form action="/borrow/update" method="POST"> <!-- Replace with your actual action URL -->
                        <div class="card-body">
                            <!-- Part 1: Profile Section -->
                            <div class="profile">
                                <h5><i class="fas fa-user-circle"></i></h5>
                                <input type="hidden" name="id" value="${bill.id}">
                                <input type="hidden" name="customerId" value="${bill.customerId.customer_ID}">
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="customerName">Customer Name:</label>
                                            <span id="customerNamePlain">${bill.customerId.customer_name}</span>
                                           <input type="hidden" name="customerName" id="customerName" class="form-control d-none edit-mode" value="${bill.customerId.customer_name}">
                                         </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="totalAmount">Total Amount:</label>
                                            <span id="totalAmountPlain">${bill.amount}</span>
                                            <input type="hidden" name="amount" id="totalAmount" class="form-control d-none edit-mode" value="${bill.amount}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <!-- Part 2: Product Details Section -->
                            <div class="product-details">
                                <h6>Borrowing Details</h6>
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <div class="form-group d-flex align-items-center">
                                            <label for="paidAmount" class="mr-2">Paid Amount:</label>
                                            <div class="input-group">
                                                <span class="plain-text" id="paidAmountPlain">${bill.paidAmount}</span>
                                                <input type="text" name="paidAmount" id="paidAmount" class="form-control d-none edit-mode" value="${bill.paidAmount}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group d-flex align-items-center">
                                            <label for="remainingAmount" class="mr-2">Remaining Amount:</label>
                                            <div class="input-group">
                                                <span class="plain-text" id="remainingAmountPlain">${bill.remainingAmount}</span>
                                                <input type="text" name="remainingAmount" id="remainingAmount" class="form-control d-none edit-mode" value="${bill.remainingAmount}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group d-flex align-items-center">
                                            <label for="onlinePayment" class="mr-2">Online Paid:</label>
                                            <div class="input-group">
                                                <span class="plain-text" id="onlinePaymentPlain">${bill.onlinePayment}</span>
                                                <input type="text" name="onlinePayment" id="onlinePayment" class="form-control d-none edit-mode" value="${bill.onlinePayment}" oninput="updateOnlinePayment()">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <div class="form-group d-flex align-items-center">
                                            <label for="cashPayment" class="mr-2">Cash Paid:</label>
                                            <div class="input-group">
                                                <span class="plain-text" id="cashPaymentPlain">${bill.cashPayment}</span>
                                                <input type="text" name="cashPayment" id="cashPayment" class="form-control d-none edit-mode" value="${bill.cashPayment}" oninput="updateCashPayment()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group d-flex align-items-center">
                                            <label for="payStatus" class="mr-2">Pay Status:</label>
                                            <div class="input-group">
                                                <span class="plain-text" id="payStatusPlain">${bill.payStatus}</span>
                                                <input type="text" name="payStatus" id="payStatus" class="form-control d-none edit-mode" value="${bill.payStatus}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group d-flex align-items-center">
                                            <label for="billDate" class="mr-2">Bill Date:</label>
                                            <div class="input-group">
                                                <span class="plain-text" id="billDatePlain">${bill.date}</span>
                                                <input type="text" name="date" id="billDate" class="form-control d-none edit-mode" value="${bill.date}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-4">
                                        <div class="form-group d-flex align-items-center">
                                            <label for="nextPaymentStatus" class="mr-2">Next Payment Status:</label>
                                            <div class="input-group">
                                                <span class="plain-text" id="nextPaymentStatusPlain">${bill.nextPaymentStatus}</span>
                                                <input type="text" name="nextPaymentStatus" id="nextPaymentStatus" class="form-control d-none edit-mode" value="${bill.nextPaymentStatus}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="card-footer text-right">
                            <button type="submit" class="btn btn-success btn-sm">Save</button>
                            <a href="/borrow" class="btn btn-danger btn-sm">Cancel</a>
                        </div>
                        <div class="card-footer d-none border-top-0"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../modules/footer.jsp" />

<script>
    let initialPaidAmount = parseFloat('${bill.paidAmount}') || 0;
    let initialRemainingAmount = parseFloat('${bill.remainingAmount}') || 0;
    let initialOnlinePayment = parseFloat('${bill.onlinePayment}') || 0;
    let initialCashPayment = parseFloat('${bill.cashPayment}') || 0;
    let totalAmount = parseFloat('${bill.amount}') || 0;

    function toggleEditMode() {
        const inputs = document.querySelectorAll('.edit-mode');
        const plainTexts = document.querySelectorAll('.plain-text');

        inputs.forEach(input => input.classList.toggle('d-none'));
        plainTexts.forEach(plainText => plainText.classList.toggle('d-none'));
    }

    function updateOnlinePayment() {
        const onlinePaymentInput = document.getElementById('onlinePayment');
        const onlinePayment = parseFloat(onlinePaymentInput.value) || 0;
        const cashPayment = parseFloat(document.getElementById('cashPayment').value) || 0;
        
        if (onlinePayment + cashPayment > totalAmount) {
            alert('Total paid amount cannot exceed the total amount owed.');
            onlinePaymentInput.value = initialOnlinePayment.toFixed(2);
            return;
        }

        const paidAmountInput = document.getElementById('paidAmount');
        const remainingAmountInput = document.getElementById('remainingAmount');
        const payStatusInput = document.getElementById('payStatus');

        const newPaidAmount = onlinePayment + cashPayment;
        const newRemainingAmount = totalAmount - newPaidAmount;

        paidAmountInput.value = newPaidAmount.toFixed(2);
        remainingAmountInput.value = newRemainingAmount.toFixed(2);

        document.getElementById('paidAmountPlain').innerText = newPaidAmount.toFixed(2);
        document.getElementById('remainingAmountPlain').innerText = newRemainingAmount.toFixed(2);

        if (newRemainingAmount === 0.0) {
            payStatusInput.value = 'Paid';
            document.getElementById('payStatusPlain').innerText = 'Paid';
        } else {
            payStatusInput.value = 'Unpaid';
            document.getElementById('payStatusPlain').innerText = 'Unpaid';
        }

        initialOnlinePayment = onlinePayment;
    }

    function updateCashPayment() {
        const cashPaymentInput = document.getElementById('cashPayment');
        const cashPayment = parseFloat(cashPaymentInput.value) || 0;
        const onlinePayment = parseFloat(document.getElementById('onlinePayment').value) || 0;

        if (onlinePayment + cashPayment > totalAmount) {
            alert('Total paid amount cannot exceed the total amount owed.');
            cashPaymentInput.value = initialCashPayment.toFixed(2);
            return;
        }

        const paidAmountInput = document.getElementById('paidAmount');
        const remainingAmountInput = document.getElementById('remainingAmount');
        const payStatusInput = document.getElementById('payStatus');

        const newPaidAmount = onlinePayment + cashPayment;
        const newRemainingAmount = totalAmount - newPaidAmount;

        paidAmountInput.value = newPaidAmount.toFixed(2);
        remainingAmountInput.value = newRemainingAmount.toFixed(2);

        document.getElementById('paidAmountPlain').innerText = newPaidAmount.toFixed(2);
        document.getElementById('remainingAmountPlain').innerText = newRemainingAmount.toFixed(2);

        if (newRemainingAmount === 0.0) {
            payStatusInput.value = 'Paid';
            document.getElementById('payStatusPlain').innerText = 'Paid';
        } else {
            payStatusInput.value = 'pending';
            document.getElementById('payStatusPlain').innerText = 'pending';
        }

        initialCashPayment = cashPayment;
    }
</script>


<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style>
 
 .whatsapp-link {
    display: inline-block; /* Ensure the link has the appropriate block size */
    text-decoration: none; /* Remove underline */
}

.whatsapp-link i {
    color: #25D366; /* WhatsApp green color */
    font-size: 2em; /* Adjust the size of the icon */
    width: 40px; /* Set sufficient width */
    height: 40px; /* Set sufficient height */
    display: flex; /* Center the icon */
    align-items: center; /* Center the icon vertically */
    justify-content: center; /* Center the icon horizontally */
}
</style>

<!-- Product details modal -->
<div class="modal fade" id="productPopup" tabindex="-1"
	aria-labelledby="productPopupLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="productPopupLabel">Products
					Expiring This Month</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<!-- Use JSTL forEach to iterate over expiringProducts -->
				<c:if test="${fn:length(expiringProducts) > 0}">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Product Name</th>
								<th>Manufacturer</th>
								<th>Item Type</th>
								<th>Packing</th>
								<th>Opening Stock</th>
								<th>ExpiryDate</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${expiringProducts}">
								<tr>
									<td>${product.productName}</td>
									<td>${product.manuFacture.shortName}</td>
									<td>${product.itemType}</td>
									<td>${product.packing}</td>
									<td>${product.openingStock}</td>
									<td>${product.expiryDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${fn:length(expiringProducts) == 0}">
					<p>No products expiring this month.</p>
				</c:if>
			</div>
			<div class="modal-footer">
				<!--  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                 -->
			</div>
		</div>
	</div>
</div>
<!-- End Product details modal -->


<!-- Stock Less Than Two modal -->
<div class="modal fade" id="stockLessThanTwoModal" tabindex="-1"
	aria-labelledby="stockLessThanTwoModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="stockLessThanTwoModalLabel">Products
					with Stock Less Than Two</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<!-- Use JSTL forEach to iterate over products with stock less than two -->
				<c:if test="${fn:length(productsWithStockLessThanTwo) > 0}">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Product Name</th>
								<th>Manufacturer</th>
								<th>Item Type</th>
								<th>Packing</th>
								<th>Current Stock</th>
								<!-- Add more columns as needed -->
							</tr>
						</thead>
						<tbody>
							<c:forEach var="stock" items="${productsWithStockLessThanTwo}">
								<tr>
									<td>${stock.productName}</td>
									<td>${stock.manuFacture.shortName}</td>
									<td>${stock.itemType}</td>
									<td>${stock.packing}</td>
									<td>${stock.openingStock}</td>
									<!-- Add more cells as needed -->
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${fn:length(productsWithStockLessThanTwo) == 0}">
					<p>No products currently have stock less than two.</p>
				</c:if>
			</div>
			<div class="modal-footer">
				<!--  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          -->
			</div>
		</div>
	</div>
</div>
<!-- End Stock Less Than Two modal -->

<!-- //Alredy Expired Products -->
<div class="modal fade" id="expiredProductsPopup" tabindex="-1"
	aria-labelledby="expiredProductsPopupLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="expiredProductsPopupLabel">Products
					Already Expired</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<!-- Use JSTL forEach to iterate over expiredProducts -->
				<c:if test="${fn:length(expiredProducts) > 0}">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Product Name</th>
								<th>Manufacturer</th>
								<th>Item Type</th>
								<th>Packing</th>
								<th>Opening Stock</th>
								<th>Expiry Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="expired" items="${expiredProducts}">
								<tr>
									<td>${expired.productName}</td>
									<td>${expired.manuFacture.shortName}</td>
									<td>${expired.itemType}</td>
									<td>${expired.packing}</td>
									<td>${expired.openingStock}</td>
									<td>${expired.expiryDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${fn:length(expiredProducts) == 0}">
					<p>No products have expired.</p>
				</c:if>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>

<!-- Customer bills paid today modal -->
<div class="modal fade" id="customerBillsPaidTodayModal" tabindex="-1"
	aria-labelledby="customerBillsPaidTodayModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="customerBillsPaidTodayModalLabel">Customer
					Bills Paid Today</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<!-- Use JSTL forEach to iterate over customersPaidToday -->
				<c:if test="${fn:length(customersPaidToday) > 0}">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Customer ID</th>
								<th>Amount</th>
								<th>Paid Amount</th>
								<th>Remaining Amount</th>
								<th>Payment Status</th>
								<th>Date</th>
								<th>Next Payment Status</th>
								<th>Phone</th>
								<th>WhatsApp</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="customerBill" items="${customersPaidToday}">
								<tr>
									<td>${customerBill.customerId.customer_name}</td>
									<td>${customerBill.amount}</td>
									<td>${customerBill.paidAmount}</td>
									<td>${customerBill.remainingAmount}</td>
									<td>${customerBill.payStatus}</td>
									<td>${customerBill.date}</td>
									<td>${customerBill.nextPaymentStatus}</td>
									<td>${customerBill.customerId.mobile_no}</td>

									<!-- WhatsApp message link -->
									<td>
										<%-- <a
										href="https://api.whatsapp.com/send/?phone=${customerBill.customerId.mobile_no}&text=Hello%20${customerBill.customerId.customer_name},%0A%0AYour%20payment%20details%20are%20as%20follows:%0A%0ATotal%20Amount:%20${customerBill.amount}%0APaid%20Amount:%20${customerBill.paidAmount}%0ARemaining%20Amount:%20${customerBill.remainingAmount}%0A%0AThank%20you!"
										target="_blank"> <i class="fab fa-whatsapp"></i>
									</a> --%> <a
    href="https://web.whatsapp.com/send?phone=${customerBill.customerId.mobile_no}&text=Hello%20${customerBill.customerId.customer_name},%0A%0AYour%20payment%20details%20are%20as%20follows:%0A%0ATotal%20Amount:%20${customerBill.amount}%0APaid%20Amount:%20${customerBill.paidAmount}%0ARemaining%20Amount:%20${customerBill.remainingAmount}%0A%0AThank%20you!"
    target="_blank" class="whatsapp-link">
    <i class="fab fa-whatsapp"></i>
</a>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${fn:length(customersPaidToday) == 0}">
					<p>No customer bills paid today.</p>
				</c:if>
			</div>
			<div class="modal-footer">
				<!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
			</div>
		</div>
	</div>
</div>
<!-- End Customer bills paid today modal -->

<div class="modal fade" id="remainingPaymentsModal" tabindex="-1"
	aria-labelledby="remainingPaymentsModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="remainingPaymentsModalLabel">Remaining
					Payments</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<!-- Replace with your table or list to display remaining payments -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Customer ID</th>
							<th>Amount</th>
							<th>Paid Amount</th>
							<th>Remaining Amount</th>
							<th>Payment Status</th>
							<th>Date</th>
							<th>Next Payment Status</th>
						</tr>
					</thead>
					<tbody>
						<!-- Iterate over billsWithRemainingAmount and display each bill -->
						<c:forEach var="bill" items="${billsWithRemainingAmount}">
							<tr>
								<td>${bill.customerId.customer_name}</td>
								<td>${bill.amount}</td>
								<td>${bill.paidAmount}</td>
								<td>${bill.remainingAmount}</td>
								<td>${bill.payStatus}</td>
								<td>${bill.date}</td>
								<td>${bill.nextPaymentStatus}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- Add any additional content or formatting as needed -->
			</div>
			<div class="modal-footer">
				<!-- 
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="supplierRemainingPaymentsModal"
	tabindex="-1" aria-labelledby="supplierRemainingPaymentsModalLabel"
	aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="supplierRemainingPaymentsModalLabel">Supplier
					Remaining Payments</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Supplier Name</th>
							<th>Amount</th>
							<th>Paid Amount</th>
							<th>Remaining Amount</th>
							<th>Payment Status</th>
							<th>Date</th>
							<th>Next Payment Status</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="bills" items="${bills}">
							<tr>
								<td>${bills.supplierId.name}</td>
								<td>${bills.amount}</td>
								<td>${bills.paidAmount}</td>
								<td>${bills.remainingAmount}</td>
								<td>${bills.payStatus}</td>
								<td>${bills.date}</td>
								<td>${bills.nextPaymentStatus}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<!-- Optionally, you can add footer buttons here -->
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="supplierPaidTodayModal" tabindex="-1"
	aria-labelledby="supplierPaidTodayModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="supplierPaidTodayModalLabel">Supplier
					Paid Today</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<!-- Replace with your table or list to display suppliers paid today -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Supplier ID</th>
							<th>Amount</th>

							<th>Paid Amount</th>
							<th>Remaining Amount</th>
							<th>Payment Status</th>
							<th>Date</th>
							<th>Next Payment Status</th>
						</tr>
					</thead>
					<tbody>
						<!-- Iterate over suppliersPaidToday and display each record -->
						<c:forEach var="bill" items="${SupplierPaidToday}">
							<tr>
								<td>${bill.supplierId.name}</td>
								<td>${bill.amount}</td>
								<td>${bill.paidAmount}</td>
								<td>${bill.remainingAmount}</td>
								<td>${bill.payStatus}</td>
								<td>${bill.date}</td>
								<td>${bill.nextPaymentStatus}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
			</div>
		</div>
	</div>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


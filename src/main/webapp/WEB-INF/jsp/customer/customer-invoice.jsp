<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />
<style>

.col-xl-3{
 margin-left: 200px !important;
}
</style>
<div class="main-content app-content" >
	<div class="container my-3">
		<!-- Search form -->
		<form
			action="${pageContext.request.contextPath}/customers/customer-invoice/search"
			method="get">
			
			<div class="col col-xl-3 dat"> </div>
			<div class="row mb-3">
				<div class="col col-xl-3">
					<label for="fromDate" class="form-label">From Date:</label> <input
						type="date" id="fromDate" name="fromDate" class="form-control inp_krushi"
						required value="${fromDate != null ? fromDate : ''}">
				</div>
				<div class="col col-md-3 ">
					<label for="toDate" class="form-label">To Date:</label> <input
						type="date" id="toDate" name="toDate" class="form-control inp_krushi"
						required value="${toDate != null ? toDate : ''}">
				</div>
				<div class="col align-self-end">
					<button type="submit" class="btn btn-success btn-sm">Search</button>
				</div>
			</div>
		</form>

		<!-- Conditionally display the table -->
		<c:if test="${not empty invoices}">
			<div class="card custom-card shadow-sm">
				<div
					class="card-header d-flex justify-content-between align-items-center">
					<h5 class="card-title mb-0">Customer Invoices</h5>
				</div>
				<div class="card-body p-0">
					<div class="table-responsive">
						<table class="table table-bordered table-striped mb-0">
							<thead class="table-dark">
								<tr>
									<th>Index</th>
									<th>Product Name</th>
									<th>Quantity</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="invoice" items="${invoices}" varStatus="status">
									<tr>
										<td>${status.index + 1}</td>
										<td>${invoice.productName}</td>
										<td>${invoice.quantity}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</c:if>
	</div>
</div>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />

<div class="main-content app-content">
	<div class="container my-5">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card shadow-sm">
					<div
						class="card-header d-flex justify-content-between align-items-center">
						<h5 class="card-title mb-0">Customer List</h5>
						<a href="addCustomerForm" class="btn btn-primary">Add New
							Customer</a>
					</div>
					<div class="card-body p-0">
						<div class="table-responsive">
							<table class="table table-bordered table-striped mb-0">
								<thead class="table-dark">
									<tr>
										<th>Customer Name</th>
										<th>Area</th>
										<th>Mobile No</th>
										<th>Opening Balance</th>
										<th>Interest</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="customer" items="${customerList}">
										<tr>
											<td><a  href="${pageContext.request.contextPath}/customer-details?Customer_ID=${customer.customer_ID}">${customer.customer_name}</a></td>
											<td>${customer.area}</td>
											<td>${customer.mobile_no}</td>
											<td>${customer.opening_balance}</td>
											<td>${customer.interest}</td>
											<td><a
												href="select-customer?Customer_ID=${customer.customer_ID}">
													<i class="fas fa-pencil-alt"></i>
											</a> &nbsp; &nbsp; <a
												href="delete-customer?Customer_ID=${customer.customer_ID}">
													<i class="fas fa-trash"></i>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<hr>
					<div class="text-center">
						<h3 class="text-success">${msg}</h3>
						<h3 class="text-danger">${errorMsg}</h3>
					</div>
					<div class="card-footer border-top-0 text-end"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../modules/footer.jsp" />

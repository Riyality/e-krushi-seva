<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
<!-- /* Make the placeholder text fainter */
.custom-placeholder::placeholder {
	color: #999; /* Adjust color to make it fainter */
	opacity: 0.9; /* Ensures the color is applied fully */
}

/* Adjust input field size if needed */
.custom-placeholder {
	font-size: 10px; /* Adjust font size to your preference */
}

#quantity{
 width: 300px !important;
}
-->
</style>
<!-- Start::app-content -->
<div class="main-content app-content">
	<div class="container-fluid my-5">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Return Product</div>
					</div>
					<div class="card-body">
						<form action="/customer/return" method="post" id="productForm">
							<div class="row">
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
									<div class="mb-3">
										<label for="product" class="form-label">Product Name</label>
										<div class="input-group">
											<select class="form-control input-padding form-select-sm"
												id="productName" name="productId" required="required">
												<option class="fs-14" value="">Select Product</option>
												<c:forEach var="list" items="${productlist}">
													<option value="${list.id}">${list.productName}
														${list.packing}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
									<div class="mb-3">
										<label for="quantity" class="form-label">Quantity</label> <input
											type="number" class="form-control  custom-placeholder pt-1"
											id="quantity" name="quantity" min="1"
											placeholder="Enter quantity" required="required">
									</div>
								</div>
								<div
									class="col-xl-4 col-lg-4 col-md-12 col-sm-12 d-flex align-items-end">
									<div class="mb-3">
										<button class="btn btn-primary btn-sm me-2" type="submit">Return</button>
										<a href="javascript:history.back()">
											<button type="button" class="btn btn-danger btn-sm">Cancel</button>
										</a>
									</div>
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

<jsp:include page="../modules/footer.jsp" />

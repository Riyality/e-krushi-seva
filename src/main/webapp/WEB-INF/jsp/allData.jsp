<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="modules/header.jsp" />

<!-- Link to the CSS file -->
<link rel="stylesheet" href="styles.css">

<div class="main-content app-content">
	<div class="container my-5">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card shadow-sm">
					<div
						class="card-header d-flex justify-content-between align-items-center">
						<h5 class="card-title mb-0">Item List</h5>
						<a href="addCompanyForm" class="btn btn-primary">Add New
							Company Data</a>
					</div>
					<div class="card-body p-0">
						<div class="table-responsive">
							<table class="table table-bordered table-striped mb-0">
								<thead class="table-dark">
									<tr>
										<th>Company Name</th>
										<th>Mobile</th>
										<th>BstNo</th>
										<th>cstNo</th>
										<th>gstNo</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${itemList}">
										<tr>

											<td><a
												href="${pageContext.request.contextPath}/details?id=${customer.id}">${item.company_Name}</a></td>
											<td>${item.telephone_No}</td>
											<td>${item.bstNo}</td>
											<td>${item.cstNo}</td>
											<td>${item.gstNo}</td>										
											<td><a href="select-company?id=${item.id}"> <i
													class="fas fa-pencil-alt"></i>
											</a> &nbsp; &nbsp; <a href="delete-company?id=${item.id}"> <i
													class="fas fa-trash"></i>
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
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="modules/footer.jsp" />

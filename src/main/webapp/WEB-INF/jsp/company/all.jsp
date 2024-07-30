<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />


<!-- Link to the CSS file -->
<link rel="stylesheet" href="styles.css">

<div class="main-content app-content" style="margin-top: 30px;">
	<div class="my-4 mx-2">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card shadow-sm">
					<div
						class="card-header d-flex justify-content-between align-items-center">
						<h5 class="card-title mb-0">Companies</h5>
						<a href="/companies/addCompanyForm" class="btn btn-primary btn-sm">Add
							Company </a>
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
									<c:forEach var="company" items="${companyList}">
										<tr>

											<td><a
												href="${pageContext.request.contextPath}/companies/details?id=${company.id}">${company.company_Name}</a></td>
											<td>${company.telephone_No}</td>
											<td>${company.bstNo}</td>
											<td>${company.cstNo}</td>
											<td>${company.gstNo}</td>
											<td><a href="/companies/select-company?id=${company.id}">
													<i class="fas fa-pencil-alt"></i>
											</a> &nbsp; &nbsp; <a
												href="/companies/delete-company?id=${company.id}"> <i
													class="fas fa-trash"></i>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

					<div class="text-center">
						<h3 class="text-success">${msg}</h3>
						<h3 class="text-danger">${errorMsg}</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../modules/footer.jsp" />

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script src="path/to/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="path/to/jquery/jquery.min.js"></script>

	<jsp:include page="../modules/header.jsp" />

            	
                <!-- Start::app-content -->
                <div class="main-content app-content">
                    <div class="container-fluid">

                        <!-- Start::page-header -->
                        <!-- Page Header -->
                        <div class="d-md-flex d-block align-items-center justify-content-between my-4 page-header-breadcrumb">
                            <h1 class="page-title fw-medium fs-24 mb-0">Dashboard</h1>
                            <div class="ms-md-1 ms-0">
                                <nav>
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                                        <li class="breadcrumb-item active d-inline-flex" aria-current="page">Dashboard</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                       
    <div class="row">
            <div class="col-xxl-3 col-lg-6 col-md-6">
                <div class="card custom-card overflow-hidden">
                    <div class="card-body">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <span class="avatar bg-primary-transparent">
                                           <svg class="fill-secondary" style="height: 30px;" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24">
                                                            <path class="fill-secondary" d="M9.5,7h7C16.776123,7,17,6.776123,17,6.5S16.776123,6,16.5,6h-7C9.223877,6,9,6.223877,9,6.5S9.223877,7,9.5,7z M7.5,11h9c0.276123,0,0.5-0.223877,0.5-0.5S16.776123,10,16.5,10h-9C7.223877,10,7,10.223877,7,10.5S7.223877,11,7.5,11z M20.5,2H3.4993896C3.2234497,2.0001831,2.9998169,2.223999,3,2.5v19c-0.000061,0.1124268,0.0378418,0.2216187,0.1074829,0.3098755c0.1710205,0.2167358,0.4853516,0.2537231,0.7020874,0.0827026l2.8652344-2.2617188l2.3583984,1.7695312c0.1777954,0.1328125,0.421814,0.1328125,0.5996094,0L12,19.625l2.3671875,1.7753906c0.1777954,0.1328125,0.421814,0.1328125,0.5996094,0l2.3583984-1.7695312l2.8652344,2.2617188C20.2785034,21.9623413,20.3876343,22.0002441,20.5,22h0.0006104C20.7766113,21.9998169,21.0001831,21.7759399,21,21.5V2.4993896C20.9998169,2.2234497,20.776001,1.9998169,20.5,2z M20,20.46875l-2.3574219-1.8613281c-0.0882568-0.069519-0.1972656-0.1072998-0.3095703-0.1074219c-0.1080933-0.000061-0.2132568,0.0349121-0.2998047,0.0996094L14.6669922,20.375l-2.3671875-1.7753906c-0.1777954-0.1328125-0.421814-0.1328125-0.5996094,0L9.3330078,20.375l-2.3662109-1.7753906c-0.1817017-0.1348877-0.4311523-0.1317139-0.609375,0.0078125L4,20.46875V3h16V20.46875z M7.5,15h9c0.276123,0,0.5-0.223877,0.5-0.5S16.776123,14,16.5,14h-9C7.223877,14,7,14.223877,7,14.5S7.223877,15,7.5,15z">
                                                            </path>
                                                            </svg>                                </span>
                                <h6 class="mb-0 text-default fw-medium ms-3 fs-18">Expires Products</h6>
                            </div>
                        </div>
                        <div class="mt-2 d-flex align-items-center justify-content-between">
    <div>
        <h2 class="text-default mb-0 fs-24 fw-semibold">Total: ${count}</h2>
        <span class="mb-0 text-muted">in This month</span>
    </div>
    <button type="button" class="btn btn-primary btn-sm mt-3" data-bs-toggle="modal" data-bs-target="#productPopup">View Details</button>
</div>
                        <!-- Button trigger modal -->
                       <!-- Inside your existing JSP structure -->


                       </div>
                </div>
            </div>

         
                        
                                <div class="col-xxl-3 col-lg-6 col-md-6">
                                    <div class="card custom-card overflow-hidden">
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="d-flex align-items-center">
                                                    <span class="avatar   bg-secondary-transparent">
                                                        <svg class="fill-secondary" style="height: 30px;" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24">
                                                            <path class="fill-secondary" d="M9.5,7h7C16.776123,7,17,6.776123,17,6.5S16.776123,6,16.5,6h-7C9.223877,6,9,6.223877,9,6.5S9.223877,7,9.5,7z M7.5,11h9c0.276123,0,0.5-0.223877,0.5-0.5S16.776123,10,16.5,10h-9C7.223877,10,7,10.223877,7,10.5S7.223877,11,7.5,11z M20.5,2H3.4993896C3.2234497,2.0001831,2.9998169,2.223999,3,2.5v19c-0.000061,0.1124268,0.0378418,0.2216187,0.1074829,0.3098755c0.1710205,0.2167358,0.4853516,0.2537231,0.7020874,0.0827026l2.8652344-2.2617188l2.3583984,1.7695312c0.1777954,0.1328125,0.421814,0.1328125,0.5996094,0L12,19.625l2.3671875,1.7753906c0.1777954,0.1328125,0.421814,0.1328125,0.5996094,0l2.3583984-1.7695312l2.8652344,2.2617188C20.2785034,21.9623413,20.3876343,22.0002441,20.5,22h0.0006104C20.7766113,21.9998169,21.0001831,21.7759399,21,21.5V2.4993896C20.9998169,2.2234497,20.776001,1.9998169,20.5,2z M20,20.46875l-2.3574219-1.8613281c-0.0882568-0.069519-0.1972656-0.1072998-0.3095703-0.1074219c-0.1080933-0.000061-0.2132568,0.0349121-0.2998047,0.0996094L14.6669922,20.375l-2.3671875-1.7753906c-0.1777954-0.1328125-0.421814-0.1328125-0.5996094,0L9.3330078,20.375l-2.3662109-1.7753906c-0.1817017-0.1348877-0.4311523-0.1317139-0.609375,0.0078125L4,20.46875V3h16V20.46875z M7.5,15h9c0.276123,0,0.5-0.223877,0.5-0.5S16.776123,14,16.5,14h-9C7.223877,14,7,14.223877,7,14.5S7.223877,15,7.5,15z">
                                                            </path>
                                                            </svg>
                                                    </span>
                                                    <h6 class="mb-0 text-default fw-medium ms-3 fs-18"> Less Stock</h6>
                                                </div>
                                                <!-- <span class="badge bg-secondary-transparent ms-auto rounded-pill py-1">
                                                    <i class="ti ti-trending-up"></i> 1.8%
                                                    </span> -->
                                            </div>
                                          <div class="mt-2 d-flex align-items-center justify-content-between">
    <div>
        <h2 class="text-default mb-0 fs-24 fw-semibold">Stock: ${countStockLessThanTwo}</h2>
        <span class="mb-0 text-muted">Stock less than 2</span>
    </div>
    <button type="button" id="btnStockLessThanTwo" class="btn btn-primary btn-sm mt-3" data-bs-toggle="modal" data-bs-target="#stockLessThanTwoModal">View Details</button>
</div>
</div>
                                    </div>
                                </div>
                                <div class="col-xxl-3 col-lg-6 col-md-6">
                                    <div class="card custom-card overflow-hidden bg-faint-red">
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="d-flex align-items-center">
                                                    <span class="avatar   bg-warning-transparent">
                                                     <svg class="fill-warning" style="height:30px;" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24" id="shopping-bag">
                                                            <path class="fill-warning" fill="#4B5563" d="M19.5,7H16V5.9169922c0-2.2091064-1.7908325-4-4-4s-4,1.7908936-4,4V7H4.5C4.4998169,7,4.4996338,7,4.4993896,7C4.2234497,7.0001831,3.9998169,7.223999,4,7.5V19c0.0018311,1.6561279,1.3438721,2.9981689,3,3h10c1.6561279-0.0018311,2.9981689-1.3438721,3-3V7.5c0-0.0001831,0-0.0003662,0-0.0006104C19.9998169,7.2234497,19.776001,6.9998169,19.5,7z M9,5.9169922c0-1.6568604,1.3431396-3,3-3s3,1.3431396,3,3V7H9V5.9169922z M19,19c-0.0014038,1.1040039-0.8959961,1.9985962-2,2H7c-1.1040039-0.0014038-1.9985962-0.8959961-2-2V8h3v2.5C8,10.776123,8.223877,11,8.5,11S9,10.776123,9,10.5V8h6v2.5c0,0.0001831,0,0.0003662,0,0.0005493C15.0001831,10.7765503,15.223999,11.0001831,15.5,11c0.0001831,0,0.0003662,0,0.0006104,0C15.7765503,10.9998169,16.0001831,10.776001,16,10.5V8h3V19z">
                                                            </path>
                                                            </svg> 
                                                    </span>
                                                    <h6 class="mb-0 text-default fw-medium ms-3 fs-18">Expired Products</h6>
                                                </div>
                                               <!--  <span class="badge bg-warning-transparent ms-auto rounded-pill py-1">
                                                    <i class="ti ti-trending-up"></i> 1.8%
                                                    </span> -->
                                            </div>
                                      <div class="mt-2 d-flex align-items-center justify-content-between">
    <div>
        <h6 class="text-default mb-0 fs-24 fw-semibold">Expired: ${countExpiredProducts}</h6>
        <p class="mb-0 text-muted">Already Expired</p>
    </div>
   <button type="button" id="btnExpiredProducts" class="btn btn-primary btn-sm mt-3" data-bs-toggle="modal" data-bs-target="#expiredProductsPopup">
    View Details
</button>

</div>

                                    </div>
                                </div>
                                </div>
                                <div class="col-xxl-3 col-lg-6 col-md-6">
                                    <div class="card custom-card overflow-hidden">
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="d-flex align-items-center">
                                                    <span class="avatar   bg-success-transparent">
                                                        <svg class="fill-success" style="height: 30px;" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24">
                                                            <path class="fill-success" d="M10.75,8H12h0.0006104H15.5C15.776123,8,16,7.776123,16,7.5S15.776123,7,15.5,7h-3V5.5C12.5,5.223877,12.276123,5,12,5s-0.5,0.223877-0.5,0.5V7h-0.75C9.2312012,7,8,8.2312012,8,9.75s1.2312012,2.75,2.75,2.75h2.5c0.9664917,0,1.75,0.7835083,1.75,1.75S14.2164917,16,13.25,16H8.5C8.223877,16,8,16.223877,8,16.5S8.223877,17,8.5,17h3v1.5c0,0.0001831,0,0.0003662,0,0.0005493C11.5001831,18.7765503,11.723999,19.0001831,12,19c0.0001831,0,0.0003662,0,0.0006104,0c0.2759399-0.0001831,0.4995728-0.223999,0.4993896-0.5V17h0.75c1.5187988,0,2.75-1.2312012,2.75-2.75s-1.2312012-2.75-2.75-2.75h-2.5C9.7835083,11.5,9,10.7164917,9,9.75S9.7835083,8,10.75,8z M12,1C5.9248657,1,1,5.9248657,1,12s4.9248657,11,11,11c6.0722656-0.0068359,10.9931641-4.9277344,11-11C23,5.9248657,18.0751343,1,12,1z M12,22C6.4771729,22,2,17.5228271,2,12S6.4771729,2,12,2c5.5201416,0.0064697,9.9935303,4.4798584,10,10C22,17.5228271,17.5228271,22,12,22z">
                                                            </path>
                                                            </svg>
                                                    </span>
                                                    <h6 class="mb-0 text-default fw-medium ms-3 fs-18">Total Expenses</h6>
                                                </div>
                                                <span class="badge bg-success-transparent ms-auto rounded-pill py-1">
                                                    <i class="ti ti-trending-up"></i> 1.2%
                                                    </span>
                                            </div>
                                            <div class="mt-2">
                                                <h2 class="text-default mb-0 fs-24 fw-semibold">$35,262</h2>
                                                <p class=" mb-0 text-muted">in last week</p>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- End::row-1 -->

                       

                    </div>
                </div>
             <%--   <!-- Product details modal -->
            <div class="modal fade" id="productPopup" tabindex="-1" aria-labelledby="productPopupLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="productPopupLabel">Products Expiring This Month</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
                 -->    </div>
                </div>
            </div>
        </div>
        <!-- End Product details modal -->
         --%>
       <%--  <!-- Stock Less Than Two modal -->
<div class="modal fade" id="stockLessThanTwoModal" tabindex="-1" aria-labelledby="stockLessThanTwoModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="stockLessThanTwoModalLabel">Products with Stock Less Than Two</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
          -->   </div>
        </div>
    </div>
</div>
<!-- End Stock Less Than Two modal --> --%>
   <%--      
        <div class="modal fade" id="expiredProductsPopup" tabindex="-1" aria-labelledby="expiredProductsPopupLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="expiredProductsPopupLabel">Products Already Expired</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
            <div class="modal-footer">
          <!--   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
         -->    </div>
        </div>
    </div>
</div>
 
 	

 --%>
            <!-- Country-selector modal -->
            <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModal" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-body">
							<div class="input-group">
								<a href="javascript:void(0);" class="input-group-text border-0 bg-transparent" id="Search-Grid"><i class="ri ri-search-2-line header-link-icon fs-14"></i></a>
								<input type="search" class="form-control form-control-sm border-0 px-2" placeholder="Search" aria-label="Username">
								<a href="javascript:void(0);" class="input-group-text border-0 bg-transparent" id="voice-search"><i class="ri ri-mic-2-line  header-link-icon"></i></a>
								<a href="javascript:void(0);" class="btn btn-light btn-icon border-0 bg-transparent" data-bs-toggle="dropdown" aria-expanded="false">
									<i class="ri ri-more-2-line"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="javascript:void(0);">Action</a></li>
									<li><a class="dropdown-item" href="javascript:void(0);">Another action</a></li>
									<li><a class="dropdown-item" href="javascript:void(0);">Something else here</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="javascript:void(0);">Separated link</a></li>
								</ul>
							</div>
							<div class="mt-4">
								<p class="fw-semibold text-muted mb-2">Are You Looking For...</p>
								<span class="search-tags"><i class="ri ri-user-line me-2"></i>Team<a href="javascript:void(0)" class="tag-addon bg-transparent header-remove-btn"><i class="fe fe-x"></i></a></span>
								<span class="search-tags"><i class="ri ri-file-text-line me-2"></i>Forms<a href="javascript:void(0)" class="tag-addon bg-transparent header-remove-btn"><i class="fe fe-x"></i></a></span>
								<span class="search-tags"><i class="ri ri-map-pin-line me-2"></i>Maps<a href="javascript:void(0)" class="tag-addon bg-transparent header-remove-btn"><i class="fe fe-x"></i></a></span>
								<span class="search-tags"><i class="ri ri-server-line me-2"></i>Widgets<a href="javascript:void(0)" class="tag-addon bg-transparent header-remove-btn"><i class="fe fe-x"></i></a></span>
							</div>
							<div class="my-4">
								<p class="fw-semibold text-muted mb-2">Recent Search :</p>
								<div class="p-2 border br-5 d-flex align-items-center text-muted mb-2 alert">
									<a href="notifications.html"><span>Notifications</span></a>
									<a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
								</div>
								<div class="p-2 border br-5 d-flex align-items-center text-muted mb-2 alert">
									<a href="alerts.html"><span>Alerts</span></a>
									<a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
								</div>
								<div class="p-2 border br-5 d-flex align-items-center text-muted mb-0 alert">
									<a href="mail-inbox.html"><span>Mail</span></a>
									<a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="btn-group ms-auto">
								<button class="btn btn-sm btn-primary-light">Search</button>
								<button class="btn btn-sm btn-primary">Clear Recents</button>
							</div>
						</div>
					</div>
				</div>
			</div>
            <!-- End Country-selector modal -->
            <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<!-- Place this script at the end of your JSP file -->
<script>
    $(document).ready(function() {
        // Add a click event listener to the button with class .btn-primary (assuming it's for productPopup)
        $('.btn-primary[data-bs-toggle="modal"][data-bs-target="#productPopup"]').click(function() {
            $('#productPopup').modal('show'); // Show the modal with id productPopup when the button is clicked
        });

        // Add a click event listener to the button with id btnStockLessThanTwo
        $('#btnStockLessThanTwo[data-bs-toggle="modal"][data-bs-target="#stockLessThanTwoModal"]').click(function() {
            $('#stockLessThanTwoModal').modal('show'); // Show the modal with id stockLessThanTwoModal when the button is clicked
        });
        
        $('#btnExpiredProducts[data-bs-toggle="modal"][data-bs-target="#expiredProductsPopup"]').click(function() {
            $('#expiredProductsPopup').modal('show'); // Show the modal with id expiredProductsPopup when the button is clicked
        });
    });
    </script>



<jsp:include page="popup.jsp" />
         <jsp:include page="../modules/footer.jsp" />
         
        
         
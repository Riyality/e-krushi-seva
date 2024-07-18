<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<!-- Start::app-content -->
<div class="main-content app-content">
    <div class="container-fluid my-5">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card">
                    <div class="card-header justify-content-between">
                        <div class="card-title">Supplier Details</div>
                    </div>
                    <div class="card-body">
                        <!-- Part 1: Profile Section -->
                        <div class="profile">
                            <h5><i class="fas fa-user-circle"></i> </h5>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                  <b><label>Supplier Name:</label> </b>
                                    <span>${supplier.name}</span>
                                  <br>
                                   <b><label>Contact:</label> </b> 
                                    <span>${supplier.contact}</span>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <!-- Part 2: Customer Details Section -->
                        <div class="customer-details">
                            <h6>Supplier Details</h6>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Address:</label> 
                                    <span>${supplier.address}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">City:</label> 
                                    <span>${supplier.city}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">pincode:</label> 
                                    <span>${supplier.pincode}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">State:</label> 
                                    <span>${supplier.state}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">email:</label> 
                                    <span>${supplier.email}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">mobileNo:</label> 
                                    <span>${supplier.mobileNo}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">adharCardNo:</label> 
                                    <span>${supplier.adharCardNo}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Opening Balance:</label> 
                                    <span>${supplier.openingBalance}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label  class="font-weight">credit:</label> 
                                    <span>${supplier.credit}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">gst No:</label> 
                                    <span>${supplier.gstNo}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label  class="font-weight">gst Type:</label> 
                                    <span>${supplier.gstType}</span>
                                </div>
                               </div>
                        </div>
                    </div>
                     <a href="/suppliers/all"><button type="button" class="btn btn-danger btn">Back</button></a>
                    <div class="card-footer d-none border-top-0"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End::app-content -->

<jsp:include page="../modules/footer.jsp" />

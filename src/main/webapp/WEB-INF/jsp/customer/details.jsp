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
                        <div class="card-title">Customer Details</div>
                    </div>
                    <div class="card-body">
                        <!-- Part 1: Profile Section -->
                        <div class="profile">
                            <h5><i class="fas fa-user-circle"></i> </h5>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                  <b><label>Customer Name:</label> </b>
                                    <span>${customer.customer_name}</span>
                                  <br>
                                   <b><label>Area:</label> </b> 
                                    <span>${customer.area}</span>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <!-- Part 2: Customer Details Section -->
                        <div class="customer-details">
                            <h6>Customer Details</h6>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Address:</label> 
                                    <span>${customer.address}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Taluka:</label> 
                                    <span>${customer.taluka}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">District:</label> 
                                    <span>${customer.district}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">State:</label> 
                                    <span>${customer.state}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Group:</label> 
                                    <span>${customer.group}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Categories:</label> 
                                    <span>${customer.categories}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Mobile No:</label> 
                                    <span>${customer.mobile_no}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Email ID:</label> 
                                    <span>${customer.email_id}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label  class="font-weight">GST No:</label> 
                                    <span>${customer.gst_no}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Aadhar No:</label> 
                                    <span>${customer.aadhar_no}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label  class="font-weight">Pin Code:</label> 
                                    <span>${customer.pin_code}</span>
                                </div>
                                <div class="col-md-6">
                                    <label  class="font-weight">Opening Balance:</label> 
                                    <span>${customer.opening_balance}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label  class="font-weight">Payment Type:</label> 
                                    <span>${customer.payment_type}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Interest:</label> 
                                    <span>${customer.interest}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Interest Type:</label> 
                                    <span>${customer.interest_type}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">GST:</label> 
                                    <span>${customer.gst}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Status:</label> 
                                    <span>${customer.status}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Birthday:</label> 
                                    <span>${customer.birthday}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                     <a href="/customer/all"><button type="button" class="btn btn-danger btn">Back</button></a>
                    <div class="card-footer d-none border-top-0"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End::app-content -->

<jsp:include page="../modules/footer.jsp" />

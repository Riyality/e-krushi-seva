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
                        <div class="card-title">Company Details</div>
                    </div>
                    <div class="card-body">
                        <!-- Part 1: Profile Section -->
                        <div class="profile">
                            <h5><i class="fas fa-building"></i> </h5>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <b><label>Company Name:</label> </b>
                                    <span>${company.company_Name}</span>
                                    <br>
                                    <b><label>Contact Number:</label> </b>
                                    <span>${company.telephone_No}</span>
                                </div>
                                <div class="col-md-6">
                                    <b><label>Mobile Number:</label> </b>
                                    <span>${company.mobile_No}</span>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <!-- Part 2: Company Details Section -->
                        <div class="company-details">
                            <h6>Company Details</h6>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Address:</label>
                                    <span>${company.address}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">City:</label>
                                    <span>${company.city}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">State:</label>
                                    <span>${company.state}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Pincode:</label>
                                    <span>${company.pincode}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Email:</label>
                                    <span>${company.email}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Website:</label>
                                    <span>${company.web_Address}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">GST Number:</label>
                                    <span>${company.gstNo}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">BST Number:</label>
                                    <span>${company.bstNo}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">CST Number:</label>
                                    <span>${company.cstNo}</span>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight">Licenses:</label>
                                    <span>${company.licsNo1}, ${company.licsNo2}, ${company.licsNo3}, ${company.licsNo4}, ${company.licsNo5}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="font-weight">Call for Services:</label>
                                    <span>${company.callForServices}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="/companies/all"><button type="button" class="btn btn-danger btn">Back</button></a>
                    <div class="card-footer d-none border-top-0"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End::app-content -->

<jsp:include page="../modules/footer.jsp" />

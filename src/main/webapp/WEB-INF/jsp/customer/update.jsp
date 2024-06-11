<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
                        <!-- Customer Form Section -->
                        <form action="<c:url value='/customers/update'/>" method="post">
                            <div class="row">
                               
                                <div class="col-xl-4 mb-3">
                                    <label for="customer_name">Customer Name:</label>
                                      <input type="hidden" class="form-control inp_krushi" id="customer_ID" name="customer_ID" value="${customer.customer_ID}" readonly>
                                    <input type="text" class="form-control inp_krushi" id="customer_name" name="customer_name" value="${customer.customer_name}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="area">Area:</label>
                                    <input type="text" class="form-control inp_krushi" id="area" name="area" value="${customer.area}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="address">Address:</label>
                                    <input type="text" class="form-control inp_krushi" id="address" name="address" value="${customer.address}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="taluka">Taluka:</label>
                                    <input type="text" class="form-control inp_krushi" id="taluka" name="taluka" value="${customer.taluka}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="district">District:</label>
                                    <input type="text" class="form-control inp_krushi" id="district" name="district" value="${customer.district}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="state">State:</label>
                                    <input type="text" class="form-control inp_krushi" id="state" name="state" value="${customer.state}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="group">Group:</label>
                                    <input type="text" class="form-control inp_krushi" id="group" name="group" value="${customer.group}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="categories">Categories:</label>
                                    <input type="text" class="form-control inp_krushi" id="categories" name="categories" value="${customer.categories}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="mobile_no">Mobile No:</label>
                                    <input type="text" class="form-control inp_krushi" id="mobile_no" name="mobile_no" value="${customer.mobile_no}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="email_id">Email ID:</label>
                                    <input type="email" class="form-control inp_krushi" id="email_id" name="email_id" value="${customer.email_id}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="gst_no">GST No:</label>
                                    <input type="text" class="form-control inp_krushi" id="gst_no" name="gst_no" value="${customer.gst_no}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="aadhar_no">Aadhar No:</label>
                                    <input type="text" class="form-control inp_krushi" id="aadhar_no" name="aadhar_no" value="${customer.aadhar_no}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="pin_code">Pin Code:</label>
                                    <input type="text" class="form-control inp_krushi" id="pin_code" name="pin_code" value="${customer.pin_code}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="opening_balance">Opening Balance:</label>
                                    <input type="text" class="form-control inp_krushi" id="opening_balance" name="opening_balance" value="${customer.opening_balance}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="payment_type">Payment Type:</label>
                                    <input type="text" class="form-control inp_krushi" id="payment_type" name="payment_type" value="${customer.payment_type}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="interest">Interest:</label>
                                    <input type="text" class="form-control inp_krushi" id="interest" name="interest" value="${customer.interest}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="interest_type">Interest Type:</label>
                                    <input type="text" class="form-control inp_krushi" id="interest_type" name="interest_type" value="${customer.interest_type}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="gst">GST:</label>
                                    <input type="text" class="form-control inp_krushi" id="gst" name="gst" value="${customer.gst}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="status">Status:</label>
                                    <input type="text" class="form-control" id="status" name="status" value="${customer.status}">
                                </div>
                                <div class="col-xl-4 mb-3">
                                    <label for="birthday">Birthday:</label>
                                    <input type="date" class="form-control inp_krushi" id="birthday" name="birthday" value="${customer.birthday}">
                                </div>
                                <div class="col-xl-12">
                                    <button type="submit" class="btn btn-primary">Update Customer</button>
                                    <a href="/customers/all"><button type="button" class="btn btn-danger">Cancel</button></a>
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
<!-- End::app-content -->

<jsp:include page="../modules/footer.jsp" />

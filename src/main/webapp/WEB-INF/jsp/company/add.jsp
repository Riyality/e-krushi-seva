<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../modules/header.jsp" />

<!-- Start::app-content -->
<div class="main-content app-content" style="margin-top: 30px;">
    <div class="container-fluid my-5">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card">
                    <div class="card-header justify-content-between">
                        <div class="card-title">Add company</div>
                    </div>
                    <div class="card-body">
                        <form action="/companies" method="post">
                            <div class="row">

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="companyName" class="form-label">Company Name</label>
                                        <input type="text" class="form-control" id="companyName" name="company_Name" placeholder="Enter Company Name" required pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed">
                                    </div>
                                </div>     

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="address" class="form-label">Address</label>
                                        <input type="text" class="form-control" id="address" name="address" placeholder="Enter Address" required>
                                    </div>
                                </div>                     

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="city" class="form-label">City</label>
                                        <input type="text" class="form-control" id="city" name="city" placeholder="Enter City" required pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="pincode" class="form-label">Pincode</label>
                                        <input type="text" class="form-control" id="pincode" name="pincode" placeholder="Enter Pincode" required pattern="\d{6}" title="Only 6 digits are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="telephone_No" class="form-label">Telephone No</label>
                                        <input type="text" class="form-control" id="telephone_No" name="telephone_No" placeholder="Enter Telephone No" required pattern="\d{10}" maxlength="10" title="Only 10 digits are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="web_Address" class="form-label">Web Address</label>
                                        <input type="text" class="form-control" id="web_Address" name="web_Address" placeholder="Enter Web Address">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="mobile_No" class="form-label">Mobile No</label>
                                        <input type="text" class="form-control" id="mobile_No" name="mobile_No" placeholder="Enter Mobile No" required pattern="\d{10}" title="Only 10 digits are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="state" class="form-label">State</label>
                                        <input type="text" class="form-control" id="state" name="state" placeholder="Enter State" required pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="licsno1" class="form-label">License No 1</label>
                                        <input type="text" class="form-control" id="licsno1" name="licsNo1" placeholder="Enter License No 1" required pattern="\d+" title="Only numbers are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="licsno2" class="form-label">License No 2</label>
                                        <input type="text" class="form-control" id="licsno2" name="licsNo2" placeholder="Enter License No 2" required pattern="\d+" title="Only numbers are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="licsno3" class="form-label">License No 3</label>
                                        <input type="text" class="form-control" id="licsno3" name="licsNo3" placeholder="Enter License No 3" required pattern="\d+" title="Only numbers are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="licsno4" class="form-label">License No 4</label>
                                        <input type="text" class="form-control" id="licsNo4" name="licsNo4" placeholder="Enter License No 4" required pattern="\d+" title="Only numbers are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="licsno5" class="form-label">License No 5</label>
                                        <input type="text" class="form-control" id="licsNo5" name="licsNo5" placeholder="Enter License No 5" required pattern="\d+" title="Only numbers are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="bstno" class="form-label">BST No</label>
                                        <input type="text" class="form-control" id="bstno" name="bstNo" placeholder="Enter BST No" required pattern="\d+" title="Only numbers are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="cstno" class="form-label">CST No</label>
                                        <input type="text" class="form-control" id="cstno" name="cstNo" placeholder="Enter CST No" required pattern="\d+" title="Only numbers are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="gstno" class="form-label">GST No</label>
                                        <input type="text" class="form-control" id="gstno" name="gstNo" placeholder="Enter GST No" required pattern="\d+" title="Only numbers are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="callforservices" class="form-label">Call for Services</label>
                                        <input type="text" class="form-control" id="callforservices" name="callForServices" placeholder="Enter Call for Services" maxlength="10" required>
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <button class="btn btn-primary" type="submit">Submit</button>
                                    <a href="/home"><button type="button" class="btn btn-danger">Cancel</button></a>
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

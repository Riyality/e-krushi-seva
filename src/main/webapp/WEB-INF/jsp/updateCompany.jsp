<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="modules/header.jsp" />

<!-- Start::app-content -->
<div class="main-content app-content">
    <div class="container-fluid my-5">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card">
                    <div class="card-header justify-content-between">
                        <div class="card-title">Update company</div>
                    </div>
                    <div class="card-body">
                        <form action="updateCompany" method="post">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Company ID</label>
                                        <input type="text" class="form-control" name="id" value="${company.id}" readonly="readonly">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Company Name</label>
                                        <input type="text" class="form-control" name="company_Name" value="${company.company_Name}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Address</label>
                                        <input type="text" class="form-control" id="address" name="address" value="${company.address}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">City</label>
                                        <input type="text" class="form-control" id="city" name="city" value="${company.city}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Pincode</label>
                                        <input type="text" class="form-control" id="pincode" name="pincode" value="${company.pincode}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Telephone_NO</label>
                                        <input type="text" class="form-control" id="telephone_No" name="telephone_No" value="${company.telephone_No}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Email</label>
                                        <input type="text" class="form-control" id="email" name="email" value="${company.email}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Web_Address</label>
                                        <input type="text" class="form-control" id="web_Address" name="web_Address" value="${company.web_Address}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Mobile</label>
                                        <input type="text" class="form-control" id="mobile_No" name="mobile_No" value="${company.mobile_No}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">State</label>
                                        <input type="text" class="form-control" id="state" name="state" value="${company.state}">
                                    </div>
                                </div>

                                <!-- Adding remaining fields -->

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">License No 1</label>
                                        <input type="text" class="form-control" id="licsNo1" name="licsNo1" value="${company.licsNo1}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">License No 2</label>
                                        <input type="text" class="form-control" id="licsNo2" name="licsNo2" value="${company.licsNo2}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">License No 3</label>
                                        <input type="text" class="form-control" id="licsNo3" name="licsNo3" value="${company.licsNo3}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">License No 4</label>
                                        <input type="text" class="form-control" id="licsNo4" name="licsNo4" value="${company.licsNo4}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">License No 5</label>
                                        <input type="text" class="form-control" id="licsNo5" name="licsNo5" value="${company.licsNo5}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">BST No</label>
                                        <input type="text" class="form-control" id="bstNo" name="bstNo" value="${company.bstNo}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">CST No</label>
                                        <input type="text" class="form-control" id="cstNo" name="cstNo" value="${company.cstNo}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">GST No</label>
                                        <input type="text" class="form-control" id="gstNo" name="gstNo" value="${company.gstNo}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Call for Services</label>
                                        <input type="text" class="form-control" id="callForServices" name="callForServices" value="${company.callForServices}">
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">Update Company</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <hr>
                    <h3 style="color: green">${msg}</h3>
                    <h3 style="color: red">${errorMsg}</h3>
                    <hr>
                </div>
            </div>
        </div>
        <!-- End:: row-1 -->
    </div>
</div>
<!-- End::app-content -->
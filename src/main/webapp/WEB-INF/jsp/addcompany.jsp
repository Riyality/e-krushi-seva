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
                        <div class="card-title">Add company</div>
                    </div>
                    <div class="card-body">
                        <form action="add_company" method="post">
                            <div class="row">                          

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Company Name</label>
                                        <input type="text" class="form-control" name="company_Name" placeholder="enter Company_Name">
                                    </div>
                                </div>     
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Address</label>
                                        <input type="text" class="form-control" name="address" placeholder="enter address">
                                    </div>
                                </div>                     

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">City</label>
                                        <input type="text" class="form-control" id="city" name="city" placeholder="enter City">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Pincode</label>
                                        <input type="text" class="form-control" id="pincode" name="pincode" placeholder="enter pincode">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Telephone_NO</label>
                                        <input type="text" class="form-control" id="telephone_No" name="telephone_No" placeholder="enter Telephone_NO">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Email</label>
                                        <input type="text" class="form-control" id="email" name="email" placeholder="enter email">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Web_Address</label>
                                        <input type="text" class="form-control" id="web_Address" name="web_Address" placeholder="enter web_Address">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Mobile No</label>
                                        <input type="text" class="form-control" id="mobile_No" name="mobile_No" placeholder="enter Mobile No">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">State</label>
                                        <input type="text" class="form-control" id="state" name="state" placeholder="enter state">
                                    </div>
                                </div>
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">licsno1</label>
                                        <input type="text" class="form-control" id="licsno1" name="licsNo1" placeholder="enter licsno1">
                                    </div>
                                </div>
                                
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">licsno2</label>
                                        <input type="text" class="form-control" id="licsno2" name="licsNo2" placeholder="enter licsno2">
                                    </div>
                                </div>
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">licsno3</label>
                                        <input type="text" class="form-control" id="licsno3" name="licsNo3" placeholder="enter licsno3">
                                    </div>
                                </div>
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">licsno4</label>
                                        <input type="text" class="form-control" id="licsNo4" name="licsNo4" placeholder="enter licsno4">
                                    </div>
                                </div>
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">licsno5</label>
                                        <input type="text" class="form-control" id="licsNo5" name="licsNo5" placeholder="enter licsno5">
                                    </div>
                                </div>
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">BstNo</label>
                                        <input type="text" class="form-control" id="bstno" name="bstNo" placeholder="enter BstNo">
                                    </div>
                                </div>
                                
                                 <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">CstNo</label>
                                        <input type="text" class="form-control" id="cstno" name="cstNo" placeholder="enter CstNo">
                                    </div>
                                </div>
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">GstNo</label>
                                        <input type="text" class="form-control" id="gstno" name="gstNo" placeholder="enter GstNo">
                                    </div>
                                </div>
                                
                                 <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Call for Services</label>
                                        <input type="text" class="form-control" id="callforservices" name="callForServices" placeholder="enter Call for Services">
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <button class="btn btn-primary" type="submit">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <hr>
                    <h3 style="color: green">${msg}</h3>
                    <h3 style="color: red">${errorMsg}</h3>
                    <hr>
                    <div class="card-footer d-none border-top-0"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End::app-content -->

<jsp:include page="modules/footer.jsp" />

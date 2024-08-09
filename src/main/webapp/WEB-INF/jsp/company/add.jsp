<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />

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
                        <form action="/companies" method="post">
                            <div class="row">

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="companyName" class="form-label">Company Name</label>
                                        <input type="text" class="form-control inp_krushi" id="companyName" 
                                               name="company_Name" placeholder=" ABC Pharmaceuticals Pvt. Ltd." 
                                               required pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="address" class="form-label">Address</label>
                                        <input type="text" class="form-control inp_krushi" id="address" 
                                               name="address" placeholder=" 123, ABC Street, Mumbai" required>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="city" class="form-label">City</label>
                                        <input type="text" class="form-control inp_krushi" id="city" 
                                               name="city" placeholder=" Mumbai"  
                                               >
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="pincode" class="form-label">Pincode</label>
                                        <input type="text" class="form-control inp_krushi" id="pincode" 
                                               name="pincode" placeholder=" 400053" >
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="web_Address" class="form-label">Web Address</label>
                                        <input type="text" class="form-control inp_krushi" id="web_Address" 
                                               name="web_Address" placeholder=" www.abcpharma.com">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="email" class="form-control inp_krushi" id="email" 
                                               name="email" placeholder=" info@abcpharma.com" >
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="telephone_No" class="form-label">Telephone No</label>
                                        <input type="text" class="form-control inp_krushi" id="telephone_No" 
                                               name="telephone_No" placeholder=" 022-12345678" >
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="state" class="form-label">State</label>
                                        <input type="text" class="form-control inp_krushi" id="state" 
                                               name="state" placeholder=" Maharashtra" >
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="licsno1" class="form-label">License No 1</label>
                                        <input type="text" class="form-control inp_krushi" id="licsno1" 
                                               name="licsNo1" placeholder=" MH/1234567">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="licsno2" class="form-label">License No 2</label>
                                        <input type="text" class="form-control inp_krushi" id="licsno2" 
                                               name="licsNo2" placeholder=" MH/7654321">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="licsno3" class="form-label">License No 3</label>
                                        <input type="text" class="form-control inp_krushi" id="licsno3" 
                                               name="licsNo3" placeholder=" MH/8765432">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="licsno4" class="form-label">License No 4</label>
                                        <input type="text" class="form-control inp_krushi" id="licsNo4" 
                                               name="licsNo4" placeholder=" MH/9876543">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="licsno5" class="form-label">License No 5</label>
                                        <input type="text" class="form-control inp_krushi" id="licsNo5" 
                                               name="licsNo5" placeholder=" MH/6543210">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="bstno" class="form-label">BST No</label>
                                        <input type="text" class="form-control inp_krushi" id="bstno" 
                                               name="bstNo" placeholder=" BST/0123456789">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="cstno" class="form-label">CST No</label>
                                        <input type="text" class="form-control inp_krushi" id="cstno" 
                                               name="cstNo" placeholder=" CST/9876543210">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="gstno" class="form-label">GST No</label>
                                        <input type="text" class="form-control inp_krushi" id="gstno" 
                                               name="gstNo" placeholder=" 27AAACB1234F1ZV">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="callforservices" class="form-label">Call for Services</label>
                                        <input type="text" class="form-control inp_krushi" id="callforservices" 
                                               name="callForServices" placeholder=" 9876543210" maxlength="10">
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <button class="btn btn-primary btn-sm" type="submit">Submit</button>
                                    <a href="javascript:history.back()">
                                        <button type="button" class="btn btn-danger btn-sm">Cancel</button>
                                    </a>
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

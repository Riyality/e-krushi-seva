<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>" rel="stylesheet">
<!-- Start::app-content -->
<div class="main-content app-content">
    <div class="container-fluid my-5">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card">
                    <div class="card-header justify-content-between">
                        <div class="card-title">Add New Item</div>
                    </div>
                    <div class="card-body">
                        <form action="addProduct" method="post">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="productname" class="form-label">Product Name</label> 
                                        <input type="text" class="form-control wide-input" id="productname" name="productName" placeholder="e.g:karate" required="required">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="manufacture" class="form-label">Manufacture</label> 
                                        <input type="text" class="form-control wide-input" id="manufacture" name="manuFacture" placeholder="e.g:Sygenta" required="required">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="itemType" class="form-label">Item Type</label> 
                                        <input type="text" class="form-control custom-width" id="itemType" name="itemType" placeholder="e.g:Spray/Dripmix/Seeds/Fertilizers" required="required">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="packing" class="form-label">Packing</label> 
                                        <input type="text" class="form-control custom-width" id="packing" name="packing" placeholder="e.g:100ml/1kg" required="required">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="batchno" class="form-label">Batch NO</label> 
                                        <input type="text" class="form-control custom-width" id="batchno" name="batchNo" placeholder="e.g:Ab12345" required="required">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="godown" class="form-label">Godown</label>
                                        <select class="form-select custom-width form-select-sm" id="godown" name="godown">
                                            <option selected>Select Option</option>
                                            <option value="godown">Godown</option>
                                            <option value="Shop">Shop</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="openingStock" class="form-label">Opening Stock</label> 
                                        <input type="text" class="form-control custom-width" id="openingStock" name="openingStock" placeholder="Enter Opening Stock Details">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="expiryDate" class="form-label">Expiry Date</label> 
                                        <input type="date" class="form-control custom-width" id="expiryDate" name="expiryDate" required="required">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="hsnCode" class="form-label">HSN Code</label> 
                                        <input type="text" class="form-control custom-width" id="hsnCode" name="hsnCode" placeholder="Enter HSN Code">
                                    </div>
                                </div>

                                <hr>
                                <h6>Price Details</h6>
                                <hr>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="purchaseGst" class="form-label">Purchase Price With GST</label> 
                                        <input type="text" class="form-control custom-width" id="purchaseGst" name="purchaseGst" placeholder="Enter Purchase Price with GST">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="gst" class="form-label">GST%</label> 
                                        <input type="text" class="form-control custom-width" id="gst" name="gst" placeholder="Enter GST%">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="purchasePrice" class="form-label">Purchase Price</label> 
                                        <input type="text" class="form-control custom-width" id="purchasePrice" name="purchasePrice" placeholder="Enter Purchase Price">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="mrp" class="form-label">MRP</label> 
                                        <input type="text" class="form-control custom-width" id="mrp" name="mrp" placeholder="Enter MRP" required="required">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="cashPrice" class="form-label">Cash Price Retail</label> 
                                        <input type="text" class="form-control custom-width" id="cashPrice" name="cashPrice" placeholder="Enter Cash Price Retail" required="required">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="creditPrice" class="form-label">Credit Price Retail</label> 
                                        <input type="text" class="form-control custom-width" id="creditPrice" name="creditPrice" placeholder="Enter Credit Price Retail">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="wholeSale" class="form-label">Cash Price Wholesale</label> 
                                        <input type="text" class="form-control custom-width" id="wholeSale" name="wholeSale" placeholder="Enter Cash Price Wholesale">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="creditWholeSale" class="form-label">Credit Price Wholesale</label> 
                                        <input type="text" class="form-control custom-width" id="creditWholeSale" name="creditWholeSale" placeholder="Enter Credit Price Wholesale">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="barCode" class="form-label">BarCode</label> 
                                        <input type="text" class="form-control custom-width" id="barCode" name="barCode" placeholder="Enter BarCode">
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <button class="btn btn-primary" type="submit">Submit</button>
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

<jsp:include page="modules/footer.jsp" />

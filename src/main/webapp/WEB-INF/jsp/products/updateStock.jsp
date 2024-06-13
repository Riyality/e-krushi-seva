<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>" rel="stylesheet">
<!-- Start::app-content -->
<div class="main-content app-content">
    <div class="container-fluid my-5">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card">
                    <div class="card-header justify-content-between">
                        <div class="card-title">UpdateStock Item</div>
                    </div>
                    <div class="card-body">
                        <form action="/products/updateStock" method="post">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="productname" class="form-label">Product Name</label> 
                                        <input type="hidden" class="form-control wide-input" id="productid" name="id" value="${product.id}" readonly>
                                        <input type="text" class="form-control wide-input" id="productname" name="productName" value="${product.productName}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="manufacture" class="form-label">Manufacture</label> 
                                        <input type="hidden" class="form-control wide-input" id="manufacture" name="manuFacture" value="${product.manuFacture.id}" readonly>
                                        <input type="text" class="form-control wide-input" id="manufacture" name="manuFacture1" value="${product.manuFacture.shortName}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="itemType" class="form-label">Item Type</label> 
                                        <input type="text" class="form-control custom-width" id="itemType" name="itemType"  value="${product.itemType}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="packing" class="form-label">Packing</label> 
                                        <input type="text" class="form-control custom-width" id="packing" name="packing"  value="${product.packing}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="batchno" class="form-label">Batch NO</label> 
                                        <input type="text" class="form-control custom-width" id="batchno" name="batchNo" value="${product.batchNo}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="godown" class="form-label">Godown</label> 
                                        <input type="text" class="form-control custom-width" id="godown" name="godown" value="${product.godown}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="openingStock" class="form-label">Update Stock</label> 
                                        <input type="text" class="form-control custom-width" id="openingStock" name="openingStock" value="${product.openingStock}">
                                    </div>
                                </div>

                                 <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="expiryDate" class="form-Opening Stocklabel">Expiry Date</label> 
                                        <input type="text" class="form-control custom-width" id="expiryDate" name="expiryDate" value="${product.expiryDate}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="hsnCode" class="form-label">HSN Code</label> 
                                        <input type="text" class="form-control custom-width" id="hsnCode" name="hsnCode" value="${product.hsnCode}" readonly>
                                    </div>
                                </div>

                                <hr>
                                <h6>Price Details</h6>
                                <hr>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="purchaseGst" class="form-label">Purchase Price With GST</label> 
                                        <input type="text" class="form-control custom-width" id="purchaseGst" name="purchaseGst" value="${product.purchaseGst}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="gst" class="form-label">GST%</label> 
                                        <input type="text" class="form-control custom-width" id="gst" name="gst" value="${product.gst}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="purchasePrice" class="form-label">Purchase Price</label> 
                                        <input type="text" class="form-control custom-width" id="purchasePrice" name="purchasePrice" value="${product.purchasePrice}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="mrp" class="form-label">MRP</label> 
                                        <input type="text" class="form-control custom-width" id="mrp" name="mrp" value="${product.mrp}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="cashPrice" class="form-label">Cash Price Retail</label> 
                                        <input type="text" class="form-control custom-width" id="cashPrice" name="cashPrice" value="${product.cashPrice}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="creditPrice" class="form-label">Credit Price Retail</label> 
                                        <input type="text" class="form-control custom-width" id="creditPrice" name="creditPrice" value="${product.creditPrice}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="wholeSale" class="form-label">Cash Price Wholesale</label> 
                                        <input type="text" class="form-control custom-width" id="wholeSale" name="wholeSale" value="${product.wholeSale}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="creditWholeSale" class="form-label">Credit Price Wholesale</label> 
                                        <input type="text" class="form-control custom-width" id="creditWholeSale" name="creditWholeSale" value="${product.creditWholeSale}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="barCode" class="form-label">BarCode</label> 
                                        <input type="text" class="form-control custom-width" id="barCode" name="barCode" value="${product.barCode}" readonly>
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <button class="btn btn-primary" type="submit">Submit</button>
                                    <a href="/products/allProd" class="btn btn-danger">Cancel</a>
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

<jsp:include page="../modules/footer.jsp" />

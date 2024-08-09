<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>" rel="stylesheet">
<!-- Start::app-content -->
<style>
.Stocklabeld{
 color:red!important;
 font-weight:600!important;
}
</style>
<div class="main-content app-content">
    <div class="container-fluid my-5">
        <!-- Start:: row-1 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card">
                    <div class="card-header justify-content-between">
                        <div class="card-title">Update  Item</div>
                    </div>
                    <div class="card-body">
                        <form action="/products/update" method="post">
                            <div class="row">
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="productname" class="form-label">Product Name</label> 
                                        <input type="hidden" class="form-control inp_krushi" id="id" name="id" value="${product.id}">
                                      
                                        <input type="text" class="form-control inp_krushi" id="productname" name="productName" value="${product.productName}" readonly="readonly">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="manufacture" class="form-label">Manufacture</label> 
                                        <input type="hidden" class="form-control inp_krushi" id="manufacture" name="manuFacture" value="${product.manuFacture.id}">
                                        <input type="text" class="form-control inp_krushi" id="manufacture" name="manuFacture1" value="${product.manuFacture.shortName}" readonly="readonly">
                                    </div>
                                </div>

                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="itemType" class="form-label">Item Type</label> 
                                        <input type="text" class="form-control inp_krushi" id="itemType" name="itemType"  value="${product.itemType}">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="packing" class="form-label">Packing</label> 
                                        <input type="text" class="form-control inp_krushi" id="packing" name="packing"  value="${product.packing}">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="batchno" class="form-label">Batch NO</label> 
                                        <input type="text" class="form-control inp_krushi" id="batchno" name="batchNo" value="${product.batchNo}">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="godown" class="form-label">Godown</label> 
                                        <input type="text" class="form-control inp_krushi" id="godown" name="godown" value="${product.godown}">
                                    </div>
                                </div>
                                
                                 <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="rackNO" class="form-label">Rack No</label> 
                                        <input type="text" class="form-control inp_krushi" id="rackNo" name="rackNO" value="${product.rackNo}">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="openingStock" class="form-label Stocklabeld">Current Stock</label> 
                                        <input type="text" class="form-control inp_krushi" id="openingStock" name="openingStock" value="${product.openingStock}">
                                    </div>
                                </div>

                                 <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="expiryDate" class="form-Opening Stocklabeld">Expiry Date</label> 
                                        <input type="text" class="form-control inp_krushi" id="expiryDate" name="expiryDate" value="${product.expiryDate}">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="hsnCode" class="form-label">HSN Code</label> 
                                        <input type="text" class="form-control inp_krushi" id="hsnCode" name="hsnCode" value="${product.hsnCode}">
                                    </div>
                                </div>

                                <hr>
                                <h6>Price Details</h6>
                                <hr>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="purchaseGst" class="form-label">Purchase Price With GST</label> 
                                        <input type="text" class="form-control inp_krushi" id="purchaseGst" name="purchaseGst" value="${product.purchaseGst}">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="gst" class="form-label">GST%</label> 
                                        <input type="text" class="form-control inp_krushi" id="gst" name="gst" value="${product.gst}">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="purchasePrice" class="form-label">Purchase Price</label> 
                                        <input type="text" class="form-control inp_krushi" id="purchasePrice" name="purchasePrice" value="${product.purchasePrice}">
                                    </div>
                                </div>

                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="mrp" class="form-label">MRP</label> 
                                        <input type="text" class="form-control inp_krushi" id="mrp" name="mrp" value="${product.mrp}">
                                    </div>
                                </div>
                            
                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="cashPrice" class="form-label">Cash Price Retail</label> 
                                        <input type="text" class="form-control inp_krushi" id="cashPrice" name="cashPrice" value="${product.cashPrice}">
                                    </div>
                                </div>
<!--  <div class="col-xl-1"></div> -->
                                <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="creditPrice" class="form-label">Credit Price Retail</label> 
                                        <input type="text" class="form-control inp_krushi" id="creditPrice" name="creditPrice" value="${product.creditPrice}">
                                    </div>
                                </div>
<!--  <div class="col-xl-1"></div> -->
                                <div class="col-xl-2">
                                    <div class="mb-3">
                                        <label for="wholeSale" class="form-label">Cash Price Wholesale</label> 
                                        <input type="text" class="form-control inp_krushi" id="wholeSale" name="wholeSale" value="${product.wholeSale}">
                                    </div>
                                </div>

                                <div class="col-xl-2">
                                    <div class="mb-3">
                                        <label for="creditWholeSale" class="form-label">Credit Price Wholesale</label> 
                                        <input type="text" class="form-control inp_krushi" id="creditWholeSale" name="creditWholeSale" value="${product.creditWholeSale}">
                                    </div>
                                </div>

                                <div class="col-xl-2">
                                    <div class="mb-3">
                                        <label for="barCode" class="form-label">BarCode</label> 
                                        <input type="text" class="form-control inp_krushi" id="barCode" name="barCode" value="${product.barCode}">
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <button class="btn btn-success btn-sm" type="submit">Submit</button>&nbsp;&nbsp;&nbsp;
                                    <a href="/products/allProd" class="btn btn-danger btn-sm">Cancel</a>
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

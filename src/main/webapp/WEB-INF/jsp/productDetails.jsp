<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="modules/header.jsp" />
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
                        <div class="card-title">Product Details</div>
                    </div>
                    <div class="card-body">
                        <!-- Part 1: Profile Section -->
                        <div class="profile">
                            <h5><i class="fas fa-user-circle"></i> </h5>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                  <b><label>productName:</label> </b>
                                    <span>${product.productName}</span>
                                  <br>
                                   <b><label>ManuFacturer:</label> </b> 
                                    <span>${product.manuFacture}</span>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <!-- Part 2: Product Details Section -->
                        <div class="product-details">
                            <h6>Product Details</h6>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>Item Type:</label> 
                                    <span>${product.itemType}</span>
                                </div>
                                <div class="col-md-6">
                                    <label>Packing:</label> 
                                    <span>${product.packing}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>BatchNo:</label> 
                                    <span>${product.batchNo}</span>
                                </div>
                                <div class="col-md-6">
                                    <label>Godown:</label> 
                                    <span>${product.godown}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>OpeningStock:</label> 
                                    <span>${product.openingStock}</span>
                                </div>
                                <div class="col-md-6">
                                    <label>ExpiryDate:</label> 
                                    <span>${product.expiryDate}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>HsnCode:</label> 
                                    <span>${product.hsnCode}</span>
                                </div>
                            </div>
                            
                        </div>

                        <hr>
                        
                        <div class="price-details">
                            <h6>Price Details</h6>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>Purchase Price With GST:</label> 
                                    <span>${product.purchaseGst} RS</span>
                                </div>
                                <div class="col-md-6">
                                    <label>GST%:</label> 
                                    <span>${product.gst}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>Purchase Price:</label> 
                                    <span>${product.purchasePrice} RS</span>
                                </div>
                                <div class="col-md-6">
                                    <label>MRP:</label> 
                                    <span>${product.mrp} RS</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>Cash Price Retail:</label> 
                                    <span>${product.cashPrice} RS</span>
                                </div>
                                <div class="col-md-6">
                                    <label>Credit Price Retail:</label> 
                                    <span>${product.creditPrice} RS</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>Cash Price WholeSale:</label> 
                                    <span>${product.wholeSale} RS</span>
                                </div>
                                <div class="col-md-6">
                                    <label>Credit Price WholeSale:</label> 
                                    <span>${product.creditWholeSale} RS</span>
                                </div>
                            </div>
                            
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label>BarCode:</label> 
                                    <span>${product.barCode}</span>
                                </div>
                                </div>
                        </div>
                    </div>

                    <div class="card-footer d-none border-top-0"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End::app-content -->

<jsp:include page="modules/footer.jsp" />

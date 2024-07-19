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
                        <div class="card-title">Product Details</div>
                    </div>
                    <div class="card-body">
                        <!-- Part 1: Profile Section -->
                        <div class="profile">
                            <h5><i class="fas fa-user-circle"></i> </h5>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <b><label class="font-weight">Product Name:</label></b>
                                    <span>${product.productName}</span>
                                    <br>
                                    <b><label class="font-weight">Manufacturer:</label></b>
                                    <span>${product.manuFacture.shortName}</span>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <!-- Part 2: Product Details Section -->
                        <div class="product-details">
                            <h6 class="font-weight">Product Details</h6>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label class="font-weight">Item Type:</label> 
                                    <span>${product.itemType}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Packing:</label> 
                                    <span>${product.packing}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Batch No:</label> 
                                    <span>${product.batchNo}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label class="font-weight">Godown:</label> 
                                    <span>${product.godown}</span>
                                </div>
                                
                                
                                <div class="col-md-4">
                                    <label class="font-weight">Rack no:</label> 
                                    <span>${product.rackNo}</span>
                                </div>
                                
                                <div class="col-md-4">
                                    <label class="font-weight">Opening Stock:</label> 
                                    <span>${product.openingStock}</span>
                                </div>
                                
                            </div>
                            <div class="row mb-3">
                            <div class="col-md-4">
                                    <label class="font-weight">Expiry Date:</label> 
                                    <span>${product.expiryDate}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">HSN Code:</label> 
                                    <span>${product.hsnCode}</span>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <!-- Part 3: Manufacture Details Section -->
                        <div class="manufacture-details">
                            <h6 class="font-weight">Manufacture Details</h6>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label class="font-weight">MFR No:</label>
                                    <span>${product.manuFacture.mfrNO}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Short Name:</label>
                                    <span>${product.manuFacture.shortName}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Address:</label>
                                    <span>${product.manuFacture.addressOne}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label class="font-weight">City:</label>
                                    <span>${product.manuFacture.city}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Pin Code:</label>
                                    <span>${product.manuFacture.pinCode}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Telephone No:</label>
                                    <span>${product.manuFacture.telephoneNo}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label class="font-weight">Mobile No:</label>
                                    <span>${product.manuFacture.mobileNo}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Email:</label>
                                    <span>${product.manuFacture.email}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Web Address:</label>
                                    <span>${product.manuFacture.webAddress}</span>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <!-- Part 4: Price Details Section -->
                        <div class="price-details">
                            <h6 class="font-weight">Price Details</h6>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label class="font-weight">Purchase Price With GST:</label>
                                    <span>${product.purchaseGst} RS</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">GST%:</label>
                                    <span>${product.gst}</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Purchase Price:</label>
                                    <span>${product.purchasePrice} RS</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label class="font-weight">MRP:</label>
                                    <span>${product.mrp} RS</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Cash Price Retail:</label>
                                    <span>${product.cashPrice} RS</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Credit Price Retail:</label>
                                    <span>${product.creditPrice} RS</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <label class="font-weight">Cash Price Wholesale:</label>
                                    <span>${product.wholeSale} RS</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">Credit Price Wholesale:</label>
                                    <span>${product.creditWholeSale} RS</span>
                                </div>
                                <div class="col-md-4">
                                    <label class="font-weight">BarCode:</label>
                                    <span>${product.barCode}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="card-footer text-right">
                    <a href="/products/allProd" class="btn btn-danger btn-sm">Cancel</a>
                </div>

                    <div class="card-footer d-none border-top-0"></div>
                </div>
              
               </div>
            </div>
        </div>
    </div>
    
     <jsp:include page="../modules/footer.jsp" />

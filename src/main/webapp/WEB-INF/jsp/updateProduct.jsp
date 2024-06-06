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
                        <div class="card-title">Update Item</div>
                    </div>
                    <div class="card-body">
                        <form action="updateProduct" method="post">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Product ID</label>
                                        <input type="text" class="form-control" name="id" value="${product.id}" readonly="readonly">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Product Name</label>
                                        <input type="text" class="form-control" name="productName" value="${product.productName}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Manufacture</label>
                                        <input type="text" class="form-control" id="manufacture" name="manuFacture" value="${product.manuFacture}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Item Type</label>
                                        <input type="text" class="form-control" id="itemType" name="itemType" value="${product.itemType}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Packing</label>
                                        <input type="text" class="form-control" id="packing" name="packing" value="${product.packing}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Batch NO</label>
                                        <input type="text" class="form-control" id="batchno" name="batchNo" value="${product.batchNo}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Godown</label>
                                        <input type="text" class="form-control" id="godown" name="godown" value="${product.godown}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Opening Stock</label>
                                        <input type="text" class="form-control" id="openingStock" name="openingStock" value="${product.openingStock}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Expiry Date</label>
                                        <input type="text" class="form-control" id="expiryDate" name="expiryDate" value="${product.expiryDate}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">HSN Code</label>
                                        <input type="text" class="form-control" id="hsnCode" name="hsnCode" value="${product.hsnCode}">
                                    </div>
                                </div>

                                <hr>
                                <h4>Price Details</h4>
                                <hr>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Purchase Price With GST</label>
                                        <input type="text" class="form-control" id="purchaseGst" name="purchaseGst" value="${product.purchaseGst}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">GST%</label>
                                        <input type="text" class="form-control" id="gst" name="gst" value="${product.gst}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Purchase Price</label>
                                        <input type="text" class="form-control" id="purchasePrice" name="purchasePrice" value="${product.purchasePrice}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">MRP</label>
                                        <input type="text" class="form-control" id="mrp" name="mrp" value="${product.mrp}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Cash Price Retail</label>
                                        <input type="text" class="form-control" id="cashPrice" name="cashPrice" value="${product.cashPrice}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Credit Price Retail</label>
                                        <input type="text" class="form-control" id="creditPrice" name="creditPrice" value="${product.creditPrice}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Cash Price Wholesale</label>
                                        <input type="text" class="form-control" id="wholeSale" name="wholeSale" value="${product.wholeSale}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">Credit Price Wholesale</label>
                                        <input type="text" class="form-control" id="creditWholeSale" name="creditWholeSale" value="${product.creditWholeSale}">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-text" class="form-label">BarCode</label>
                                        <input type="text" class="form-control" id="barCode" name="barCode" value="${product.barCode}">
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

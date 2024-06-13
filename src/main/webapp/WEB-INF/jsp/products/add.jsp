<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../modules/header.jsp" />
<link href="<c:url value='/resources/assets/css/custom.css'/>" rel="stylesheet">
<!-- Bootstrap CSS for Modal -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

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
                        <form action="/products" method="post" id="productForm">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="productname" class="form-label">Product Name</label>
                                        <input type="text" class="form-control wide-input input-padding" id="productname" name="productName" placeholder="e.g:karate" required="required">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                     <div class="mb-3">
                                       <label for="manufacture" class="form-label">Manufacture</label>
                                      <div class="input-group">
                                         <select class="form-control input-padding form-select-sm" id="manufacture" name="manuFacture" required="required" style="width:70%; !important">
                                         <option value="">Select Manufacture</option>
                                         <c:forEach var="manufacturer" items="${shortnames}">
                                         <option value="${manufacturer.id}">${manufacturer.shortName}</option>
                                  
                                   </c:forEach>
                                           </select>
                <div class="input-group-append">
                    <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#addManufacturerModal" style="height: 30px;">+</button>
                </div>
            </div>
        </div>
    </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="itemType" class="form-label">Item Type</label>
                                        <input type="text" class="form-control custom-width input-padding" id="itemType" name="itemType" placeholder="e.g:Spray/Dripmix/Seeds/Fertilizers" required="required">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="packing" class="form-label">Packing</label>
                                        <input type="text" class="form-control custom-width input-padding" id="packing" name="packing" placeholder="e.g:100ml/1kg" required="required">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="batchno" class="form-label">Batch NO</label>
                                        <input type="text" class="form-control custom-width input-padding" id="batchno" name="batchNo" placeholder="e.g:Ab12345" required="required">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="godown" class="form-label">Storage</label>
                                        <select class="form-select custom-width form-select-sm" id="godown" name="godown">
                                            <option selected>Select Option</option>
                                            <option value="godown">Godown</option>
                                            <option value="Shop">Shop</option>
                                        </select>
                                    </div>
                                </div>
                                
                                 <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="godown" class="form-label">Rack No:</label>
                                        <select class="form-select custom-width form-select-sm" id="rack" name="rackNo" >
                                            <option selected>Select Option</option>
                                           <c:forEach var="rack" items="${racklist}">
                                         <option value=" ${rack.rackNo}"> ${rack.rackNo}</option>
                                         </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="openingStock" class="form-label">New Stock</label>
                                        <input type="text" class="form-control custom-width input-padding" id="openingStock" name="openingStock" placeholder="e.g:100">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="expiryDate" class="form-label">Expiry Date</label>
                                        <input type="date" class="form-control custom-width " id="expiryDate" name="expiryDate" required="required">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="hsnCode" class="form-label">HSN Code</label>
                                        <input type="text" class="form-control custom-width input-padding" id="hsnCode" name="hsnCode" placeholder="e.g:ab1234">
                                    </div>
                                </div>
                                <hr>
                                <h6>Price Details</h6>
                                <hr>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="purchaseGst" class="form-label">Purchase Price With GST</label>
                                        <input type="text" class="form-control custom-width input-padding" id="purchaseGst" name="purchaseGst" placeholder="e.g :400">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="gst" class="form-label">GST%</label>
                                        <input type="text" class="form-control custom-width input-padding" id="gst" name="gst" placeholder="e.g:18%">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="purchasePrice" class="form-label">Purchase Price</label>
                                        <input type="text" class="form-control custom-width input-padding" id="purchasePrice" name="purchasePrice" placeholder="320">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="mrp" class="form-label">MRP</label>
                                        <input type="text" class="form-control custom-width input-padding" id="mrp" name="mrp" placeholder="e.g:400" required="required">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="cashPrice" class="form-label">Cash Price Retail</label>
                                        <input type="text" class="form-control custom-width input-padding" id="cashPrice" name="cashPrice" placeholder="e.g :370" required="required">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="creditPrice" class="form-label">Credit Price Retail</label>
                                        <input type="text" class="form-control custom-width input-padding" id="creditPrice" name="creditPrice" placeholder="e.g :380">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="wholeSale" class="form-label">Cash Price Wholesale</label>
                                        <input type="text" class="form-control custom-width input-padding" id="wholeSale" name="wholeSale" placeholder="e.g:310">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="creditWholeSale" class="form-label">Credit Price Wholesale</label>
                                        <input type="text" class="form-control custom-width input-padding" id="creditWholeSale" name="creditWholeSale" placeholder="e.g :310">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="mb-3">
                                        <label for="barCode" class="form-label">BarCode</label>
                                        <input type="text" class="form-control custom-width input-padding" id="barCode" name="barCode" placeholder="e.g12345">
                                    </div>
                                </div>
                                <div class="col-xl-12">
<button class="btn btn-primary btn-sm" type="submit">Submit</button>
<a href="/home" class="btn btn-danger btn-sm">Cancel</a>
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
<!-- Modal for adding new manufacturer -->
<div class="modal fade" id="addManufacturerModal" tabindex="-1" aria-labelledby="addManufacturerModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addManufacturerModalLabel"> Manufacturer Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="manufacturerForm" action="/manufacture" method="post">
                    <div class="form-group">
                        <label for="mfrNO">MFR No:</label>
                        <input type="text" class="form-control input-padding" id="mfrNO" name="mfrNO"  placeholder="e.g:AB1234" required>
                    </div>
                    <div class="form-group">
                        <label for="shortName">MFR Name:</label>
                        <input type="text" class="form-control input-padding" id="shortName" name="shortName" placeholder="e.g: sygenta" required>
                    </div>
                    <div class="form-group">
                        <label for="addressOne">Address One:</label>
                        <input type="text" class="form-control input-padding" id="addressOne" name="addressOne" placeholder="e.g : hadpsar pune" required>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="city">City:</label>
                            <input type="text" class="form-control input-padding" id="city" name="city" placeholder="e.g :pune" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="pinCode">PinCode:</label>
                            <input type="text" class="form-control input-padding" id="pinCode" name="pinCode" placeholder="e.g :413308" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="telephoneNo">TelePhone NO:</label>
                            <input type="text" class="form-control input-padding" id="telephoneNo" name="telephoneNo" placeholder="e.g:0444-8000" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="mobileNo">Mobile NO:</label>
                            <input type="text" class="form-control input-padding" id="mobileNo" name="mobileNo" placeholder="e.g:9123456780" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control input-padding" id="email" name="email" placeholder="e.g:sygenata@gmail.com" required>
                    </div>
                    <div class="form-group">
                        <label for="webAddress">Web Address:</label>
                        <input type="text" class="form-control input-padding" id="webAddress" name="webAddress" placeholder=" e.g :http://webaddress.com" required>
                    </div>
                    <div>
                        <button type="button" class="btn btn-primary btn-sm" id="saveManufacturerBtn">Save</button>
                        <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap JS for Modal -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {
    $('#saveManufacturerBtn').on('click', function(e) {
        e.preventDefault();
        var form = $('#manufacturerForm');
        $.ajax({
            type: form.attr('method'),
            url: form.attr('action'),
            data: form.serialize(),
            success: function(response) {
                // Assuming response contains the new manufacturer object with an ID
                var newManufacturerId = response.id;
                // Append the new manufacturer ID to the dropdown
                $('#manufacture').append('<option value="' + newManufacturerId + '">' + newManufacturerId + '</option>');
                // Set the selected option to the newly added manufacturer ID
                $('#manufacture').val(newManufacturerId);
                $('#addManufacturerModal').modal('hide');
            },
            error: function(xhr, status, error) {
                alert('An error occurred: ' + xhr.responseText);
            }
        });
    });
});
</script>

<jsp
page="../modules/footer.jsp" />

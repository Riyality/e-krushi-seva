<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />


<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>

body{
 background-color: rgba(242,246, 249,1)!important;
 font-size: 13.008px!important;
}

.custom-width {
    width: 80% !important; /* Adjust the width of the input fields */
}

hr{
 width: 97%!important;
}
.custom-option {
   color: #888 !important; /* Adjust as needed */
        opacity: 0.5 !important; 
            margin-top: 5px !important ;
            font-size: 15px !important ;
}
 
</style>




<div class="main-content app-content">
	<div class="container-fluid my-2">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add Products</div>
					</div>
					<div class="card-body">
						<form action="/products" method="post" id="productForm">
							<div class="row">
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="productname" class="form-label">Product
											Name</label> <input type="text"
											class="form-control custom-width custom-placeholder inp_krushi "
											id="productname" name="productName" placeholder="karate"
											required pattern="[A-Za-z\s]+"
											title="Product Name should contain only letters and spaces.">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="manufacture" class="form-label">Manufacture</label>
										<div class="input-group">
											<select class="form-control custom-width form-select-lg inp_krushi"
												id="manufacture" name="manuFacture" required="required"
												>
												<option class="custom-option" disabled selected="selected" style="color: red !important;" value="">Select Manufacture</option>
												<c:forEach var="manufacturer" items="${shortnames}">
													<option value="${manufacturer.id} ">${manufacturer.shortName}</option>

												</c:forEach>
											</select>
											<div class="input-group-append">
												<button type="button"
													class="btn btn-outline-secondary d-flex align-items-center justify-content-center"
													data-toggle="modal" data-target="#addManufacturerModal"
													style="padding-top: 3px !important;height: 35px !important;">+</button>
											</div>

										</div>
									</div>
								</div>
								<div class="col-xl-1"></div>
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="itemType" class="form-label">Item Type</label> <input
											type="text" class="form-control custom-placeholder custom-width inp_krushi "
											id="itemType" name="itemType"
											placeholder="Spray/Dripmix/Seeds/Fertilizers" 
											pattern="[A-Za-z\s]+"
											title="Item Type should contain only letters and spaces.">
									</div>
								</div>
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="packing" class="form-label">Packing</label> <input
											type="text" class="form-control custom-placeholder custom-width inp_krushi"
											id="packing" name="packing" placeholder="100ml/1kg"
											required="required">
									</div>
								</div>
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="batchno" class="form-label">Batch NO</label> <input
											type="text" class="form-control custom-placeholder custom-width inp_krushi "
											id="batchno" name="batchNo" placeholder="Ab12345"
											
									>
									
									</div>
								</div>
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="godown" class="form-label">Storage</label> <select
											class="form-control custom-width form-select-lg inp_krushi" id="godown"
											name="godown">
											<option selected>Select Option</option>
											<option value="godown">Godown</option>
											<option value="Shop">Shop</option>
										</select>
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="godown" class="form-label">Rack No:</label> <select
											class="form-control custom-width form-select-lg inp_krushi" id="rack"
											name="rackNo">
											<option selected class="initial-option inp_krushi">Select Option</option>
											<c:forEach var="rack" items="${racklist}">
												<option value=" ${rack.rackNo}">${rack.rackNo}</option>
											</c:forEach>
										</select>
									</div>
								</div>


								<div class="col-xl-3">
									<div class="mb-3">
										<label for="openingStock" class="form-label">New Stock</label>
										<input type="text"
											class="form-control custom-placeholder custom-width inp_krushi"
											id="openingStock" name="openingStock" placeholder="100"
											pattern="\d*" required title="Only numbers are allowed"
											required min="0">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="expiryDate" class="form-label">Expiry Date</label>
										<input type="date" class="form-control custom-width inp_krushi"
											id="expiryDate" name="expiryDate" required="required">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="hsnCode" class="form-label">HSN Code</label> <input
											type="text" class="form-control custom-placeholder custom-width inp_krushi"
											id="hsnCode" name="hsnCode" placeholder="ab1234"
											 title="Only numbers are allowed">
									</div>
								</div>
								<hr>
								<h6>Price Details</h6>
								<hr>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="purchaseGst" class="form-label">Purchase
											Price With GST</label> <input type="text"
											class="form-control custom-placeholder custom-width inp_krushi"
											id="purchaseGst" name="purchaseGst" placeholder="400"
											pattern="\d*"  title="Only numbers are allowed">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="gst" class="form-label">GST%</label> <input
											type="text" class="form-control custom-placeholder custom-width inp_krushi"
											id="gst" name="gst" placeholder="18%" 
											 title="Only numbers are allowed">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="purchasePrice" class="form-label">Purchase
											Price</label> <input type="text"
											class="form-control custom-placeholder custom-width inp_krushi"
											id="purchasePrice" name="purchasePrice" placeholder="320"
											pattern="\d*" title="Only numbers are allowed">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="mrp" class="form-label">MRP</label> <input
											type="text" class="form-control custom-placeholder custom-width inp_krushi"
											id="mrp" name="mrp" placeholder="400" required="required"
											pattern="\d*" title="Only numbers are allowed">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="cashPrice" class="form-label">Cash Price
											Retail</label> <input type="text"
											class="form-control custom-placeholder custom-width inp_krushi"
											id="cashPrice" name="cashPrice" placeholder="370"
											 pattern="\d*"
											title="Only numbers are allowed">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="creditPrice" class="form-label">Credit
											Price Retail</label> <input type="text"
											class="form-control custom-placeholder custom-width inp_krushi"
											id="creditPrice" name="creditPrice" placeholder="380"
											 pattern="\d*" title="Only numbers are allowed">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="wholeSale" class="form-label">Cash Price
											Wholesale</label> <input type="text"
											class="form-control custom-placeholder custom-width inp_krushi"
											id="wholeSale" name="wholeSale" placeholder="310"
											 pattern="\d*" title="Only numbers are allowed">
									</div>
								</div>
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="creditWholeSale" class="form-label">Credit
											Price Wholesale</label> <input type="text"
											class="form-control custom-placeholder custom-width inp_krushi"
											id="creditWholeSale" name="creditWholeSale"
											placeholder="310" >
									</div>
								</div>
								<div class="col-xl-3">
								    <div class="mb-3">
								        <label for="barCode" class="form-label">BarCode</label> 
								        <input type="text" class="form-control custom-placeholder custom-width inp_krushi" id="barCode" name="barCode" placeholder="12345">
								    </div>
								</div>
								<div class="col-xl-6 d-flex align-items-center">
								    <div class="mb-0">
								        <button class="btn btn-success btn-sm" type="submit">Submit</button> &nbsp; &nbsp; &nbsp; 
								        <a href="javascript:history.back()">
								            <button type="button" class="btn btn-danger btn-sm">Cancel</button>
								        </a>
								    </div>
								</div>

							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
		
	</div>

</div>

<jsp:include page="../modules/footer.jsp" />

<div class="modal fade" id="addManufacturerModal" tabindex="-1"
	aria-labelledby="addManufacturerModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="addManufacturerModalLabel">
					Manufacturer Details</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="manufacturerForm" action="/manufacture" method="post">
					<div class="form-group">
						<label for="mfrNO">MFR No:</label> <input type="text"
							class="form-control inp_krushi " id="mfrNO" name="mfrNO"
							placeholder="AB1234" 
							 required>
					</div>
					<div class="form-group">
						<label for="shortName">MFR Name:</label> <input type="text"
							class="form-control inp_krushi" id="shortName"
							name="shortName" placeholder=" sygenta" 
							required="required">
					</div>
					<div class="form-group">
						<label for="addressOne">Address :</label> <input type="text"
							class="form-control inp_krushi" id="addressOne"
							name="addressOne" placeholder=" hadpsar pune" >
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="city">City:</label> <input type="text"
								class="form-control inp_krushi" id="city" name="city"
								placeholder="pune" >
						</div>
						<div class="form-group col-md-6">
							<label for="pinCode">PinCode:</label> <input type="text"
								class="form-control inp_krushi" id="pinCode" name="pinCode"
								placeholder="413308" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="telephoneNo">TelePhone NO:</label> <input type="text"
								class="form-control inp_krushi" id="telephoneNo"
								name="telephoneNo" placeholder="0444-8000" >
						</div>
						<div class="form-group col-md-6">
							<label for="mobileNo">Mobile NO:</label> <input type="text"
								class="form-control inp_krushi" id="mobileNo" name="mobileNo"
								placeholder="9123456780">
						</div>
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control inp_krushi" id="email" name="email"
							placeholder="sygenata@gmail.com" >
					</div>
					<div class="form-group">
						<label for="webAddress">Web Address:</label> <input type="text"
							class="form-control inp_krushi" id="webAddress"
							name="webAddress" placeholder=" http://webaddress.com"
							>
					</div>
					<div>
						<button type="button" class="btn btn-success btn-sm"
							id="saveManufacturerBtn">Save</button>
						<button type="button" class="btn btn-danger btn-sm"
							data-dismiss="modal">Cancel</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Bootstrap JS for Modal -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
                var newManufacturerId = response.id;
                var newManufacturerName = response.shortName;

                $('#manufacture').append(
                    '<option value="' + newManufacturerId + '">' + newManufacturerName + '</option>'
                );
                
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



<jsp:include page="modules/header.jsp" />


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
							<label for="form-text" class="form-label">Product Name</label> 
							<input type="text" class="form-control" id="productname" name="productName"  placeholder="Enter Product Name" required="required">
						</div>
					  </div>
					
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Manufacture</label> 
							<input type="text" class="form-control" id="manufacture" name="manuFacture" placeholder="Enter manufacture">
						</div>
					  </div>
					  
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Item Type</label> 
							<input type="text" class="form-control" id="itemType"  name="itemType"  placeholder="Enter Email">
						</div>
					  </div>
					  
					    <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Packing</label> 
							<input type="text" class="form-control" id="packing" name="packing" placeholder="Enter Packing Details">
						</div>
					  </div>
					
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Batch NO</label> 
							<input type="text" class="form-control" id="batchno" name="batchNo" placeholder="Enter Batch NO">
						</div>
					  </div>
					  
					   
					  <div class="col-xl-6">
						
				        <div class="mb-3">
				            <label class="form-label">Godown</label>
				            <select class="form-select" id="godown" name="godown">
				                <option selected>Select Option</option>
				                <option value="godown">godown</option>
				                <option value="Shop">Shop</option>
				              
				            </select>
				        </div>
					  </div>
					    <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">OpeningStock</label> 
							<input type="text" class="form-control" id="openingStock" name="openingStock" placeholder="Enter OpeningStock Details">
						</div>
					  </div>
					  
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Expiry Date</label> 
							<input type="Date" class="form-control"  id="expiryDate" name="expiryDate">
						</div>
					  </div>
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">HSN Code</label> 
							<input type="text" class="form-control" id="hsnCode" name="hsnCode" placeholder="Enter hsnCode ">
						</div>
					  </div>
					  <hr>
					  <h4>Price Details</h4>
					   <hr>
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Purchase price With GST</label> 
							<input type="text" class="form-control" id="purchaseGst" name="purchaseGst" placeholder="Enter purchasePrice with GST ">
						</div>
					  </div>
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label"> GST%</label> 
							<input type="text" class="form-control" id="gst"  name="gst" placeholder="Enter GST% ">
						</div>
					  </div>
					  
					    <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Purchase price</label> 
							<input type="text" class="form-control" id="purchasePrice"  name="purchasePrice" placeholder="Enter Purchase price ">
						</div>
					  </div>
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">MRP</label> 
							<input type="text" class="form-control" id="mrp" name="mrp" placeholder="Enter MRP">
						</div>
					  </div>
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Cash Price Retail</label> 
							<input type="text" class="form-control" id="cashPrice"  name="cashPrice" placeholder="Enter Cash Price Retail ">
						</div>
					  </div>
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Credit Price Retail</label> 
							<input type="text" class="form-control" id="creditPrice" name="creditPrice" placeholder="Enter Credit Price Retail ">
						</div>
					  </div>
					  
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Cash Price Wholesale</label> 
							<input type="text" class="form-control" id="wholeSale" name="wholeSale" placeholder="Enter Credit Price Wholesale ">
						</div>
					  </div>
					  
					    <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Credit Price Wholesale</label> 
							<input type="text" class="form-control" id="creditWholeSale" name="creditWholeSale" placeholder="Enter Credit Price Wholesale ">
						</div>
					  </div>
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">BarCode</label> 
							<input type="text" class="form-control" id="barCode" name="barCode" placeholder="Enter BarCode">
						</div>
					  </div>

					  <div class="col-xl-12">
						<button class="btn btn-primary" type="submit">Submit</button>
					  </div>
					</form>
					 </div>
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
<jsp:include page="modules/header.jsp" />


<!-- Start::app-content -->
<div class="main-content app-content">
	<div class="container-fluid my-5">


		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add Customer</div>
					</div>
					<div class="card-body">
					
					<div class="row">
					
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Full Name</label> 
							<input type="text" class="form-control" id="form-text" placeholder="Enter Full Name">
						</div>
					  </div>
					
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Email</label> 
							<input type="text" class="form-control" id="" placeholder="Enter Email">
						</div>
					  </div>
					
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Mobile</label>
							<div class="input-group">
					            <div class="input-group-text">+91</div>
					            <input type="text" class="form-control" id="" placeholder="Enter Mobile">
					        </div>
						</div>
					  </div>
					
					  <div class="col-xl-6">
						
				        <div class="mb-3">
				            <label class="form-label">Select Option</label>
				            <select class="form-select" id="autoSizingSelect">
				                <option selected>Select Option</option>
				                <option value="1">One</option>
				                <option value="2">Two</option>
				                <option value="3">Three</option>
				            </select>
				        </div>
					  </div>
					  
					  <div class="col-xl-6 mb-3">
						
				          <div class="row">
	                        <label class="form-label mb-1">Gender</label>
	                        
	                        <div class="col-xl-4">
	                            <div class="form-check">
	                                <input class="form-check-input" name="gender" type="radio" value="">
	                                <label class="form-check-label" for="">
	                                    Male
	                                </label>
	                            </div>
	                        </div>
	                        <div class="col-xl-4">
	                            <div class="form-check">
	                                <input class="form-check-input" name="gender" type="radio" value="">
	                                <label class="form-check-label" for="">
	                                    Female
	                                </label>
	                            </div>
	                        </div>
	                        <div class="col-xl-4">
	                            <div class="form-check">
	                                <input class="form-check-input" name="gender" type="radio" value="">
	                                <label class="form-check-label" for="">
	                                    Female
	                                </label>
	                            </div>
	                        </div>
	                    </div>
	                    
	                </div>
	                
	                
					
					  <div class="col-xl-12">
						
				        <div class="mb-3">
				            <label class="form-label">Remark</label>
				            <textarea class="form-control" rows="4" cols=""></textarea>
				        </div>
				        
					  </div>
				        
					  </div>
					  
					  
					  
					  <div class="col-xl-12">
						<button class="btn btn-primary" type="submit">Submit</button>
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
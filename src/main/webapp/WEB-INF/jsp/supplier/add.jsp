<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../modules/header.jsp" />

<style>
.select{
 color: #d9dde2 !important;
}
</style>
<!-- Start::app-content -->
<div class="main-content app-content" >
	<div class="container-fluid my-5">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add Supplier</div>
					</div>
					<div class="card-body">
						<form action="/suppliers" method="post">
							<div class="row">

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="supplierName" class="form-label">Supplier
											Name</label> <input type="text" class="form-control inp_krushi"
											id="supplierName" name="name"
											placeholder="swaraj  ghadage" 
											pattern="[A-Za-z\s]+" required="required"
											title="Only letters and spaces are allowed">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="address" class="form-label">Address</label> <input
											type="text" class="form-control inp_krushi" id="address" name="address"
											placeholder="hatid ,sangola" >
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="state" class="form-label">State</label> <input
											type="text" class="form-control inp_krushi" id="state" name="state"
											placeholder="maharashtra"  pattern="[A-Za-z\s]+"
											title="Only letters and spaces are allowed">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="city" class="form-label">City</label> <input
											type="text" class="form-control inp_krushi" id="city" name="city"
											placeholder="sangola"  pattern="[A-Za-z\s]+"
											title="Only letters and spaces are allowed">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="pincode" class="form-label">Pincode</label> <input
											type="text" class="form-control inp_krushi" id="pincode" name="pincode"
											placeholder="413307"  pattern="\d{6}"
											title="Only 6 digits are allowed">
									</div>
								</div>

								

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="email" class="form-label">Email</label> <input
											type="email" class="form-control inp_krushi" id="email" name="email"
											placeholder="abc@gmail.com" >
									</div>
								</div>

										 <div class="col-xl-4">
								        <div class="mb-3">
								            <label for="mobileNo" class="form-label">Mobile No</label>
								            <input
								                type="text"
								                class="form-control inp_krushi"
								                id="mobileNo"
								                name="mobileNo"
								                placeholder="8597456123"
								                required
								                pattern="\d{10}"
								                title="Only 10 digits are allowed"
								            >
								        </div>
								    </div>


								<div class="col-xl-4">
									<div class="mb-3">
										<label for="adharCardNo" class="form-label">Aadhar Card
											No</label> <input type="text" class="form-control inp_krushi" id="adharCardNo"
											name="adharCardNo" placeholder="78945612398" 
											pattern="\d{12}" title="Only 12 digits are allowed">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="openingBalance" class="form-label">Opening
											Balance</label> <input type="text" class="form-control inp_krushi"
											id="openingBalance" name="openingBalance"
											placeholder="0000" 
											
										>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="credit" class="form-label">Credit</label> <select
											class="form-control   inp_krushi  " id="credit" name="credit" >
											<option class="form-control" value="" disabled="disabled" selected="selected" >Select Credit</option>
											<option value="cash">Cash</option>
											<option value="online">Online</option>
										</select>
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="gstNo" class="form-label">GST No</label> <input
											type="text" class="form-control inp_krushi" id="gstNo" name="gstNo"
											placeholder="Ab1234567890CDA"  
											title="Only 15 digits are allowed">
									</div>
								</div>

								<div class="col-xl-4">
									<div class="mb-3">
										<label for="gst" class="form-label">GST</label> <select
											class=" inp_krushi form-control  form-select-lg inp_krushi " id="gst" name="gstType" >
											<option value="" disabled="disabled" selected="selected"   >Select Gst</option>
											<option value="SGST">SGST</option>
											<option value="CGST">CGST</option>
										</select>
									</div>
								</div>

								<div class="col-xl-12">
									<button class="btn btn-primary btn-sm" type="submit">Submit</button> &nbsp;&nbsp;&nbsp;&nbsp;
									<a href="javascript:history.back()">
										<button type="button" class="btn btn-danger btn-sm">Cancel</button>
									</a>
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

<script>
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('myForm').addEventListener('submit', function(event) {
        // Get the mobile number input field
        var mobileNoField = document.getElementById('mobileNo');
        
        // Get the value of the mobile number input
        var mobileNoValue = mobileNoField.value;
        
        // Check if the value is not empty and does not already start with +91
        if (mobileNoValue && !mobileNoValue.startsWith('+91')) {
            // Prepend the +91 prefix
            mobileNoField.value = '+91' + mobileNoValue;
        }
    });
});
</script>



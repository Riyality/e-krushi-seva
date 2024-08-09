<jsp:include page="../modules/header.jsp" />


<!-- Start::app-content -->
<div class="main-content app-content">
	<div class="container-fluid my-5">
		<!-- Start:: row-1 -->
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add New Customer</div>
					</div>
					<div class="card-body">
						<form action="/customers" method="post"
							onsubmit="return validateForm()">
							<div class="row">
								<div class="col-xl-3">
									<div class="mb-3">
										<label for="customer_name" class="form-label">Customer
											Name</label> <input type="text" class="form-control inp_krushi"
											id="customerName" name="customer_name"
											placeholder="Sonam Sharma" pattern="[A-Za-z\s]+"
											title="Only letters and spaces are allowed" required>
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="area" class="form-label">Area</label> <input
											type="text" class="form-control inp_krushi" id="area"
											name="area" placeholder=" Near ICIC Bank">


									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="address" class="form-label">Address</label>
										<textarea type="text" class="form-control inp_krushi"
											id="address" name="address"
											placeholder=" Viman Nagar,pune "></textarea>
									</div>
								</div>

<div class="col-xl-3">
									<div class="mb-3">
										<label for="group" class="form-label">Group</label> <select
											style="font-size: 13px !important;"
											class="form-control inp_krushi p-1" id="group" name="group"
											>
											<option value="" disabled selected>Select Group</option>
											<option value="Individual Farmers">Individual
												Farmers</option>
											<option value="Farmer Cooperatives">Farmer
												Cooperatives</option>
											<option value="Horticulture">Horticulture</option>
											<option value="Dairy Farmers">Dairy Farmers</option>
											<option value="Poultry Farmers">Poultry Farmers</option>
											<option value="Agri-entrepreneurs">Agri-entrepreneurs</option>
											<option value="Input Suppliers">Input Suppliers</option>
											<option value="Beneficiaries of Government Schemes">Beneficiaries
												of Government Schemes</option>
										</select>
									</div>
								</div>


								<div class="col-xl-3">
									<div class="mb-3">
										<label for="state" class="form-label">State</label> 
										<select class="form-control inp_krushi p-1" id="state" name="state" onchange="filterDistricts()" required>
											<option value="" disabled selected>Select State</option>
											<option value="Maharashtra">Maharashtra</option>
											<option value="Goa">Goa</option>
											<option value="Karnataka">Karnataka</option>
											<!-- Add more states as needed -->
										</select>
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="district" class="form-label">District</label> 
										<select class="form-control inp_krushi p-1" id="district" name="district" onchange="filterTalukas()" required>
											<option value="" disabled selected>Select District</option>
											<!-- District options will be dynamically added -->
										</select>
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="taluka" class="form-label">Taluka</label> 
										<select class="form-control inp_krushi p-1" id="taluka" name="taluka" required>
											<option value="" disabled selected>Select Taluka</option>
											<!-- Taluka options will be dynamically added -->
										</select>
									</div>
								</div>

								

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="categories" class="form-label">Categories</label>
										<select style="font-size: 13px !important;"
											class="form-control inp_krushi p-1" id="categories"
											name="categories" >
											<option value="" disabled selected>Select Category</option>
											<option value="Farmer">Farmer</option>
											<option value="Supplier">Supplier</option>
											<option value="Distributor">Distributor</option>
											<option value="Retailer">Retailer</option>
											<option value="Wholesaler">Wholesaler</option>
											<option value="Agricultural Consultant">Agricultural
												Consultant</option>
											<option value="Equipment Dealer">Equipment Dealer</option>
											<option value="Seed Dealer">Seed Dealer</option>
											<option value="Fertilizer Dealer">Fertilizer Dealer</option>
											<option value="Pesticide Dealer">Pesticide Dealer</option>
											<!-- Add more options as needed -->
										</select>
									</div>
								</div>

								 <div class="col-xl-3">
                                    <div class="mb-3">
                                        <label for="mobile_no" class="form-label">Mobile No</label>
                                        <input type="text" class="form-control inp_krushi" id="mobile_no"
                                            name="mobile_no" placeholder="9987654323"
                                            pattern="^[6789]\d{9}$"
                                            title="Enter a 10-digit mobile number without +91"
                                            maxlength="10" oninput="validateMobileNo(this)">
                                    </div>
                                </div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="email_id" class="form-label">Email ID</label> <input
											type="email" class="form-control inp_krushi" id="email_id"
											name="email_id" placeholder="abc@gmail.com"
											pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
											title="Enter Email">
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="gst_no" class="form-label">GST No</label> <input
											type="text" class="form-control inp_krushi" id="gst_no"
											name="gst_no" placeholder=" 22AAAAA0000A1Z5"
											>
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="aadhar_no" class="form-label">Aadhar No</label> <input
											type="text" class="form-control inp_krushi" id="aadhar_no"
											name="aadhar_no" placeholder=" 3489 8316 4321"
											pattern="\d{12}"
											title="Aadhar number must be exactly 12 digits"
											maxlength="12" >
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="pin_code" class="form-label">Pincode</label> <input
											type="text" class="form-control inp_krushi" id="pin_code"
											name="pin_code" placeholder=" 413307" pattern="\d*"
											title="Enter a valid pincode" maxlength="6" >
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="opening_balance" class="form-label">Opening
											Balance</label> <input type="text" class="form-control inp_krushi"
											id="opening_balance" name="opening_balance"
											placeholder=" 23000 " pattern="\d*"
											title="Enter a valid number">
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="payment_type" class="form-label ">Payment
											Type</label> <select style="font-size: 13px !important;"
											class="form-control inp_krushi p-1" id="payment_type"
											name="payment_type" required>
											<option value="Debit">Debit</option>
											<option value="Credit">Credit</option>
											<option value="Cash">Cash</option>
										</select>
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="interest" class="form-label">Interest</label> <input
											type="text" class="form-control inp_krushi" id="interest"
											name="interest" placeholder=" 5" pattern="\d*"
											title="Enter a valid number">
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="interest_type" class="form-label">Interest
											Type</label> <select class="form-control inp_krushi p-1"
											id="interest_type" name="interest_type" >
											<option value="" disabled selected>Select Interest
												Type</option>
											<option value="Simple">Simple</option>
											<option value="Compound">Compound</option>
											<option value="Fixed">Fixed</option>
										</select>
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="gst" class="form-label">GST</label> <input
											type="text" class="form-control inp_krushi" id="gst"
											name="gst" placeholder=" 18%" pattern="\d*" >
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="status" class="form-label">Status</label> <select
											style="font-size: 13px !important;"
											style="font-size: 13px !important;"
											class="form-control inp_krushi p-1" id="status" name="status"
											>
											<option value="Active">Active</option>
											<option value="Inactive">Inactive</option>
										</select>
									</div>
								</div>

								<div class="col-xl-3">
									<div class="mb-3">
										<label for="birthday" class="form-label">Birthday</label> <input
											type="date" class="form-control inp_krushi" id="birthday"
											name="birthday" >
									</div>
								</div>

								<div class="col-xl-12">
									<button class="btn btn-success btn-sm" type="submit">Submit</button>&nbsp;&nbsp;&nbsp;
									<a href="javascript:history.back()">
										<button type="button" class="btn btn-danger btn-sm">Cancel</button>
									</a>

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
<script>
    function validateForm() {
        const mobileNoField = document.getElementById('mobile_no');
        let mobileNo = mobileNoField.value.trim();

        // Prepend +91 to the mobile number
        if (!mobileNo.startsWith('+91')) {
            mobileNoField.value = '+91' + mobileNo;
        }

        // Validation to ensure the number is correctly formatted
        const mobilePattern = /^\+91[6789]\d{9}$/;
        if (!mobilePattern.test(mobileNoField.value)) {
            alert('Please enter a valid mobile number');
            return false;
        }

        return true;
    }

    function validateMobileNo(input) {
        // Remove any existing +91 prefix if user tries to enter it
        input.value = input.value.replace(/^\+91/, '');
    }
</script>

<script>
const districtData = {
		"Maharashtra": [
		    "Ahmednagar",
		    "Akola",
		    "Amravati",
		    "Aurangabad",
		    "Beed",
		    "Bhandara",
		    "Buldhana",
		    "Chandrapur",
		    "Dhule",
		    "Gadchiroli",
		    "Gondia",
		    "Hingoli",
		    "Jalgaon",
		    "Jalna",
		    "Kolhapur",
		    "Latur","Mumbai City","Mumbai Suburban","Nagpur","Nanded","Nandurbar","Nashik", "Osmanabad","Palghar","Parbhani","Pune","Raigad","Ratnagiri","Sangli", "Satara",  "Sindhudurg",
  "Solapur",
 "Thane",
"Wardha","Washim", "Yavatmal"
    		]
,
        "Goa": ["North Goa", "South Goa"],
        "Karnataka": ["Bangalore", "Mysore", "Hubli"]
    };

    const talukaData = {
    	    "Ahmednagar": ["Ahmednagar", "Shrigonda", "Kopargaon", "Rahata", "Shrirampur", "Nevasa", "Sangamner", "Akole", "Parner", "Jamkhed", "Pathardi", "Shevgaon", "Rahuri"],
    	    "Akola": ["Akola", "Akot", "Balapur", "Barshitakli", "Murtijapur", "Patur", "Telhara"],
    	    "Amravati": ["Amravati", "Achalpur", "Chandurbazar", "Chikhaldara", "Daryapur", "Morshi", "Warud", "Dhamangaon", "Nandgaon Khandeshwar", "Bhatkuli", "Teosa"],
    	    "Aurangabad": ["Aurangabad", "Kannad", "Khuldabad", "Sillod", "Soegaon", "Vaijapur", "Gangapur", "Paithan", "Phulambri"],
    	    "Beed": ["Beed", "Ashti", "Georai", "Majalgaon", "Parli", "Patoda", "Shirur", "Wadwani", "Ambajogai", "Kaij", "Dharur"],
    	    "Bhandara": ["Bhandara", "Mohadi", "Pauni", "Sakoli", "Lakhani", "Lakhandur", "Tumsar"],
    	    "Buldhana": ["Buldhana", "Chikhli", "Deulgaon Raja", "Jalgaon Jamod", "Khamgaon", "Lonar", "Mehkar", "Motala", "Nandura", "Sangrampur", "Shegaon", "Sindkhed Raja", "Malkapur"],
    	    "Chandrapur": ["Chandrapur", "Brahmapuri", "Bhadravati", "Warora", "Nagbhid", "Mul", "Pombhurna", "Sindewahi", "Saoli", "Gondpipri", "Ballarpur", "Rajura", "Korpana", "Jiwati"],
    	    "Dhule": ["Dhule", "Shirpur", "Sakri", "Shindkheda"],
    	    "Gadchiroli": ["Gadchiroli", "Armori", "Aheri", "Etapalli", "Bhamragad", "Kurkheda", "Desaiganj (Vadasa)", "Dhanora", "Mulchera", "Chamorshi", "Korchi", "Sironcha"],
    	    "Gondia": ["Gondia", "Amgaon", "Arjuni Morgaon", "Deori", "Goregaon", "Salekasa", "Sadak Arjuni", "Tirora"],
    	    "Hingoli": ["Hingoli", "Basmath", "Aundha Nagnath", "Kalamnuri", "Sengaon"],
    	    "Jalgaon": ["Jalgaon", "Amalner", "Bhusawal", "Bodwad", "Chalisgaon", "Dharangaon", "Erandol", "Jamalpur", "Muktainagar", "Parola", "Pachora", "Yawal", "Raver"],
    	    "Jalna": ["Jalna", "Ambad", "Badnapur", "Bhokardan", "Ghansawangi", "Mantha", "Partur"],
    	    "Kolhapur": ["Kolhapur", "Ajara", "Bavda", "Bhudargad", "Chandgad", "Gagan Bavda", "Gargoti", "Hatkanangale", "Kagal", "Karveer", "Panhala", "Radhanagari", "Shahuwadi", "Shirol"],
    	    "Latur": ["Latur", "Ausa", "Chakur", "Deoni", "Jalkot", "Nilanga", "Renapur", "Shirur Anantpal", "Udgir"],
    	    "Mumbai City": ["Mumbai City"],
    	    "Mumbai Suburban": ["Borivali", "Andheri", "Kurla"],
    	    "Nagpur": ["Nagpur", "Kamptee", "Katol", "Kalmeshwar", "Saoner", "Narkhed", "Ramtek", "Mouda", "Parseoni", "Umred", "Kuhi", "Bhiwapur", "Hingna"],
    	    "Nanded": ["Nanded", "Ardhapur", "Bhokar", "Biloli", "Deglur", "Dharmabad", "Hadgaon", "Himayatnagar", "Kandhar", "Kinwat", "Loha", "Mudkhed", "Mukhed", "Naigaon", "Umri"],
    	    "Nandurbar": ["Nandurbar", "Akkalkuwa", "Akrani", "Taloda", "Shahada", "Navapur"],
    	    "Nashik": ["Nashik", "Baglan", "Chandvad", "Deola", "Dindori", "Igatpuri", "Kalwan", "Malegaon", "Nandgaon", "Niphad", "Peth", "Sinnar", "Surgana", "Trimbakeshwar", "Yeola"],
    	    "Osmanabad": ["Osmanabad", "Bhoom", "Kalamb", "Lohara", "Omerga", "Paranda", "Tuljapur", "Washi"],
    	    "Palghar": ["Palghar", "Dahanu", "Jawhar", "Mokhada", "Talasari", "Vikramgad", "Vasai", "Wada"],
    	    "Parbhani": ["Parbhani", "Jintur", "Gangakhed", "Selu", "Sonpeth", "Pathri", "Purna", "Palam", "Manwath"],
    	    "Pune": ["Pune", "Baramati", "Bhor", "Daund", "Haveli", "Indapur", "Junnar", "Khed", "Maval", "Mulshi", "Purandar", "Shirur", "Velhe"],
    	    "Raigad": ["Alibag", "Karjat", "Khalapur", "Mahad", "Mangaon", "Murud", "Panvel", "Pen", "Poladpur", "Roha", "Sudhagad", "Tala", "Uran"],
    	    "Ratnagiri": ["Ratnagiri", "Chiplun", "Dapoli", "Guhagar", "Khed", "Lanja", "Mandangad", "Rajapur", "Sangameshwar"],
    	    "Sangli": ["Sangli", "Atpadi", "Kadegaon", "Kavathe Mahankal", "Jat", "Miraj", "Palus", "Shirala", "Tasgaon", "Walwa"],
    	    "Satara": ["Satara", "Jaoli", "Karad", "Khatav", "Khandala", "Mahabaleshwar", "Man", "Patan", "Phaltan", "Wai"],
    	    "Sindhudurg": ["Sindhudurg", "Devgad", "Dodamarg", "Kankavli", "Kudal", "Malvan", "Sawantwadi", "Vengurla"],
    	    "Solapur": ["Solapur North", "Solapur South", "Akkalkot", "Barshi", "Karmala", "Madha", "Malshiras", "Mangalvedha", "Mohol", "Pandharpur", "Sangola"],
    	    "Thane": ["Thane", "Ambarnath", "Bhiwandi", "Kalyan", "Murbad", "Shahapur", "Ulhasnagar", "Vasai-Virar"],
    	    "Wardha": ["Wardha", "Arvi", "Ashti", "Deoli", "Hinganghat", "Karanja", "Seloo"],
    	    "Washim": ["Washim", "Karanja", "Mangrulpir", "Manora", "Risod"],
    	    "Yavatmal": ["Yavatmal", "Arni", "Babhulgaon", "Digras", "Darwha", "Ghatanji", "Kalamb", "Maregaon", "Mahagaon", "Ner", "Pusad", "Ralegaon", "Umarkhed", "Wani", "Zari Jamani"]
    	};


    function filterDistricts() {
        const stateSelect = document.getElementById('state');
        const districtSelect = document.getElementById('district');
        const talukaSelect = document.getElementById('taluka');
        const selectedState = stateSelect.value;

        // Clear existing options
        districtSelect.innerHTML = '<option value="" disabled selected>Select District</option>';
        talukaSelect.innerHTML = '<option value="" disabled selected>Select Taluka</option>';

        if (selectedState in districtData) {
            const districts = districtData[selectedState];
            districts.forEach(district => {
                const option = document.createElement('option');
                option.value = district;
                option.text = district;
                districtSelect.add(option);
            });
        }
    }

    function filterTalukas() {
        const districtSelect = document.getElementById('district');
        const talukaSelect = document.getElementById('taluka');
        const selectedDistrict = districtSelect.value;

        // Clear existing options
        talukaSelect.innerHTML = '<option value="" disabled selected>Select Taluka</option>';

        if (selectedDistrict in talukaData) {
            const talukas = talukaData[selectedDistrict];
            talukas.forEach(taluka => {
                const option = document.createElement('option');
                option.value = taluka;
                option.text = taluka;
                talukaSelect.add(option);
            });
        }
    }
</script>


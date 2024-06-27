package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.krushiSevaCenter.dto.BorrowRequestDto;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.Product;
import com.krushiSevaCenter.entity.customer;
import com.krushiSevaCenter.service.BorrowingService;

@Controller
@RequestMapping("/borrow")
public class BorrowingController {

	
	@Autowired
	private BorrowingService  borrowservice;

@GetMapping
public String alldata(Model model) {
	 List<CustomerBill> borrowingcustomers = borrowservice.borrowedCustomers();
    model.addAttribute("itemList", borrowingcustomers);
    return "borrow/all";
}


@RequestMapping("/details")
public String getDetails(@RequestParam long id, Model model) {
    CustomerBill bill = borrowservice.getDetails(id);
    
    if (bill != null) {
        model.addAttribute("bill", bill);
        return "borrow/details"; 
    } else {
        model.addAttribute("msg", "bill not found");
        return "error"; 
    }

}


@RequestMapping(value = "/update", method = RequestMethod.POST)
public String updatebill(@ModelAttribute CustomerBill bill, Model model) {
	boolean isUpdated = borrowservice.updateBill(bill);

if (isUpdated) {
    model.addAttribute("msg", "Bill  updated successfully!");
    return "borrow/result";
} else {
    model.addAttribute("errorMsg", "Bill update failed!");
}

return "borrow/error";
}

}

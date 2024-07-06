package com.krushiSevaCenter.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.krushiSevaCenter.entity.BillHistory;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.service.BorrowingService;

@Controller
@RequestMapping("/borrow")
public class BorrowingController {

	@Autowired
	private BorrowingService borrowservice;

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
	@PostMapping("/update")
	public String updatePaymentAndHistory(@ModelAttribute("customerBill") CustomerBill customerBill,
	                                      @RequestParam("online_Payment") double onlinePayment,
	                                      @RequestParam("cash_Payment") double cashPayment,
	                                      @ModelAttribute("billHistory") BillHistory billHistory,
	                                      RedirectAttributes redirectAttributes) {
	    try {
	    	   // Set the billId in billHistory
	        billHistory.setBillId(customerBill);
	        billHistory.setOnline_Payment(onlinePayment);
	        billHistory.setCash_Payment(cashPayment);
	        billHistory.setBillDate(LocalDate.now()); 
	        
	    	borrowservice.saveBillHistory(billHistory);
	    	borrowservice.updateCustomerBill(customerBill, onlinePayment, cashPayment);
	        redirectAttributes.addFlashAttribute("successMessage", "Bill and History updated successfully.");
	    } catch (Exception e) {
	        redirectAttributes.addFlashAttribute("errorMessage", "Failed to update Bill and History: " + e.getMessage());
	    }
	    return "redirect:/borrow/details?id=" + customerBill.getId();
	}

	

	
		
}

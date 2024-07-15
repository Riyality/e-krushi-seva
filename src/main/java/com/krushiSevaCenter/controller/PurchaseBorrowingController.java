package com.krushiSevaCenter.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.krushiSevaCenter.entity.BillHistory;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.PurchaseBill;
import com.krushiSevaCenter.entity.PurchaseBillHistory;
import com.krushiSevaCenter.service.PurchaseBorrowingService;

@Controller
@RequestMapping("/purchaseborrow")
public class PurchaseBorrowingController {

	@Autowired
	private PurchaseBorrowingService  borrowingService;
	
	@GetMapping
	public String alldata(Model model) {
		List<PurchaseBill> borrowingpurchase = borrowingService.borrowedCustomers();
		model.addAttribute("itemList", borrowingpurchase);
		return "purchaseBorrow/all";
	}
	
	@RequestMapping("/details")
	public String getDetails(@RequestParam long id, Model model) {
		PurchaseBill bill = borrowingService.getDetails(id);

		if (bill != null) {
			model.addAttribute("bill", bill);
			return "purchaseBorrow/details";
		} else {
			model.addAttribute("msg", "bill not found");
			
			return "purchaseBorrow/error";
		}

	}
	
	@PostMapping("/update")
	public String updatePaymentAndHistory(@ModelAttribute("purchaseBill") PurchaseBill purchaseBill,
	                                      @RequestParam("online_Payment") double onlinePayment,
	                                      @RequestParam("cash_Payment") double cashPayment,
	                                      @RequestParam("nextPaymentStatus") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate nextPaymentStatus,
	                                      @RequestParam("billDate") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate billDate,
	                                      RedirectAttributes redirectAttributes) {
	    try {
	        // Retrieve existing purchase bill by ID
	        PurchaseBill existingBill = borrowingService.findPurchaseBillById(purchaseBill.getId());

	        // Calculate new payment amounts and update the bill
	        double newOnlinePayment = existingBill.getOnlinePayment() + onlinePayment;
	        double newCashPayment = existingBill.getCashPayment() + cashPayment;
	        double newPaidAmount = existingBill.getPaidAmount() + onlinePayment + cashPayment;
	        double newRemainingAmount = existingBill.getAmount() - newPaidAmount;
	        String payStatus = (newRemainingAmount <= 0) ? "Paid" : "Pending";

	        existingBill.setOnlinePayment(newOnlinePayment);
	        existingBill.setCashPayment(newCashPayment);
	        existingBill.setPaidAmount(newPaidAmount);
	        existingBill.setRemainingAmount(newRemainingAmount);
	        existingBill.setNextPaymentStatus(nextPaymentStatus);
	        existingBill.setDate(billDate);
	        existingBill.setPayStatus(payStatus);

	        // Update the existing bill in the service layer
	        borrowingService.updateCustomerBill(existingBill, newOnlinePayment, newCashPayment, newPaidAmount, newRemainingAmount, payStatus);

	        // Save bill history
	        PurchaseBillHistory billHistory = new PurchaseBillHistory();
	        billHistory.setPurchaseId(existingBill);
	        billHistory.setOnline_Payment(onlinePayment);
	        billHistory.setCash_Payment(cashPayment);
	        billHistory.setBillDate(LocalDate.now());
	        billHistory.setNextPaymentStatus(nextPaymentStatus);
	        borrowingService.saveBillHistory(billHistory);

	        // Redirect with success message
	        redirectAttributes.addFlashAttribute("successMessage", "Bill and History updated successfully.");
	    } catch (Exception e) {
	        // Redirect with error message
	        redirectAttributes.addFlashAttribute("errorMessage", "Failed to update Bill and History: " + e.getMessage());
	    }
	  
	    return "redirect:/purchaseborrow/details?id=" + purchaseBill.getId();
	}

	

	@GetMapping("/bill_History")
	public String showBillHistory(@RequestParam("id") Long purchaseId, Model model) {
	    try {
	       
	        List<PurchaseBillHistory> billHistoryList = borrowingService.getBillHistoryByBillId(purchaseId);
	        
	       
	        model.addAttribute("billHistoryList", billHistoryList);
	        model.addAttribute("billId", purchaseId); 
	    } catch (Exception e) {
	    
	        model.addAttribute("errorMessage", "Failed to fetch Bill History: " + e.getMessage());
	    }
	    
	    return "purchaseBorrow/purchaseHistory";
	}


}

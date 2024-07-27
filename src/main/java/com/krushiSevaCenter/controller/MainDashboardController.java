package com.krushiSevaCenter.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.Product;
import com.krushiSevaCenter.entity.PurchaseBill;
import com.krushiSevaCenter.entity.User;
import com.krushiSevaCenter.service.MainDashboardService;

@Controller
public class MainDashboardController {

	@Autowired
	private MainDashboardService service;

	@GetMapping("/home")
	public String getExpiringProductsData(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/login";
		}

		long count = service.countProductsExpiringInCurrentMonth();
		List<Product> expiringProducts = service.findProductsExpiringInCurrentMonth();

		long countLowStockProducts = service.countProductsOpeningStockLessThan(2);
		List<Product> lowStockProducts = service.findProductsOpeningStockLessThan(2);

		long countExpiredProducts = service.countExpiredProducts();
		List<Product> expiredProducts = service.findExpiredProducts();

		long countCustomersPaidToday = service.countCustomersPaidToday();
		List<CustomerBill> customersPaidToday = service.findCustomersPaidToday();

		long countBillsWithRemainingAmount = service.countBillsWithRemainingAmount();
		List<CustomerBill> billsWithRemainingAmount = service.findBillsWithRemainingAmount();

		long countpurchase = service.countPurchase();
		List<PurchaseBill> bills = service.listPurchase();

		long countSuppliersPaidToday = service.countSuppliersPaidToday();
		List<PurchaseBill> SupplierPaidToday = service.findSuppliersPaidToday();

		model.addAttribute("count", count);
		model.addAttribute("expiringProducts", expiringProducts);

		model.addAttribute("countStockLessThanTwo", countLowStockProducts);
		model.addAttribute("productsWithStockLessThanTwo", lowStockProducts);

		model.addAttribute("countExpiredProducts", countExpiredProducts);
		model.addAttribute("expiredProducts", expiredProducts);

		model.addAttribute("countCustomersPaidToday", countCustomersPaidToday);
		model.addAttribute("customersPaidToday", customersPaidToday);

		model.addAttribute("countBillsWithRemainingAmount", countBillsWithRemainingAmount);
		model.addAttribute("billsWithRemainingAmount", billsWithRemainingAmount);

		model.addAttribute("countpurchase", countpurchase);
		model.addAttribute("bills", bills);

		model.addAttribute("countSuppliersPaidToday", countSuppliersPaidToday);
		model.addAttribute("SupplierPaidToday", SupplierPaidToday);

		return "mainDashboard/index";
	}

}

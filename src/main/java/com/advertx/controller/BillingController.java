package com.advertx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.advertx.entities.Billing;
import com.advertx.entities.Contact;
import com.advertx.service.BillingService;
import com.advertx.service.ContactService;


@Controller
public class BillingController {
	
	@Autowired
	private BillingService billingService;
	
	public BillingController(BillingService billingService) {
		this.billingService = billingService;
	}

	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/generateBill")
	public String generateBillPage(@RequestParam("id") long id,Model model) {
		Contact contact = contactService.getContectById(id);
		model.addAttribute("contact", contact);
		return "generate_bill";
	}
	
	@RequestMapping("/saveBill")
	public String billingAmount(@ModelAttribute("billing") Billing billing,ModelMap modelMap) {
		billingService.save(billing);
		modelMap.addAttribute("succefully", "Bill generated Succefully  And Email Send");
		return "generate_bill";

}
}

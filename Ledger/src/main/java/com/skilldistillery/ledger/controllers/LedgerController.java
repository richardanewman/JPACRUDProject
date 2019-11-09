package com.skilldistillery.ledger.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.ledger.data.LedgerDAO;

@Controller
public class LedgerController {
	
	@Autowired
	private LedgerDAO ledgerDAO;
	
	@RequestMapping(path="/")
	public String index(Model model) {
		model.addAttribute("username", ledgerDAO.findById(1).getUsername());
		return "index";
	}
	
	@RequestMapping(path="getAccount.do", method = RequestMethod.GET)
	public String getAccount(Model model){
		model.addAttribute("ledger", ledgerDAO.getAll());
		return "account";
		
	}
	

}

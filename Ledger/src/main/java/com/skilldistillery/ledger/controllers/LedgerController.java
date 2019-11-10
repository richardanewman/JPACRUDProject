package com.skilldistillery.ledger.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.ledger.data.LedgerDAO;
import com.skilldistillery.ledger.entities.Ledger;

@Controller
public class LedgerController {
	
	@Autowired
	private LedgerDAO ledgerDAO;
	private int ledgerId;
	
//	Index ////////////////////////////////////////////////////////////
	
	@RequestMapping(path="/")
	public String index(Model model) {
		model.addAttribute("username", ledgerDAO.findById(1).getUsername());
		return "index";
	}
	
//////////////////////////////////////////////////////////////////////
	
//	Account page /////////////////////////////////////////////////////
	
	@RequestMapping(path="getAccount.do", method = RequestMethod.GET)
	public String getAccount(Model model){
		model.addAttribute("ledger", ledgerDAO.findById(1));
		return "account";
		
	}
	
///////////////////////////////////////////////////////////////////////
	
//	Add new transactions to database //////////////////////////////////
	
	@RequestMapping(path="getNewTxForm.do", method = RequestMethod.GET)
	public String getTxForm(Model model){
		Ledger newTxData = new Ledger();
		model.addAttribute("newTxData", newTxData);
		return "enterNewTx";
		
	}
	
	@RequestMapping(path="addNewTx.do", method = RequestMethod.POST)
	public String addTx(@Valid Ledger newTxData, Model model) {
		model.addAttribute("newTx", ledgerDAO.addNewTransaction(newTxData));
		
		return "success";
		
	}
	
///////////////////////////////////////////////////////////////////////
	
//	Updating transactions in database  ////////////////////////////////
	
	@RequestMapping(path="updateTxForm.do", method = RequestMethod.GET)
	public String updateTxForm(@Valid int id, Model model) {
		List<Ledger> ledgerList = ledgerDAO.getAll();
		ledgerId = id;
		Ledger txData = ledgerList.get(id - 1);
		model.addAttribute("txData", txData);
		
		return "updateTxForm";
		
	}
	
	@RequestMapping(path="updateTx.do", method = RequestMethod.POST)
	public String updateTx(@Valid Ledger txData, Model model) {
		Ledger updatedTx = ledgerDAO.updateEntry(txData, ledgerId);
		model.addAttribute("successfulUpdate", updatedTx);
		
		return "success";
		
	}
	
//////////////////////////////////////////////////////////////////////
	
//	Display all transactions /////////////////////////////////////////
	
	@RequestMapping(path="displayAll.do", method = RequestMethod.GET)
	public String diplayAllTx(Model model) {
		ledgerDAO.calculateBalances();
		model.addAttribute("displayAll", ledgerDAO.getAll());
		
		return "displayAll";
		
	}
	
//////////////////////////////////////////////////////////////////////
	
//	Find transactions by ID  /////////////////////////////////////////
	
	@RequestMapping(path="findById.do", method = RequestMethod.GET)
	public String diplayAllTx(int id, Model model) {
		if (ledgerDAO.findById(id) == null) {
			model.addAttribute("oops", "Oops! Looks like something went wrong. Please check your ID number and try again.");
			return "fail";
		}else {
			
		model.addAttribute("displayTx", ledgerDAO.findById(id));
		
		return "success";
		}
	}
	
//////////////////////////////////////////////////////////////////////

//	Keyword search ///////////////////////////////////////////////////
		
	@RequestMapping(path="searchKeyword.do")
	public String searchKeyword(@Valid String keyword, Model model) {
		model.addAttribute("searchResults", ledgerDAO.searchByKeyword(keyword));
		return "displayAll";
	}
	
//////////////////////////////////////////////////////////////////////
	
//	Delete Transaction ///////////////////////////////////////////////
	
	@RequestMapping(path="deleteTx.do", method = RequestMethod.POST)
	public String deleteTx(@Valid int id, Model model) {
		if (ledgerDAO.deleteTransaction(id)) {
			model.addAttribute("successfulDelete", "Looks like we successfully deleted that transaction!");
			return "success";
		}else {
			model.addAttribute("oops", "Oops! Looks like something went wrong. Please check your ID number and try again.");
			return "fail";
			
		}
		
	}

}

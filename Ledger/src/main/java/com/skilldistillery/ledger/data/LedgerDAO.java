package com.skilldistillery.ledger.data;

import java.util.List;

import com.skilldistillery.ledger.entities.Ledger;


public interface LedgerDAO {
	List<Ledger> getAll();
	Ledger findById(int id);
	public double setBalance(double inputAmount);
	public Ledger addNewTransaction(Ledger ledger);
	public Ledger updateEntry(Ledger ledger, int ledgerId);
	public void calculateBalances();
	public List<Ledger> searchByKeyword(String keyword);
	public boolean deleteTransaction(int id);

}

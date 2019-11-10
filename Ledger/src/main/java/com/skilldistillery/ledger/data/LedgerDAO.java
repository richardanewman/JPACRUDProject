package com.skilldistillery.ledger.data;

import java.util.List;

import com.skilldistillery.ledger.entities.Ledger;


public interface LedgerDAO {
	Ledger findById(int id);
	List<Ledger> getAll();
	public double setBalance(double inputAmount);
	public Ledger addNewTransaction(Ledger ledger);
	public Ledger updateEntry(Ledger ledger, int ledgerId);
	public void calculateBalances();

}

package com.skilldistillery.ledger.data;

import java.util.List;

import com.skilldistillery.ledger.entities.Ledger;


public interface LedgerDAO {
	Ledger findById(int id);
	List<Ledger> getAll();

}

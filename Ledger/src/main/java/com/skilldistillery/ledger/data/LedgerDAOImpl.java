package com.skilldistillery.ledger.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.ledger.entities.Ledger;

@Service
@Transactional
public class LedgerDAOImpl implements LedgerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Ledger> getAll() {
		List<Ledger> ledgerList = em.createQuery("select l from Ledger l", Ledger.class).getResultList();
		em.flush();
		return ledgerList;
	}

	@Override
	public Ledger findById(int id) {
		return em.find(Ledger.class, id);
	}

	@Override
	public Ledger addNewTransaction(Ledger ledger) {
		double balance = setNewEntryBalance(ledger.getAmount());
		Ledger newTx = new Ledger(ledger.getTxDate(), ledger.getDescription(), ledger.getAmount(), balance);
		em.persist(newTx);
		em.flush();
		return newTx;

	}

	@Override
	public double setNewEntryBalance(double inputAmount) {
		List<Ledger> ledgerList = getAll();
		double lastBalance = (ledgerList.get(ledgerList.size() - 1).getBalance());
		double balance = lastBalance - inputAmount;

		return balance;
	}

	@Override
	public Ledger updateEntry(Ledger txData, int ledgerId) {
		Ledger ledgerTx = em.find(Ledger.class, ledgerId);
		ledgerTx.setTxDate(txData.getTxDate());
		ledgerTx.setDescription(txData.getDescription());
		ledgerTx.setAmount(txData.getAmount());
		calculateBalances();

		return ledgerTx;

	}

	@Override
	public List<Ledger> calculateBalances(){
		List<Ledger> ledgerList = getAll();
		double balance = ledgerList.get(0).getBeginningBalance();
		for (Ledger ledgerTx : ledgerList) {
			ledgerTx.setBalance(balance -= ledgerTx.getAmount());
			
		}
		
		
		return ledgerList;
		
	}

	@Override
	public List<Ledger> searchByKeyword(String keyword) {
		String sql = "select l from Ledger l where l.description like :keyword";
		List<Ledger> ledgerList = em.createQuery(sql, Ledger.class).setParameter("keyword", "%" + keyword + "%")
				.getResultList();

		return ledgerList;
	}

	@Override
	public boolean deleteTransaction(int id) {
		if (em.find(Ledger.class, id) != null) {
			Ledger ledgerTx = em.find(Ledger.class, id);
			em.remove(ledgerTx);
			em.flush();

			return true;
		} else

			return false;
	}

}

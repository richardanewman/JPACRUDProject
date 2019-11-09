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
		return em.createQuery("select l from Ledger l", Ledger.class).getResultList();
	}

	@Override
	public Ledger findById(int id) {
		return em.find(Ledger.class, id);
	}

}

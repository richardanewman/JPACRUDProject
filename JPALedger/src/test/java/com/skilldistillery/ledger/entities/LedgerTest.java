package com.skilldistillery.ledger.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class LedgerTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Ledger ledger;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Ledger");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		ledger = em.find(Ledger.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		ledger = null;
	}

	@Test
	@DisplayName("Testing entity name")
	void test1() {
		assertNotNull(ledger);
		assertEquals("change", ledger.getName());
	}

}

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
	@DisplayName("Testing getId")
	void test1() {
		assertNotNull(ledger);
		assertEquals(1, ledger.getId());

	}

	@Test
	@DisplayName("Testing getBeginningBalance")
	void test2() {
		assertNotNull(ledger);
		assertEquals(46.34, ledger.getBeginningBalance());

	}

	@Test
	@DisplayName("Testing getDeposits")
	void test3() {
		assertNotNull(ledger);
		assertEquals(4150.21, ledger.getDeposits());

	}

	@Test
	@DisplayName("Testing getAtmWithdrawals")
	void test4() {
		assertNotNull(ledger);
		assertEquals(-1802.83, ledger.getAtmWithdrawals());

	}

	@Test
	@DisplayName("Testing getElectronicWithdrawals")
	void test5() {
		assertNotNull(ledger);
		assertEquals(-2375.00, ledger.getElectronicWithdrawals());

	}

	@Test
	@DisplayName("Testing getEndingBalance")
	void test6() {
		assertNotNull(ledger);
		assertEquals(18.72, ledger.getEndingBalance());

	}

	@Test
	@DisplayName("Testing getStatementPeriod")
	void test7() {
		assertNotNull(ledger);
		assertEquals("2019-09-24 to 2019-10-22", ledger.getStatementPeriod());

	}

	@Test
	@DisplayName("Testing getAccountNumber")
	void test8() {
		assertNotNull(ledger);
		assertEquals("000123456789", ledger.getAccountNumber());

	}

	@Test
	@DisplayName("Testing getTxDate")
	void test9() {
		assertNotNull(ledger);
		assertEquals("2019-09-24", ledger.getTxDate().toString());

	}

	@Test
	@DisplayName("Testing getDescription")
	void test10() {
		assertNotNull(ledger);
		assertEquals("Card purchase 09/23 7-Eleven 39211 Castle Rock CO Card 1234", ledger.getDescription());

	}

	@Test
	@DisplayName("Testing getAmount")
	void test11() {
		assertNotNull(ledger);
		assertEquals(-46.58, ledger.getAmount());
		
	}
	
	@Test
	@DisplayName("Testing getBalance")
	void test12() {
		assertNotNull(ledger);
		assertEquals(-0.24, ledger.getBalance());
		
	}
	
	@Test
	@DisplayName("Testing getUsername")
	void test13() {
		assertNotNull(ledger);
		assertEquals("Rick", ledger.getUsername());
		
	}
	
	@Test
	@DisplayName("Testing getFirstName")
	void test14() {
		assertNotNull(ledger);
		assertEquals("Richard", ledger.getFirstName());
		
	}
	
	@Test
	@DisplayName("Testing getLastName")
	void test15() {
		assertNotNull(ledger);
		assertEquals("Newman", ledger.getLastName());
		
	}
	
	
}

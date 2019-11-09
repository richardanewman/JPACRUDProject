package com.skilldistillery.ledger;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.ledger.data.LedgerDAO;

@SpringBootTest
class LedgerApplicationTests {
	@Autowired
	private LedgerDAO dao;
	
	
	@Test
	@DisplayName("Testing dao findByID then getUsername")
	void testDAO() {
		assertEquals("Rick", dao.findById(1).getUsername());
	}
	

}

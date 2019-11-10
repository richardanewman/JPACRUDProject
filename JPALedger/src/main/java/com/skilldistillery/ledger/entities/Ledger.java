package com.skilldistillery.ledger.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Ledger {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "beginning_balance")
	private double beginningBalance;
	
	private double deposits;
	
	@Column(name = "atm_withdrawals")
	private double atmWithdrawals;
	
	@Column(name = "electronic_withdrawals")
	private double electronicWithdrawals;
	
	@Column(name = "ending_balance")
	private double endingBalance;
	
	@Column(name = "statement_period")
	private String statementPeriod;
	
	@Column(name = "account_number")
	private String accountNumber;
	
	@Column(name = "tx_date")
	private Date txDate;
	
	private String description;
	private double amount;
	private double balance;
	private String username;
	
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getBeginningBalance() {
		return beginningBalance;
	}

	public void setBeginningBalance(double beginningBalance) {
		this.beginningBalance = beginningBalance;
	}

	public double getDeposits() {
		return deposits;
	}

	public void setDeposits(double deposits) {
		this.deposits = deposits;
	}

	public double getAtmWithdrawals() {
		return atmWithdrawals;
	}

	public void setAtmWithdrawals(double atmWithdrawals) {
		this.atmWithdrawals = atmWithdrawals;
	}

	public double getElectronicWithdrawals() {
		return electronicWithdrawals;
	}

	public void setElectronicWithdrawals(double electronicWithdrawals) {
		this.electronicWithdrawals = electronicWithdrawals;
	}

	public double getEndingBalance() {
		return endingBalance;
	}

	public void setEndingBalance(double endingBalance) {
		this.endingBalance = endingBalance;
	}

	public String getStatementPeriod() {
		return statementPeriod;
	}

	public void setStatementPeriod(String statementPeriod) {
		this.statementPeriod = statementPeriod;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public Date getTxDate() {
		return txDate;
	}

	public void setTxDate(Date txDate) {
		this.txDate = txDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Ledger() {
		super();
	}
	
	

	public Ledger(Date txDate, String description, double amount) {
		super();
		this.txDate = txDate;
		this.description = description;
		this.amount = amount;
	}

	public Ledger(Date txDate, String description, double amount, double balance) {
		super();
		this.txDate = txDate;
		this.description = description;
		this.amount = amount;
		this.balance = balance;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Ledger [id=");
		builder.append(id);
		builder.append(", beginningBalance=");
		builder.append(beginningBalance);
		builder.append(", deposits=");
		builder.append(deposits);
		builder.append(", atmWithdrawals=");
		builder.append(atmWithdrawals);
		builder.append(", electronicWithdrawals=");
		builder.append(electronicWithdrawals);
		builder.append(", endingBalance=");
		builder.append(endingBalance);
		builder.append(", statementPeriod=");
		builder.append(statementPeriod);
		builder.append(", accountNumber=");
		builder.append(accountNumber);
		builder.append(", txDate=");
		builder.append(txDate);
		builder.append(", description=");
		builder.append(description);
		builder.append(", amount=");
		builder.append(amount);
		builder.append(", balance=");
		builder.append(balance);
		builder.append(", username=");
		builder.append(username);
		builder.append(", firstName=");
		builder.append(firstName);
		builder.append(", lastName=");
		builder.append(lastName);
		builder.append("]");
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((accountNumber == null) ? 0 : accountNumber.hashCode());
		long temp;
		temp = Double.doubleToLongBits(amount);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(atmWithdrawals);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(balance);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(beginningBalance);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(deposits);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		temp = Double.doubleToLongBits(electronicWithdrawals);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(endingBalance);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + id;
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + ((statementPeriod == null) ? 0 : statementPeriod.hashCode());
		result = prime * result + ((txDate == null) ? 0 : txDate.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ledger other = (Ledger) obj;
		if (accountNumber == null) {
			if (other.accountNumber != null)
				return false;
		} else if (!accountNumber.equals(other.accountNumber))
			return false;
		if (Double.doubleToLongBits(amount) != Double.doubleToLongBits(other.amount))
			return false;
		if (Double.doubleToLongBits(atmWithdrawals) != Double.doubleToLongBits(other.atmWithdrawals))
			return false;
		if (Double.doubleToLongBits(balance) != Double.doubleToLongBits(other.balance))
			return false;
		if (Double.doubleToLongBits(beginningBalance) != Double.doubleToLongBits(other.beginningBalance))
			return false;
		if (Double.doubleToLongBits(deposits) != Double.doubleToLongBits(other.deposits))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (Double.doubleToLongBits(electronicWithdrawals) != Double.doubleToLongBits(other.electronicWithdrawals))
			return false;
		if (Double.doubleToLongBits(endingBalance) != Double.doubleToLongBits(other.endingBalance))
			return false;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (id != other.id)
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (statementPeriod == null) {
			if (other.statementPeriod != null)
				return false;
		} else if (!statementPeriod.equals(other.statementPeriod))
			return false;
		if (txDate == null) {
			if (other.txDate != null)
				return false;
		} else if (!txDate.equals(other.txDate))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}
	

	
}

package com.nit.service;

import com.nit.model.Bank;

public interface IBankService {
	public Bank saveData(Bank bank);
	public Bank checkBalance(String uname, String pass, Long accno);
	public Bank deposit(String uname, String pass, Long accno, Double amount);
	public Bank withdraw(String uname, String pass, Long accno, Double amount);
	public Bank transfer(String uname, String pass, Long accno, Long tAccno, Double amount);
	public String close(String uname, String pass, Long accno);

}

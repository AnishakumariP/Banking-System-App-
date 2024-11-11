package com.nit.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nit.model.Bank;
import com.nit.repositry.BankRepositry;

@Service
public class BankServiceImp implements IBankService{
	@Autowired
	private BankRepositry bankRepositry;

	@Override
	public Bank saveData(Bank bank) {
		Bank save = bankRepositry.save(bank);
		return save;
	}

	@Override
	public Bank checkBalance(String uname, String pass, Long accno) {
		List<Bank> bank = bankRepositry.showByAccnoUserPass(uname, pass, accno);
		//System.out.println(bank);
		return bank.get(0);
	}

	@Override @Transactional
	public Bank deposit(String uname, String pass, Long accno, Double amount) {
		List<Bank> bank = bankRepositry.showByAccnoUserPass(uname, pass, accno);
		Bank b=null;
		if(bank!=null) {
			b = bank.get(0);
			System.out.println(b);
			b.setAmount((b.getAmount()+amount));
			bankRepositry.save(b);
		}
		else {
			b=null;
		}
		return b;
	}

	@Override
	public Bank withdraw(String uname, String pass, Long accno, Double amount) {
		List<Bank> bank = bankRepositry.showByAccnoUserPass(uname, pass, accno);
		Bank b=null;
		if(bank!=null) {
			b = bank.get(0);
			System.out.println(b);
			b.setAmount((b.getAmount()-amount));
			bankRepositry.save(b);
		}
		else {
			b=null;
		}
		return b;
	}

	@Override
	public Bank transfer(String uname, String pass, Long accno, Long tAccno, Double amount) {
		List<Bank> bank = bankRepositry.showByAccnoUserPass(uname, pass, accno);
		System.out.println(bank);
		Bank b=null;
		if(bank!=null) {
			if(bankRepositry.existsById(tAccno)) {
				Bank byId = bankRepositry.findByAccountno(tAccno);
				Bank tar = (Bank) byId;
				if(byId!=null) {
					b = bank.get(0);
					System.out.println(b);
					b.setAmount((b.getAmount()-amount));
					tar.setAmount(tar.getAmount()+amount);
					bankRepositry.save(b);
					bankRepositry.save(tar);
				}
				
			}
			else {
				System.out.println("Target account not found..");
			}
			
		}
		else {
			b=null;
		}
		return b;
	}

	@Override
	public String close(String uname, String pass, Long accno) {
		List<Bank> list = bankRepositry.showByAccnoUserPass(uname, pass, accno);
		Long acno = list.get(0).getAccountno();
		if(list!=null) {
			Bank b = list.get(0);
			System.out.println("close account "+b);
			bankRepositry.delete(b);
		}
		return "Account "+acno+" successfully closed...";
	}

}

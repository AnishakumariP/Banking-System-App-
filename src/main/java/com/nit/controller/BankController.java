package com.nit.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.nit.model.Bank;
import com.nit.service.BankServiceImp;

@Controller
//@RestController
public class BankController {
	@Autowired
	private BankServiceImp service;
	
	
	@RequestMapping("/")
	public String welcome() {
		return "welcome";
	}
	
	@RequestMapping("newUser")
	public String newUser(@ModelAttribute Bank bank, Map<String, Object> map) {
		System.out.println(bank);
		Bank data = service.saveData(bank);
		map.put("save", data);
		
		return "newUser";
		
	}
	
	@RequestMapping("balance")
	public String checkBalance(@ModelAttribute Bank bank, Map<String, Object> map) {
		Bank balance = service.checkBalance(bank.getUsername(), bank.getPassword(), bank.getAccountno());
		
		map.put("balance", balance);
		
		return "checkBalance";	
	}
	
	@PostMapping("/deposit")
	public String depositeMoney(@RequestParam String username, @RequestParam String password,
			@RequestParam Long accountno, 
			@RequestParam Double amount, Map<String, Object> map) {
		
		Bank deposit = service.deposit(username, password, accountno, amount);
		//System.out.println("Controller");
		//System.out.println(deposit);
		map.put("amount", amount);
		map.put("deposit", deposit);
		
		return "deposit";
		
	}
	
	@PostMapping("/withdraw")
	public String withdrawMoney(@RequestParam String username, @RequestParam String password,
			@RequestParam Long accountno, 
			@RequestParam Double amount, Map<String, Object> map) {
		
		Bank withdraw = service.withdraw(username, password, accountno, amount);
		map.put("amount", amount);
		map.put("withdraw", withdraw);
		
		return "withdraw";
		
	}
	
	@PostMapping("/transfer")
	public String transferMoney(@RequestParam String username, @RequestParam String password,
			@RequestParam Long accountno, @RequestParam Long tAccount,
			@RequestParam Double amount, Map<String, Object> map) {
		
		Bank transfer = service.transfer(username, password, accountno, tAccount, amount);
		//System.out.println("controller");
		//System.out.println(transfer);
		map.put("amount", amount);
		map.put("target", tAccount);
		map.put("transfer", transfer);
		
		return "transfer";
	}
	
	@PostMapping("/close")
	public String closeAccount(@RequestParam String username, @RequestParam String password,
			@RequestParam Long accountno,  Map<String, Object> map) {
		
		String close = service.close(username, password, accountno);
		map.put("close", close);
		
		return "closeAccount";
	}

}

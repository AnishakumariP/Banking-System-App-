package com.nit.repositry;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nit.model.Bank;

@Repository
public interface BankRepositry extends JpaRepository<Bank, Long>{
	
	@Query("FROM Bank WHERE username=:uname and password=:pass and accountno=:accno")
	public List<Bank> showByAccnoUserPass(String uname, String pass, Long accno);
	public Bank findByAccountno(Long accno);

}

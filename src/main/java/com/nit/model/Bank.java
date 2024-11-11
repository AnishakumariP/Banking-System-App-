package com.nit.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "bank")
public class Bank {
	@Id
	@Column(name="accountno")
	private Long accountno;
	
	
	@Column(name="Username")
	private String username;

	@Column(name="Password")
	private String password;
	
	@Column(name="Holder_Name")
	private String holder_name;
	
	@Column(name="Amount")
	private double amount;

	@Column(name= "Mobile")
	private Long mobile;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Address")
	private String address;

}

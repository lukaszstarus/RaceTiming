package com.racetiming.racetiming.models;

import javax.persistence.*;

/**
 * User
 */
@Entity
public class Login {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private long Id;
    private String Email;
    private String Password;
	@ManyToOne
	private Role role;


	public Login() {
		}
	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public long getId() {
		return this.Id;
	}

	public void setId(long Id) {
		this.Id = Id;
	}

	public String getEmail() {
		return this.Email;
	}

	public void setEmail(String Email) {
		this.Email = Email;
	}

	public String getPassword() {
		return this.Password;
	}

	public void setPassword(String Password) {
		this.Password = Password;
	}

	public Login(String email, String password, Role role) {
		Email = email;
		Password = password;
		this.role = role;
	}


    
}
package com.racetiming.racetiming.models;

import javax.persistence.*;

/**
 * User
 */
@Entity
public class Login {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String email;
    private String password;
	@ManyToOne
	private Role role;
	@OneToOne()
	private Player player;


	public Login() {
		}
	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public long getId() {
		return this.id;
	}

	public void setId(long Id) {
		this.id = Id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String Email) {
		this.email = Email;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String Password) {
		this.password = Password;
	}

	public Login(String email, String password, Role role) {
		this.email = email;
		this.password = password;
		this.role = role;
	}

	public Login(String email, String password, Role role, Player player) {
		this.email = email;
		this.password = password;
		this.role = role;
		this.player = player;
	}

	public Player getPlayer() {
		return player;
	}

	public void setPlayer(Player player) {
		this.player = player;
	}


    
}
package org.blackmine.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "users")
public class User extends BaseEntity {

	private static final long serialVersionUID = -8469344111075420682L;
	
	private String  				account;
	@Transient
	private String  				password;
	@Transient
	private String  				password_verify;
	private String 					password_cryp;
	
	@Column(name="account",unique=true)
	@NotEmpty
	public String getAccount() {
		return account;
	}
	@Transient
	public String getPassword() {
		return password;
	}
	@Transient
	public String getPassword_verify() {
		return password_verify;
	}
	@Column(name="password_cryp")
	public String getPassword_cryp() {
		return password_cryp;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setPassword_verify(String password_verify) {
		this.password_verify = password_verify;
	}
	public void setPassword_cryp(String password_cryp) {
		this.password_cryp = password_cryp;
	}
	
	public boolean equals(Object object)
	{
		if (super.equals(object)){
			if ( ! (object instanceof User)){
				return false;
			}
			return true;
		}
		return false;
	}
	

}

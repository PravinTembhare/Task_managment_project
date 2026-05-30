package com.Model;

import java.util.Set;



import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
@Entity
public class User{
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
private int uid;
public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Set<Task> getSl() {
		return sl;
	}
	public void setSl(Set<Task> sl) {
		this.sl = sl;
	}
private String username;
private String password;
private long mobile;
public long getMobile() {
	return mobile;
}
public void setMobile(long mobile) {
	this.mobile = mobile;
}
@OneToMany(cascade=CascadeType.ALL)
private Set<Task> sl;

}

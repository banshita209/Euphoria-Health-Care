package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@SuppressWarnings("serial")
@Entity
@Table(name = "OTP")
public class OTP extends System_Model{
	
	private long id;
	private String email;
	private int SendOTP;
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name="SendOTP")
	public int getSendOTP() {
		return SendOTP;
	}


	public void setSendOTP(int sendOTP) {
		SendOTP = sendOTP;
	}


	@Override
	public String toString() {
		return "OTP [id=" + id + ", email=" + email + ", SendOTP=" + SendOTP + "]";
	}

}

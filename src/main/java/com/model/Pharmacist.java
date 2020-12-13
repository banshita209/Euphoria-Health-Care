package com.model;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Pharmacist")
public class Pharmacist extends System_Model {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long phst_id;
	private String log_password;
	private String log_email;
	private String phst_name;
	private Address address;
	private long phst_mobile;
	private Date phst_dob;
	private String phst_gender;
	private byte ifd;

	@Id
	@Column(name = "phst_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getPhst_id() {
		return phst_id;
	}

	public void setPhst_id(long phst_id) {
		this.phst_id = phst_id;
	}

	@Column(name = "log_password")
	public String getLog_password() {
		return log_password;
	}

	public void setLog_password(String log_password) {
		this.log_password = log_password;
	}

	@Column(name = "log_email", unique = true)
	public String getLog_email() {
		return log_email;
	}

	public void setLog_email(String log_email) {
		this.log_email = log_email;
	}

	@Column(name = "phst_name")
	public String getPhst_name() {
		return phst_name;
	}

	public void setPhst_name(String phst_name) {
		this.phst_name = phst_name;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "add_id")
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Column(name = "phst_mobile")
	public long getPhst_mobile() {
		return phst_mobile;
	}

	public void setPhst_mobile(long phst_mobile) {
		this.phst_mobile = phst_mobile;
	}

	@Column(name = "phst_dob")
	public Date getPhst_dob() {
		return phst_dob;
	}

	public void setPhst_dob(java.util.Date date) {
		this.phst_dob = (Date) date;
	}

	@Column(name = "phst_gender")
	public String getPhst_gender() {
		return phst_gender;
	}

	public void setPhst_gender(String phst_gender) {
		this.phst_gender = phst_gender;
	}

	@Column(name = "ifd")
	public byte getIfd() {
		return ifd;
	}

	public void setIfd(byte ifd) {
		this.ifd = ifd;
	}

	@Override
	public String toString() {
		return "Pharmacist [phst_id=" + phst_id + ", log_password=" + log_password + ", log_email=" + log_email
				+ ", phst_name=" + phst_name + ", address=" + address + ", phst_mobile=" + phst_mobile + ", phst_dob="
				+ phst_dob + ", phst_gender=" + phst_gender + ", ifd=" + ifd + "]";
	}
}

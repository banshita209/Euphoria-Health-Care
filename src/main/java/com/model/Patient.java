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
@Table(name = "Patient")
public class Patient extends System_Model {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long patient_id;
	private String log_password;
	private String log_email;
	private String patient_name;
	private Address address;
	private Date patient_dob;
	private String patient_qrcode;
	private long patient_mobile;
	private String patient_gender;
	private byte ifd;

	@Id
	@Column(name = "patient_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getPatient_id() {
		return patient_id;
	}

	public void setPatient_id(long patient_id) {
		this.patient_id = patient_id;
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

	@Column(name = "patient_name")
	public String getPatient_name() {
		return patient_name;
	}

	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "add_id")
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Column(name = "patient_dob")
	public Date getPatient_dob() {
		return patient_dob;
	}

	public void setPatient_dob(Date patient_dob) {
		this.patient_dob = patient_dob;
	}

	@Column(name = "patient_qrcode")
	public String getPatient_qrcode() {
		return patient_qrcode;
	}

	public void setPatient_qrcode(String patient_qrcode) {
		this.patient_qrcode = patient_qrcode;
	}

	@Column(name = "patient_mobile")
	public long getPatient_mobile() {
		return patient_mobile;
	}

	public void setPatient_mobile(long patient_mobile) {
		this.patient_mobile = patient_mobile;
	}

	@Column(name = "patient_gender")
	public String getPatient_gender() {
		return patient_gender;
	}

	public void setPatient_gender(String patient_gender) {
		this.patient_gender = patient_gender;
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
		return "Patient [patient_id=" + patient_id + ", log_password=" + log_password + ", log_email=" + log_email
				+ ", patient_name=" + patient_name + ", address=" + address + ", patient_dob=" + patient_dob
				+ ", patient_qrcode=" + patient_qrcode + ", patient_mobile=" + patient_mobile + ", patient_gender="
				+ patient_gender + ", ifd=" + ifd + "]";
	}

}

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
@Table(name = "MedicalRepresntative")
public class MedicalRepresentative extends System_Model {

	private static final long serialVersionUID = 1L;
	private long mr_id;
	private String log_password;
	private String log_email;
	private String mr_name;
	private long mr_mobile;
	private Address address;
	private Date mr_dob;
	private String mr_gender;
	private String workArea;
	private byte ifd;

	@Id
	@Column(name = "mr_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getmr_id() {
		return mr_id;
	}

	public void setmr_id(long mr_id) {
		this.mr_id = mr_id;
	}

	@Column(name = "log_password")
	public String getLog_password() {
		return log_password;
	}

	public void setLog_password(String log_password) {
		this.log_password = log_password;
	}

	@Column(name = "log_email",unique=true)
	public String getLog_email() {
		return log_email;
	}

	public void setLog_email(String log_email) {
		this.log_email = log_email;
	}

	@Column(name = "mr_name")
	public String getmr_name() {
		return mr_name;
	}

	public void setmr_name(String mr_name) {
		this.mr_name = mr_name;
	}

	@Column(name = "mr_mobile")
	public long getmr_mobile() {
		return mr_mobile;
	}

	public void setmr_mobile(Long mr_mobile) {
		this.mr_mobile = mr_mobile;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "add_id")
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Column(name = "mr_dob")
	public Date getmr_dob() {
		return mr_dob;
	}

	public void setmr_dob(Date date) {
		this.mr_dob = date;
	}

	@Column(name = "mr_gender")
	public String getmr_gender() {
		return mr_gender;
	}

	public void setmr_gender(String mr_gender) {
		this.mr_gender = mr_gender;
	}

	@Column(name = "ifd")
	public byte getIfd() {
		return ifd;
	}

	public void setIfd(byte ifd) {
		this.ifd = ifd;
	}

	public String getWorkArea() {
		return workArea;
	}

	public void setWorkArea(String workArea) {
		this.workArea = workArea;
	}

	@Override
	public String toString() {
		return "MedicalRepresentative [mr_id=" + mr_id + ", log_password=" + log_password + ", log_email=" + log_email
				+ ", mr_name=" + mr_name + ", mr_mobile=" + mr_mobile + ", address=" + address + ", mr_dob=" + mr_dob
				+ ", mr_gender=" + mr_gender + ", workArea=" + workArea + ", ifd=" + ifd + "]";
	}
}

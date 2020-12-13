package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Admin")
public class Admin extends System_Model {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long ad_id;
	private String ad_name;
	private String log_password;
	private String log_email;

	@Id
	@Column(name = "ad_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getAd_id() {
		return ad_id;
	}

	public void setAd_id(long ad_id) {
		this.ad_id = ad_id;
	}

	@Column(name = "log_password")
	public String getLog_password() {
		return log_password;
	}

	public void setLog_password(String log_password) {
		this.log_password = log_password;
	}

	@Column(name = "ad_name")
	public String getAd_name() {
		return ad_name;
	}

	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}

	@Column(name = "log_email", unique = true)
	public String getLog_email() {
		return log_email;
	}

	public void setLog_email(String log_email) {
		this.log_email = log_email;
	}

	@Override
	public String toString() {
		return "Admin [ad_id=" + ad_id + ", ad_name=" + ad_name + ", log_password=" + log_password + ", log_email="
				+ log_email + "]";
	}

}

package com.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Feedback")
public class Feedback extends Model{
	private static final long serialVersionUID = 1L;
	private long f_id;
	private String f_email;
	private String f_desc;
	private Date f_date;

	@Id
	@Column(name = "f_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getF_id() {
		return f_id;
	}

	public void setF_id(long f_id) {
		this.f_id = f_id;
	}

	@Column(name = "f_email")
	public String getF_email() {
		return f_email;
	}

	public void setF_email(String f_email) {
		this.f_email = f_email;
	}

	@Column(name = "f_desc")
	public String getF_desc() {
		return f_desc;
	}

	public void setF_desc(String f_desc) {
		this.f_desc = f_desc;
	}

	@Column(name = "f_date")
	public Date getF_date() {
		return f_date;
	}

	public void setF_date(Date f_date) {
		this.f_date = f_date;
	}

	@Override
	public String toString() {
		return "Feedback [f_id=" + f_id + ", f_email=" + f_email + ", f_desc=" + f_desc + ", f_date=" + f_date
				+ ", getF_id()=" + getF_id() + ", getF_email()=" + getF_email() + ", getF_desc()=" + getF_desc()
				+ ", getF_date()=" + getF_date() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
}

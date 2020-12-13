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
@Table(name = "Doctor")
public class Doctor extends System_Model {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long dr_id;
	private String log_password;
	private String log_email;
	private String dr_name;
	private String dr_qualification;
	private String specaility;
	private Float visiting_fees;
	private Float experience;
	private Date dr_dob;
	private String dr_gender;
	private long dr_mobile;
	private Address personal_address;
	private Address clinic_address;
	private byte ifd;

	@Id
	@Column(name = "dr_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getDr_id() {
		return dr_id;
	}

	public void setDr_id(long dr_id) {
		this.dr_id = dr_id;
	}

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

	@Column(name = "dr_name")
	public String getDr_name() {
		return dr_name;
	}

	public void setDr_name(String dr_name) {
		this.dr_name = dr_name;
	}

	@Column(name = "qualification")
	public String getDr_qualification() {
		return dr_qualification;
	}

	public void setDr_qualification(String dr_qualification) {
		this.dr_qualification = dr_qualification;
	}

	@Column(name = "dr_dob")
	public Date getDr_dob() {
		return dr_dob;
	}

	public void setDr_dob(Date date) {
		this.dr_dob = date;
	}

	@Column(name = "gender")
	public String getDr_gender() {
		return dr_gender;
	}

	public void setDr_gender(String dr_gender) {
		this.dr_gender = dr_gender;
	}

	@Column(name = "dr_mobile")
	public long getDr_mobile() {
		return dr_mobile;
	}

	public void setDr_mobile(long dr_mobile) {
		this.dr_mobile = dr_mobile;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "p_address", referencedColumnName = "add_id")
	public Address getPersonal_address() {
		return personal_address;
	}

	public void setPersonal_address(Address personal_address) {
		this.personal_address = personal_address;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "c_address", referencedColumnName = "add_id")
	public Address getClinic_address() {
		return clinic_address;
	}

	public void setClinic_address(Address clinic_address) {
		this.clinic_address = clinic_address;
	}

	@Column(name = "ifd")
	public byte getIfd() {
		return ifd;
	}

	public void setIfd(byte ifd) {
		this.ifd = ifd;
	}

	@Column(name = "specaility")
	public String getSpecaility() {
		return specaility;
	}

	public void setSpecaility(String specaility) {
		this.specaility = specaility;
	}

	@Column(name = "visiting_fees")
	public Float getVisiting_fees() {
		return visiting_fees;
	}

	public void setVisiting_fees(Float visiting_fees) {
		this.visiting_fees = visiting_fees;
	}

	@Column(name = "experience")
	public Float getExperience() {
		return experience;
	}

	public void setExperience(Float experience) {
		this.experience = experience;
	}

	@Override
	public String toString() {
		return "Doctor [dr_id=" + dr_id + ", log_password=" + log_password + ", log_email=" + log_email + ", dr_name="
				+ dr_name + ", dr_qualification=" + dr_qualification + ", specaility=" + specaility + ", visiting_fees="
				+ visiting_fees + ", experience=" + experience + ", dr_dob=" + dr_dob + ", dr_gender=" + dr_gender
				+ ", dr_mobile=" + dr_mobile + ", personal_address=" + personal_address + ", clinic_address="
				+ clinic_address + ", ifd=" + ifd + "]";
	}
}
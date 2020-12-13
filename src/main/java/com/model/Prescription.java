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
@Table(name = "Prescription")
public class Prescription extends Model{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long pr_id;
	private Doctor prescribed_by;
	private Patient prescribed_to;
	private String pr_path;
	private Date pr_date;
	private Pharmacist pharmacist;
	private byte ifd;
	

	@Id
	@Column(name = "pr_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getPr_id() {
		return pr_id;
	}

	public void setPr_id(long pr_id) {
		this.pr_id = pr_id;
	}
	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "dr_id")
	public Doctor getPrescribed_by() {
		return prescribed_by;
	}

	public void setPrescribed_by(Doctor prescribed_by) {
		this.prescribed_by = prescribed_by;
	}

	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "patient_id")
	public Patient getPrescribed_to() {
		return prescribed_to;
	}

	public void setPrescribed_to(Patient prescribed_to) {
		this.prescribed_to = prescribed_to;
	}

	@Column(name = "pr_path")
	public String getPr_path() {
		return pr_path;
	}

	public void setPr_path(String pr_path) {
		this.pr_path = pr_path;
	}

	@Column(name = "pr_date")
	public Date getPr_date() {
		return pr_date;
	}

	public void setPr_date(Date pr_date) {
		this.pr_date = pr_date;
	}
	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "phst_id")
	public Pharmacist getPharmacist() {
		return pharmacist;
	}

	public void setPharmacist(Pharmacist pharmacist) {
		this.pharmacist = pharmacist;
	}
	
	public byte getIfd() {
		return ifd;
	}

	public void setIfd(byte ifd) {
		this.ifd = ifd;
	}

	@Override
	public String toString() {
		return "Prescription [pr_id=" + pr_id + ", prescribed_by=" + prescribed_by + ", prescribed_to=" + prescribed_to
				+ ", pr_path=" + pr_path + ", pr_date=" + pr_date + ", pharmacist=" + pharmacist + ", ifd=" + ifd + "]";
	}
	

	
}

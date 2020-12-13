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
@Table(name = "Analysis")
public class Analysis extends Model {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long ana_id;
	private Date ana_date;
	private MedicalRepresentative medicalRepresentative;
	private String ana_desc;
	private byte ifd;

	@Id
	@Column(name = "ana_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getAna_id() {
		return ana_id;
	}

	public void setAna_id(long ana_id) {
		this.ana_id = ana_id;
	}

	@Column(name = "ana_date")
	public Date getAna_date() {
		return ana_date;
	}

	public void setAna_date(Date ana_date) {
		this.ana_date = ana_date;
	}

	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "sr_id")
	public MedicalRepresentative getMedicalRepresentative() {
		return medicalRepresentative;
	}

	public void setMedicalRepresentative(MedicalRepresentative medicalRepresentative) {
		this.medicalRepresentative = medicalRepresentative;
	}

	@Column(name = "ana_desc")
	public String getAna_desc() {
		return ana_desc;
	}

	public void setAna_desc(String ana_desc) {
		this.ana_desc = ana_desc;
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
		return "Analysis [ana_id=" + ana_id + ", ana_date=" + ana_date + ", ifd=" + ifd + "]";
	}
}

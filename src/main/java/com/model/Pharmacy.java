package com.model;

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
@Table(name = "Pharmacy")
public class Pharmacy extends Model{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long phcy_id;
	private String phcy_name;
	private Address address;
	private Pharmacist pharmacist;
	private long phcy_mobile;
	private byte ifd;

	@Id
	@Column(name = "phcy_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getPhcy_id() {
		return phcy_id;
	}

	public void setPhcy_id(long phcy_id) {
		this.phcy_id = phcy_id;
	}
	@JoinColumn(name="phcy_name")
	public String getPhcy_name() {
		return phcy_name;
	}

	public void setPhcy_name(String phcy_name) {
		this.phcy_name = phcy_name;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "address")
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "pharmacist")
	public Pharmacist getPharmacist() {
		return pharmacist;
	}

	public void setPharmacist(Pharmacist pharmacist) {
		this.pharmacist = pharmacist;
	}

	@Column(name = "phcy_mobile")
	public long getPhcy_mobile() {
		return phcy_mobile;
	}

	public void setPhcy_mobile(long l) {
		this.phcy_mobile = l;
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
		return "Pharmacy [phcy_id=" + phcy_id + ", address=" + address + ", pharmacist=" + pharmacist + ", phcy_mobile="
				+ phcy_mobile + ", ifd=" + ifd + "]";
	}
}

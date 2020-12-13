package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Address")
public class Address extends Model{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long add_id;
	private String add_detail;
	private String area;
	private String landmark;
	private String city;
	private int pincode;
	private String type;
	private byte ifd;

	@Id
	@Column(name = "add_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getAdd_id() {
		return add_id;
	}

	public void setAdd_id(long add_id) {
		this.add_id = add_id;
	}

	@Column(name = "add_detail")
	public String getAdd_detail() {
		return add_detail;
	}

	public void setAdd_detail(String add_detail) {
		this.add_detail = add_detail;
	}

	@Column(name = "area")
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	@Column(name = "landmark")
	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	@Column(name = "city")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "pincode")
	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	@Column(name = "type")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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
		return "Address [add_id=" + add_id + ", add_detail=" + add_detail + ", area=" + area + ", landmark=" + landmark
				+ ", city=" + city + ", pincode=" + pincode + "]";
	}
}

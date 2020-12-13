package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EmergencyServices")
public class EmergencyServices extends Model{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long es_id;
	private String es_name;
	private int es_mobile;
	private byte ifd;

	@Id
	@Column(name = "es_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getEs_id() {
		return es_id;
	}

	public void setEs_id(long es_id) {
		this.es_id = es_id;
	}

	@Column(name = "es_name")
	public String getEs_name() {
		return es_name;
	}

	public void setEs_name(String es_name) {
		this.es_name = es_name;
	}

	@Column(name = "es_mobile")
	public int getEs_mobile() {
		return es_mobile;
	}

	public void setEs_mobile(int es_mobile) {
		this.es_mobile = es_mobile;
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
		return "EmergencyServices [es_id=" + es_id + ", es_name=" + es_name + ", es_mobile=" + es_mobile + ", ifd="
				+ ifd + "]";
	}
}

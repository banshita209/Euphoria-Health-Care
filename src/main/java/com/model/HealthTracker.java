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
@Table(name = "HealthTracker")
public class HealthTracker extends Model {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long h_id;
	private Patient patient;
	private float blood_glucose;
	/* private float blood_volume; */
	private float blood_pressure;
	private float weight;
	private float height;
	private Date created_date;

	@Id
	@Column(name = "h_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getH_id() {
		return h_id;
	}

	public void setH_id(long h_id) {
		this.h_id = h_id;
	}

	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "patient_id")
	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	@Column(name = "blood_glucose")
	public float getBlood_glucose() {
		return blood_glucose;
	}

	public void setBlood_glucose(float blood_glucose) {
		this.blood_glucose = blood_glucose;
	}

	/*
	 * @Column(name = "blood_volume") public float getBlood_volume() { return
	 * blood_volume; }
	 * 
	 * public void setBlood_volume(float blood_volume) { this.blood_volume =
	 * blood_volume; }
	 */

	@Column(name = "blood_pressure")
	public float getBlood_pressure() {
		return blood_pressure;
	}

	public void setBlood_pressure(float blood_pressure) {
		this.blood_pressure = blood_pressure;
	}

	@Column(name = "weight")
	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	@Column(name = "height")
	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	@Column(name = "created_date")
	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}

	@Override
	public String toString() {
		return "HealthTracker [h_id=" + h_id + ", patient=" + patient + ", blood_glucose=" + blood_glucose
				+ ", blood_pressure=" + blood_pressure + ", weight=" + weight + ", height=" + height + ", created_date="
				+ created_date + "]";
	}
}

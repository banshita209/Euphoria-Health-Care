package com.model;

import java.sql.Date;
import java.sql.Time;

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
@Table(name = "Appointment")
public class Appointment extends Model {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long app_id;
	private Patient patient;
	private Doctor doctor;
	private Date booking_date;
	private String appointment_date;
	private String appointment_time;
	private String status;
	private byte ifd;

	@Id
	@Column(name = "app_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getApp_id() {
		return app_id;
	}

	public void setApp_id(long app_id) {
		this.app_id = app_id;
	}

	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "patient")
	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "doctor")
	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	@Column(name = "booking_date")
	public java.sql.Date getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(java.sql.Date date) {
		this.booking_date = date;
	}

	@Column(name = "ifd")
	public byte getIfd() {
		return ifd;
	}

	public void setIfd(byte ifd) {
		this.ifd = ifd;
	}

	@Column(name = "status")

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Appointment [app_id=" + app_id + ", patient=" + patient + ", doctor=" + doctor + ", booking_date="
				+ booking_date + ", appointment_date=" + appointment_date + ", appointment_time=" + appointment_time
				+ ", status=" + status + ", ifd=" + ifd + "]";
	}

	@Column(name = "appointment_time")
	public String getAppointment_time() {
		return appointment_time;
	}

	public void setAppointment_time(String time) {
		this.appointment_time = time;
	}

	@Column(name = "appointment_date")
	public String getAppointment_date() {
		return appointment_date;
	}

	public void setAppointment_date(String date) {
		this.appointment_date = date;
	}

}

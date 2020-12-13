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
@Table(name = "Meeting")
public class Meeting extends Model {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long m_id;
	private MedicalRepresentative mr;
	private Doctor doctor;
	private Date booking_date;
	private String appointment_date;
	private String appointment_time;
	private String status;
	private byte ifd;

	@Id
	@Column(name = "m_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getm_id() {
		return m_id;
	}

	public void setM_id(long m_id) {
		this.m_id = m_id;
	}

	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "mr")
	public MedicalRepresentative getMr() {
		return mr;
	}

	public void setMr(MedicalRepresentative mr) {
		this.mr = mr;
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

	@Override
	public String toString() {
		return "Meeting [m_id=" + m_id + ", mr=" + mr + ", doctor=" + doctor + ", booking_date=" + booking_date
				+ ", appointment_date=" + appointment_date + ", appointment_time=" + appointment_time + ", status="
				+ status + ", ifd=" + ifd + "]";
	}

}

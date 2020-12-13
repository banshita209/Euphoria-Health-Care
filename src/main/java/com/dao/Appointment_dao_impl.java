package com.dao;

import java.sql.Date;
import java.util.List;

import com.model.Appointment;

public class Appointment_dao_impl extends Common_dao_impl<Appointment> implements Appointment_dao {

	@Override
	public Class<Appointment> get_ModelClass() {

		return Appointment.class;
	}

	public List<Appointment> getAllappointment(long id) {
		byte n = 0;
		System.out.println("patient id " + id);
		long date_mili = System.currentTimeMillis();
		Date date = new Date(date_mili);
		/*
		 * List<Appointment> appointments = (List<Appointment>) get_session()
		 * .createQuery("from Appointment WHERE ifd=0 AND appointment_date >= '" + date
		 * + "'AND patient=" + id).list();
		 */
		List<Appointment> appointments = (List<Appointment>) get_session()
				.createQuery("from Appointment WHERE ifd=0 AND patient=" + id+" order by status").list();
		if (appointments != null) {
			for (Appointment appointment : appointments) {
				System.out.println(appointment.toString());
			}
		}
		commit();
		return appointments;
	}

	public List<Appointment> getRequestedAppointment(long id) {
		byte n = 0;
		System.out.println("doctor id " + id);
		List<Appointment> appointments = (List<Appointment>) get_session()
				.createQuery("from Appointment WHERE ifd=0 AND status='pending' AND doctor =" + id).list();

		if (appointments != null) {
			for (Appointment appointment : appointments) {
				System.out.println(appointment.toString());
			}
		}
		commit();
		return appointments;
	}

	public List<Appointment> getTodayAppointment(long id) {
		byte n = 0;
		System.out.println("doctor id " + id);
		long date_mili = System.currentTimeMillis();
		Date date = new Date(date_mili);
		System.out.println("date " + date);
		List<Appointment> appointments = (List<Appointment>) get_session()
				.createQuery("from Appointment WHERE ifd=0 AND status='accepted' AND appointment_date='" + date
						+ "' AND doctor =" + id)
				.list();

		if (appointments != null) {
			for (Appointment appointment : appointments) {
				System.out.println(appointment.toString());
			}
		}
		commit();
		return appointments;
	}

	public List<Appointment> getAllAppointmentfordoctor(long dr_id) {
		long date_mili = System.currentTimeMillis();
		Date date = new Date(date_mili);

		List<Appointment> appointments = (List<Appointment>) get_session()
				.createQuery("from Appointment WHERE ifd=0 AND status='accepted' AND appointment_date >='" + date
						+ "' AND doctor =" + dr_id)
				.list();
		commit();
		if (appointments != null) {
			for (Appointment appointment : appointments) {
				System.out.println(appointment.toString());
			}
		}
		return appointments;

	}
	/*
	 * @Override public Appointment authenticateAppointment(String email, String
	 * password) { Criteria criteria =
	 * get_session().createCriteria(get_ModelClass());
	 * criteria.add(Restrictions.eq("log_email", email));
	 * criteria.add(Restrictions.eq("log_password", password)); Appointment
	 * Appointment =(Appointment) criteria.uniqueResult(); commit(); return
	 * Appointment; }
	 */
}
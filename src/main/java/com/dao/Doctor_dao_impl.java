package com.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

import com.model.Doctor;

public class Doctor_dao_impl extends Common_dao_impl<Doctor> implements Doctor_dao {

	@Override
	public Class<Doctor> get_ModelClass() {

		return Doctor.class;
	}

	@Override
	public Doctor authenticateDoctor(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		criteria.add(Restrictions.eq("log_password", password));
		Doctor doctor = (Doctor) criteria.uniqueResult();
		commit();
		return doctor;
	}

	@Override
	public boolean checkUserAvailability(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		Doctor doctor = (Doctor) criteria.uniqueResult();
		commit();
		System.out.println("in the check user availabilty method");
		return ((doctor == null) ? true : false);
	}

	@Override
	public Doctor getDoctorbyEmail(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		Doctor doctor = (Doctor) criteria.uniqueResult();
		commit();
		return doctor;
	}

	/*
	 * @Override public List<Doctor> getDoctorbyArea(String area) { List<Doctor>
	 * doctors=(List<Doctor>) get_session().
	 * createSQLQuery("SELECT d.* FROM doctor AS d JOIN address AS a ON a.add_Id = d.c_address WHERE a.area ='"
	 * +area+"'").list(); commit(); //List<Doctor> doctors=get_session().
	 * createQuery("SELECT d.* FROM doctor AS d JOIN address AS a ON a.add_Id = d.c_address WHERE a.area ='"
	 * +area+"'").list(); return doctors; }
	 */

	@Override
	public List<Doctor> getDoctorbyArea(String area) {
		List<Doctor> doctors = new ArrayList<>();
		/*Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("clinic_address.area", area));
		doctors = (List<Doctor>)criteria.list();*/
		Query query = get_session().createQuery("from Doctor where ifd='0' AND clinic_address.area = '"+area+"'");
		doctors = (List<Doctor>)query.list();
		commit();
		return doctors;
	}
}

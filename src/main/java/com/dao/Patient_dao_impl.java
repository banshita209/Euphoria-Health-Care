package com.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.model.HealthTracker;
import com.model.Patient;

public class Patient_dao_impl extends Common_dao_impl<Patient> implements Patient_dao {

	@Override
	public Class<Patient> get_ModelClass() {
		return Patient.class;
	}

	@Override
	public Patient authenticatePatient(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		criteria.add(Restrictions.eq("log_password", password));
		Patient patient = (Patient) criteria.uniqueResult();
		commit();
		return patient;
	}

	@Override
	public boolean checkUserAvailability(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		Patient patient = (Patient) criteria.uniqueResult();
		commit();
		return (patient == null) ? true : false;
	}

	@Override
	public Patient getPatientbyEmail(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		Patient patient = (Patient) criteria.uniqueResult();
		commit();
		return patient;
	}

	
	/*
	 * public List<String> get_area() { Criteria criteria =
	 * get_session().createCriteria(get_ModelClass());
	 * criteria.add(Restrictions.eq("log_email", email)); Patient patient =(Patient)
	 * criteria.uniqueResult(); commit(); return patient; }
	 */
}

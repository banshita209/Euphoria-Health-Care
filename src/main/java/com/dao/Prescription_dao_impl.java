package com.dao;

import java.util.List;

import com.model.Prescription;

public class Prescription_dao_impl extends Common_dao_impl<Prescription> implements Prescription_dao {

	@Override
	public Class<Prescription> get_ModelClass() {

		return Prescription.class;
	}

	public List<Prescription> get_Prescription() {

		System.out.println("Get Prescription Method:");
		List<Prescription> prescriptions = (List<Prescription>) get_session()
				.createQuery("FROM Prescription WHERE ifd=0").list();
		System.out.println("After Query");
		commit();
		return prescriptions;

	}

	public List<Prescription> get_patient_priscription(long id) {

		System.out.println("Get patient Prescription");
		List<Prescription> prescriptions = (List<Prescription>) get_session()
				.createQuery("FROM Prescription WHERE prescribed_to=" + id).list();
		commit();
		return prescriptions;
	}
public List<Prescription> get_accepted_Prescription(long id) {
		System.out.println("Get accepted Prescription");
		List<Prescription> prescriptions = (List<Prescription>) get_session()
				.createQuery("FROM Prescription WHERE pharmacist.phst_id=" + id).list();
		commit();
		return prescriptions;
	}
}

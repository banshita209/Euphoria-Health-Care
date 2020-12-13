package com.dao;

import java.util.List;

import com.model.HealthTracker;
import com.model.Patient;

public interface Patient_dao extends Common_dao<Patient> {

	public Patient authenticatePatient(String email, String password);

	public boolean checkUserAvailability(String email);

	Patient getPatientbyEmail(String email);

}

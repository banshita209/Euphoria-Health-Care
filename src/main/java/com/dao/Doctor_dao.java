package com.dao;

import java.util.List;

import com.model.Doctor;

public interface Doctor_dao extends Common_dao<Doctor> {

	public Doctor authenticateDoctor(String email, String password);
	
	public boolean checkUserAvailability(String email);
	
	public Doctor getDoctorbyEmail(String email);
	
	public List<Doctor> getDoctorbyArea(String area);
}

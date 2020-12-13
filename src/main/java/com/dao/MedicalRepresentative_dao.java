package com.dao;

import com.model.Doctor;
import com.model.MedicalRepresentative;

public interface MedicalRepresentative_dao extends Common_dao<MedicalRepresentative> {

	public MedicalRepresentative authenticateMedicalRepresentative(String email, String password);
	
	public boolean checkUserAvailability(String email);
	
	public MedicalRepresentative getMedicalRepresentativebyEmail(String email);
}

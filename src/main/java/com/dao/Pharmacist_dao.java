package com.dao;

import com.model.Pharmacist;

public interface Pharmacist_dao extends Common_dao<Pharmacist> {

	public Pharmacist authenticatePharmacist(String email, String password);
	
	public boolean checkUserAvailability(String email);

	Pharmacist getPharmacistbyEmail(String email);
}

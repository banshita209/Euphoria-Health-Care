package com.dao;

import com.model.Pharmacist;
import com.model.Pharmacy;

public interface Pharmacy_dao extends Common_dao<Pharmacy> {

	// public Pharmacy authenticatePharmacy(String email, String password);
	public boolean checkpharmacyAvailability(Pharmacist pharmacist);
}

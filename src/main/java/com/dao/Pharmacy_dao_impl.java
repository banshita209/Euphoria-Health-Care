package com.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.model.Pharmacist;
import com.model.Pharmacy;

public class Pharmacy_dao_impl extends Common_dao_impl<Pharmacy> implements Pharmacy_dao {

	@Override
	public Class<Pharmacy> get_ModelClass() {

		return Pharmacy.class;
	}

	/*@Override
	public Pharmacy authenticatePharmacy(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		criteria.add(Restrictions.eq("log_password", password));
		Pharmacy Pharmacy =(Pharmacy) criteria.uniqueResult();
		commit();
		return Pharmacy;
	}*/

	public boolean checkpharmacyAvailability(Pharmacist pharmacist) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("pharmacist", pharmacist));
		Pharmacy pharmacy = (Pharmacy) criteria.uniqueResult();
		//System.out.println(pharmacy.toString());
		commit();
		return ((pharmacy == null)?true:false);
	}
	
	public Pharmacy getpharmacy(long phst_id)
	{
		System.out.println("phst id"+phst_id);
		Pharmacy pharmacy =(Pharmacy) get_session().createQuery("from Pharmacy where pharmacist.phst_id ="+phst_id).uniqueResult();
		commit();
		//Pharmacy pharmacy = (Pharmacy) get_session().createSQLQuery("Select * from pharmacy where pharmacist ="+phst_id);
		return pharmacy;
	}

}
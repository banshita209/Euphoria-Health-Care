package com.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.model.Doctor;
import com.model.Pharmacist;

public class Pharmacist_dao_impl extends Common_dao_impl<Pharmacist> implements Pharmacist_dao {

	@Override
	public Class<Pharmacist> get_ModelClass() {

		return Pharmacist.class;
	}

	@Override
	public Pharmacist authenticatePharmacist(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		criteria.add(Restrictions.eq("log_password", password));
		Pharmacist pharmacist = (Pharmacist) criteria.uniqueResult();
		commit();
		return pharmacist;
	}
	
	@Override
	public boolean checkUserAvailability(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		Pharmacist pharmacist = (Pharmacist) criteria.uniqueResult();
		//System.out.println(pharmacist.toString());
		commit();
		return ((pharmacist == null)?true:false);
	}
	
	@Override
	public Pharmacist getPharmacistbyEmail(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		Pharmacist pharmacist =(Pharmacist) criteria.uniqueResult();
		commit();
		return pharmacist;
	}

}
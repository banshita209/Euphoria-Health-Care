package com.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.model.MedicalRepresentative;

public class MedicalRepresentative_dao_impl extends Common_dao_impl<MedicalRepresentative> implements MedicalRepresentative_dao {

	@Override
	public Class<MedicalRepresentative> get_ModelClass() {

		return MedicalRepresentative.class;
	}

	@Override
	public MedicalRepresentative authenticateMedicalRepresentative(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		criteria.add(Restrictions.eq("log_password", password));
		MedicalRepresentative medicalRepresentative = (MedicalRepresentative) criteria.uniqueResult();
		commit();
		return medicalRepresentative;
	}

	@Override
	public boolean checkUserAvailability(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		MedicalRepresentative medicalRepresentative = (MedicalRepresentative) criteria.uniqueResult();
		commit();
		return (medicalRepresentative == null)?true:false;
	}
	
	@Override
	public MedicalRepresentative getMedicalRepresentativebyEmail(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		MedicalRepresentative medicalRepresentative = (MedicalRepresentative) criteria.uniqueResult();
		commit();
		return medicalRepresentative;
	}
}

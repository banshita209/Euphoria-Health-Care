package com.dao;

import com.model.EmergencyServices;

public class EmergencyServices_dao_impl extends Common_dao_impl<EmergencyServices> implements EmergencyServices_dao {

	@Override
	public Class<EmergencyServices> get_ModelClass() {

		return EmergencyServices.class;
	}

	/*
	 * @Override public EmergencyServices authenticateEmergencyServices(String email, String password) {
	 * Criteria criteria = get_session().createCriteria(get_ModelClass());
	 * criteria.add(Restrictions.eq("log_email", email));
	 * criteria.add(Restrictions.eq("log_password", password)); 
	 * EmergencyServices EmergencyServices =(EmergencyServices) criteria.uniqueResult(); 
	 * commit(); 
	 * return EmergencyServices; 
	 * }
	 */

}

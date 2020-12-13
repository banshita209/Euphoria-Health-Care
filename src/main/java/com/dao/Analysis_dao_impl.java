package com.dao;

import com.model.Analysis;

public class Analysis_dao_impl extends Common_dao_impl<Analysis> implements Analysis_dao {

	@Override
	public Class<Analysis> get_ModelClass() {

		return Analysis.class;
	}

/*	@Override
	public Analysis authenticateAnalysis(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		criteria.add(Restrictions.eq("log_password", password));
		Analysis Analysis =(Analysis) criteria.uniqueResult();
		commit();
		return Analysis;
	}*/
}
package com.dao;

import com.model.Feedback;

public class Feedback_dao_impl extends Common_dao_impl<Feedback> implements Feedback_dao {

	@Override
	public Class<Feedback> get_ModelClass() {

		return Feedback.class;
	}

/*	@Override
	public Feedback authenticateFeedback(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		criteria.add(Restrictions.eq("log_password", password));
		Feedback Feedback =(Feedback) criteria.uniqueResult();
		commit();
		return Feedback;
	}*/

}
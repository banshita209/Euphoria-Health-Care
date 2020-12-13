package com.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.model.Admin;

public class Admin_dao_impl extends Common_dao_impl<Admin> implements Admin_dao {

	@Override
	public Class<Admin> get_ModelClass() {
		return Admin.class;
	}

	@Override
	public Admin authenticateAdmin(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("log_email", email));
		criteria.add(Restrictions.eq("log_password", password));

		Admin admin = (Admin) criteria.uniqueResult();
		commit();
		return admin;
	}
}

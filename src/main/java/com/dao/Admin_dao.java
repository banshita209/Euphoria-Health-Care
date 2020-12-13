package com.dao;

import com.model.Admin;

public interface Admin_dao extends Common_dao<Admin> {
	
	public Admin authenticateAdmin(String email, String password);

}

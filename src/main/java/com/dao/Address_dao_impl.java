package com.dao;

import java.util.List;

import com.model.Address;

public class Address_dao_impl extends Common_dao_impl<Address> implements Address_dao {

	@Override
	public Class<Address> get_ModelClass() {

		return Address.class;
	}

	public List<String> getArea()
	{
		System.out.println("in the query");
		List<String> area = get_session().createSQLQuery("select distinct area from Address where type='professional'").list();
		commit();
		for (String str : area) {
			System.out.println(str+"\n");
		}
		return area;
	}
}
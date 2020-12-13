package com.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;

import com.model.HealthTracker;

public class HealthTracker_dao_impl extends Common_dao_impl<HealthTracker> implements HealthTracker_dao {

	@Override
	public Class<HealthTracker> get_ModelClass() {

		return HealthTracker.class;
	}

	@Override
	public HealthTracker get_current_HealthTracker(long id) {
		HealthTracker healthTracker = (HealthTracker) get_session()
				.createQuery("FROM HealthTracker WHERE patient.patient_id =" + id
						+ " AND created_date = (SELECT MAX(created_date) FROM HealthTracker WHERE patient.patient_id ="
						+ id + ")")
				.uniqueResult();
		commit();
		return healthTracker;
	}

	public HealthTracker get_date_hd(Date date) {
		HealthTracker healthTracker = (HealthTracker) get_session()
				.createQuery("From HealthTracker where created_date ='" + date + "'").uniqueResult();

		commit();
		if (healthTracker != null) {
			System.out.println(healthTracker.toString());
		}
		return healthTracker;
	}

	public List<HealthTracker> getByGraphId(long pid) {
		Session session;
		List<HealthTracker> custList = new ArrayList<HealthTracker>();
		HealthTracker c = null;
		try {
			session = get_session();
			custList = (List<HealthTracker>) session
					.createQuery("from HealthTracker where patient_id =" + pid + "order by created_date desc").list();

			// Optional
			Iterator<HealthTracker> it = custList.iterator();
			while (it.hasNext()) {
				c = (HealthTracker) it.next();
				/*
				 * System.out.println("Id : " + c.getId() + ", Name : " + c.getName() +
				 * ", Age : " + c.getAge() + ", Did : " + c.getDid() + ", Doj : " + c.getDoj() +
				 * ", Salary : " + c.getSalary());
				 */

				c.setBlood_glucose(c.getBlood_glucose());
				c.setBlood_pressure(c.getBlood_pressure());

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		commit();
		return custList;
	}
}

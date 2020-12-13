package com.dao;

import java.util.List;

import com.model.Report;

public class Report_dao_impl extends Common_dao_impl<Report> implements Report_dao {

	@Override
	public Class<Report> get_ModelClass() {

		return Report.class;
	}

	public List<Report> allReport(long id) {

		List<Report> reports = (List<Report>) get_session().createQuery("from Report where patient.patient_id=" + id)
				.list();
		
		if (reports != null) {
			
			for (Report report : reports) {
				System.out.println(report.toString());
			}
		}
		commit();
		return reports;
	}

	/*
	 * @Override public Report authenticateReport(String email, String password) {
	 * Criteria criteria = get_session().createCriteria(get_ModelClass());
	 * criteria.add(Restrictions.eq("log_email", email));
	 * criteria.add(Restrictions.eq("log_password", password)); Report Report =
	 * (Report) criteria.uniqueResult(); commit(); return Report; }
	 */

}
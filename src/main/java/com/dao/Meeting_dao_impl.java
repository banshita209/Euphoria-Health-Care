package com.dao;

import java.sql.Date;
import java.util.List;

import com.model.Meeting;

public class Meeting_dao_impl extends Common_dao_impl<Meeting> implements Meeting_dao {

	@Override
	public Class<Meeting> get_ModelClass() {

		return Meeting.class;
	}

	public List<Meeting> getAllMeeting(long id) {
		byte n = 0;
		System.out.println("mr id " + id);
		long date_mili = System.currentTimeMillis();
		Date date = new Date(date_mili);
		List<Meeting> Meetings = (List<Meeting>) get_session()
				.createQuery("from Meeting WHERE ifd=0 AND appointment_date >= '" + date + "'AND mr=" + id).list();
		if (Meetings != null) {
			for (Meeting Meeting : Meetings) {
				System.out.println(Meeting.toString());
			}
		}
		commit();
		return Meetings;
	}

	public List<Meeting> getRequestedMeeting(long id) {
		byte n = 0;
		System.out.println("doctor id " + id);
		List<Meeting> Meetings = (List<Meeting>) get_session()
				.createQuery("from Meeting WHERE ifd=0 AND status='pending' AND doctor =" + id).list();

		if (Meetings != null) {
			for (Meeting Meeting : Meetings) {
				System.out.println(Meeting.toString());
			}
		}
		commit();
		return Meetings;
	}

	public List<Meeting> getTodayMeeting(long id) {
		byte n = 0;
		System.out.println("doctor id " + id);
		long date_mili = System.currentTimeMillis();
		Date date = new Date(date_mili);
		System.out.println("date " + date);
		List<Meeting> meetings = (List<Meeting>) get_session().createQuery(
				"from Meeting WHERE ifd=0 AND status='accepted' AND appointment_date='" + date + "' AND doctor =" + id)
				.list();

		if (meetings != null) {
			for (Meeting meeting : meetings) {
				System.out.println(meeting.toString());
			}
		}
		commit();
		return meetings;
	}

	@SuppressWarnings("unchecked")
	public List<Meeting> getAllMeetingfordoctor(long dr_id) {
		long date_mili = System.currentTimeMillis();
		Date date = new Date(date_mili);

		List<Meeting> meetings = (List<Meeting>) get_session().createQuery(
				"from Meeting where appointment_date >='" + date + "'AND doctor =" + dr_id + " AND status='accepted'")
				.list();
		commit();
		return meetings;

	}
}
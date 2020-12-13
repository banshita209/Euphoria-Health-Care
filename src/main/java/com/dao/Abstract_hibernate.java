package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class Abstract_hibernate {
	private static SessionFactory sesion_factory;
	private Session session;
	private static Configuration cfg;
	private Transaction transaction;

	private static void create_session_factory() {
		cfg = new Configuration().configure("hibernate.cfg.xml");

		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties())
				.build();
		sesion_factory = cfg.buildSessionFactory(serviceRegistry);

	}

	protected Session get_session() {
		if (sesion_factory == null) {
			create_session_factory();
		}
		session = sesion_factory.getCurrentSession();
		if (transaction == null) {
			transaction = session.beginTransaction();
		}
		return session;
	}

	protected void commit() {
		if (transaction != null && !transaction.wasCommitted()) {
			transaction.commit();
		}
		transaction = null;
	}
	/*
	 * protected void close() { if(!transaction.wasCommitted()){
	 * transaction.commit(); } if (session != null && !session.isOpen()) {
	 * session.close(); } }
	 */

	public static void main(String[] args) {
		create_session_factory();
		System.out.println("Session Factory : " + sesion_factory);
		System.exit(0);
	}

}

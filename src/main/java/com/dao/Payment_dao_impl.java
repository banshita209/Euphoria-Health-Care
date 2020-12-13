package com.dao;

import java.util.Iterator;
import java.util.List;

import com.model.Payment;

public class Payment_dao_impl extends Common_dao_impl<Payment> implements Payment_dao {

	@Override
	public Class<Payment> get_ModelClass() {

		return Payment.class;
	}

	public List<Payment> get_payment(long id) {
		System.out.println("Get Payment Method in payment_dao_impl :");

		List<Payment> payment = (List<Payment>) get_session().createQuery("FROM Payment where patient.patient_id=" + id)
				.list();

		System.out.println("After Query in Payment dao impl : " + payment.size());
		/*
		 * for (Payment payment2 : payment) { System.out.println(payment2.toString()); }
		 */
		Iterator<Payment> p = payment.iterator();
		while (p.hasNext()) {
			Payment p1 = p.next();
			System.out.println("Amount" + p1.getAmount());
		}
		commit();
		return payment;
	}

}

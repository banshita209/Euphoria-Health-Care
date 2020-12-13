package com.dao;

import java.util.List;

import com.model.Payment;

public interface Payment_dao extends Common_dao<Payment> {

	List<Payment> get_payment(long id);

	// public Payment authenticatePayment(String email, String password);
}

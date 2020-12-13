package com.dao;

import com.model.OTP;

public interface OTP_dao extends Common_dao<OTP>{
	
	public OTP authenticateOTP(String email, String password);
	
	public boolean checkUserAvailability(String email);
	
}

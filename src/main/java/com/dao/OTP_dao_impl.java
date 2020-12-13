package com.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.engine.transaction.jta.platform.internal.SynchronizationRegistryBasedSynchronizationStrategy;

import com.model.OTP;

public class OTP_dao_impl extends Common_dao_impl<OTP> implements OTP_dao{

	@Override
	public OTP authenticateOTP(String email, String password) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("email", email));
		OTP otp =  (OTP) criteria.uniqueResult();
		commit();
		return otp;
	}

	@Override
	public boolean checkUserAvailability(String email) {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.add(Restrictions.eq("email", email));
		OTP otp =  (OTP) criteria.uniqueResult();
		commit();
		return (otp == null)?true:false;
	}

	@Override
	public Class<OTP> get_ModelClass() {
		// TODO Auto-generated method stub
		return OTP.class;
	}
	
	public OTP realOTP(String email) {
		
		OTP otp=(OTP) get_session().createQuery("FROM OTP WHERE email = '"+email+"' AND id = ( SELECT MAX(id) FROM OTP WHERE email = '"+email+"' )").uniqueResult();
	
	/*	System.out.println(otp.toString());*/
		commit();
		return otp;
		
	}

}

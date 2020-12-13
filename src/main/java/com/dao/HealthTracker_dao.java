package com.dao;

import com.model.HealthTracker;

public interface HealthTracker_dao extends Common_dao<HealthTracker> {
	public HealthTracker get_current_HealthTracker(long id);
//	public HealthTracker authenticateHealthTracker(String email, String password);
}

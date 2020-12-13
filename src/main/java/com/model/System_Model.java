package com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class System_Model extends Model {
	static final long serialVersionUID = 1L;
	private Date create_date;
	private Date update_date;

	@Column(updatable = false)
	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public Date getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}

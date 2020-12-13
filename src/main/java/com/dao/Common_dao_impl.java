package com.dao;

import java.util.List;

import org.hibernate.Criteria;

import com.model.Model;

public abstract class Common_dao_impl<T extends Model> extends Abstract_hibernate {

	public abstract Class<T> get_ModelClass();

	public T insert(T t) {
		System.out.println("in insert method");
		get_session().save(get_ModelClass().getName(), t);
		commit();
		return t;
	}

	public void delete(Long id) {
		T t = get(id);
		get_session().delete(get_ModelClass().getName(), t);
		commit();
	}

	public T update(T t) {
		System.out.println("in update method");
		get_session().update(get_ModelClass().getName(), t);
		commit();
		return t;
	}

	@SuppressWarnings("unchecked")
	public List<T> find_all() {
		Criteria criteria = get_session().createCriteria(get_ModelClass());
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<T> list = criteria.list();
		commit();
		return list;
	}

	public List<T> insert(List<T> list) {
		for (T t : list) {
			insert(t);
		}
		commit();
		return list;
	}

	public void delete(List<Long> ids) {
		for (Long id : ids) {
			delete(id);
		}
		commit();
	}

	@SuppressWarnings("unchecked")
	public T get(Long id) {

		T t = (T) get_session().get(get_ModelClass().getName(), id);
		commit();
		return t;
	}

}

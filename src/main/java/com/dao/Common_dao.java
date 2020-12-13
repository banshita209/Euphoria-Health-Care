package com.dao;

import java.util.List;

import com.model.Model;

public interface Common_dao<T extends Model> {
	
	public T insert(T t);

	public List<T> insert(List<T> list);

	public void delete(Long id);

	public void delete(List<Long> ids);

	public T update(T t);

	public List<T> find_all();

	public T get(Long id);
}
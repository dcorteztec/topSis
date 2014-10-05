package br.com.topSIS.DAO.interfaces;


import java.io.Serializable;
import java.util.List;

public interface GenericDAO<T, ID extends Serializable> {

	T find(String name);

	T findById(ID id);
	
	T add(T entity);
	
	public T addOrUpdate(T entity);
	
	void refresh(T entity);
	
	T update(T entity);

	T merge(T entity);
	
	List<T> listAll();
	
	void remove(T entity);
	
	void flushAndClean();
	
	boolean exists(ID id); 
}



package br.com.topSIS.DAO.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import br.com.topSIS.DAO.interfaces.GenericDAO;

public class GenericDAOImpl<T, ID extends Serializable> implements GenericDAO<T, ID> {

	protected final Session session;	
	private Class<T> persistentClass;
	
	/**
	 * Creates a new GenericDao. You can receive dependencies through constructor,
	 * because this class is annotated with @Component. This class can be used
	 * as dependency of another class, as well.
	 * @param session Hibernate's Session.
	 */	
	@SuppressWarnings("unchecked")
	public GenericDAOImpl(Session session) {
		this.session = session;
		this.persistentClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}

	/**
	 * Returns the class object of the persistent class captured using reflection in constructor
	 * @return class object
	 */
	public Class<T> getPersistentClass() {
		return persistentClass;
	}
	
	/**
	 * Retrieves from database an object from it's given name. 
	 * As all objects has a name attribute this might be useful
	 */
	@SuppressWarnings("unchecked")
	public T find(String name) {
		return (T) findByCriteria(null,null, Restrictions.eq("name", name), Restrictions.eq("enabled", true));
	}
	
	/**
	 * Saves an object on database
	 * @return 
	 */
	public T add(T entity) {
		
		//Updating name: removing extra spaces and putting initial capital letter.
//		((BaseEntity)entity).setName(Utils.cleanStringName(entity));
		session.save(entity);
		return entity;
	}
	

	public T addOrUpdate(T entity) {
		//Updating name: removing extra spaces and putting initial capital letter.
//		((BaseEntity)entity).setName(Utils.cleanStringName(entity));
		
		// saving the entity itself.
		session.saveOrUpdate(entity);
		
		return entity;
	}
	
	/**
	 * Refreshes an object from database.
	 * All unsaved data will be lost
	 */
	public void refresh(T entity) {
		session.refresh(entity);
	}
	
	/**
	 * Updates an object on database
	 */
	public T update(T entity) {
		
		//Updating name: removing extra spaces and putting initial capital letter.
//		((BaseEntity)entity).setName(Utils.cleanStringName(entity));
		
		session.update(entity);
		return entity;
	}

	/**
	 * Merges an object on database
	 */
	public T merge(T entity) {
		session.merge(entity);
		return entity;
	}
	
	/**
	 * Retrieves from database all objects
	 */

	@SuppressWarnings("unchecked")
	public List<T> listAll() {
		return session.createQuery("FROM " + getPersistentClass().getCanonicalName()).list();
	}
	
	/**
	 * Removes an object from database
	 */
	public void remove(T entity) {
		session.delete(entity);
	}

	/**
	 * Retrieves from database an object from it's id
	 */
	@SuppressWarnings("unchecked")
	public T findById(ID id) {
		if (id == null)
			return null;
		return (T) session.get(getPersistentClass().getCanonicalName(), id);
	}	


	@SuppressWarnings("unchecked")
	protected List<T> findByCriteria(String tipoOrder, String orderByProperty, Criterion... criterion) {

		Criteria crit = session.createCriteria(getPersistentClass());
		
		for (Criterion c : criterion) {
			crit.add(c);
		}
		
		crit.setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY);
		
		if(orderByProperty != null && tipoOrder != null) {
			if(tipoOrder.equals("ASC")) {
				crit.addOrder(Order.asc(orderByProperty));				
			}
			else {
				crit.addOrder(Order.desc(orderByProperty));
			}
				
		}
		
		return crit.list();

	}

	public boolean exists(ID id) {
		
		if(this.findById(id) != null) {
			return true;
		}
		
		return false;
	}
	
	public void flushAndClean() {
		// Flushing objects
		session.flush();
		session.clear();
	}
	
}

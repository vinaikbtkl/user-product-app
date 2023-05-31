package org.jsp.userproductapp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.jsp.userproductapp.dto.User;

public class UserDao 
{
	EntityManager em = Persistence.createEntityManagerFactory("dev").createEntityManager();
	EntityTransaction et = em.getTransaction();
	
	public User saveUser(User u) {
		em.persist(u);
		et.begin();
		et.commit();
		return u;
	}
	
	public User updateUser(User u) {
		em.merge(u);
		et.begin();
		et.commit();
		return u;
	}
	
	public User findUserById(int id) {
		return em.find(User.class, id);
	}
	
	public User verifyUser(long phone , String pass) {
		Query qry = em.createQuery("select u from User u where u.phone=?1 and password=?2");
		qry.setParameter(1, phone);
		qry.setParameter(2, pass);
		try {
			return (User)qry.getSingleResult();
		}
		catch(NoResultException e) {
			return null;
		}
	}
	
	public boolean deleteUser(int id) {
		User u = findUserById(id);
		if(u != null) {
			em.remove(u);
			et.begin();
			et.commit();
			return true;
		}
		return false;
	}

}

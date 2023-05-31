package org.jsp.userproductapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import org.jsp.userproductapp.dto.Product;
import org.jsp.userproductapp.dto.User;

public class ProductDao 
{
	EntityManager em = Persistence.createEntityManagerFactory("dev").createEntityManager();
	EntityTransaction et = em.getTransaction();
	
	public Product saveProduct(Product prod, int user_id) {
		User u = em.find(User.class, user_id);
		if(u != null) {
			u.getProducts().add(prod);
			prod.setUser(u);
			em.persist(prod);
			et.begin();
			et.commit();
			return prod;
		}
		return null;
	}
	
	public Product updateProduct(Product prod , int user_id) {
		User u = em.find(User.class, user_id);
		if(u != null) {
			u.getProducts().add(prod);
			prod.setUser(u);
			em.merge(prod);
			et.begin();
			et.commit();
			return prod;
		}
		return null;
	}
	
	public boolean deleteProduct(int id) {
		Product p = findProductById(id);
		if(p != null) {
			em.remove(p);
			et.begin();
			et.commit();
			return true;
		}
		return false;
	}
	
	public Product findProductById(int id) {
		return em.find(Product.class, id);
	} 
	
	public List<Product> findProductByUserId(int user_id){
		Query q = em.createQuery("select u.products from User u where u.id=?1");
		q.setParameter(1, user_id);
		return q.getResultList();
	}
}

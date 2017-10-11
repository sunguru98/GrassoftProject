package com.gs.grassoft.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gs.grassoft.dao.SupplierDAO;
import com.gs.grassoft.model.CategoryCredentials;
import com.gs.grassoft.model.SupplierCredentials;

@Repository
public class SupplierDAOImpl implements SupplierDAO{
	@Autowired //@AutoWired is used for calling the object from the place where we have instantiated the bean .. here in the dbconfiguration ....
	SessionFactory sessionFactory; // this is the object where we have created the @Bean. this sessionfactory is very crucial to create the database operations... 

	public boolean insertSupplier(SupplierCredentials supplierCredentials) { // insertUser allows to pass the details to the db..
		try {
			
			Session session = sessionFactory.openSession(); // a session is opened from its parent sessionFactory
			
			Transaction transaction = session.beginTransaction();
			session.save(supplierCredentials);
			
	// this parameter of the model class allows to pass the details to the database from the model class member variables... (in short the details where we feed in the website)
			transaction.commit();
			
			session.close();
			
			return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	public List<SupplierCredentials> allSuppliers() {
		try {
			
			Session session = sessionFactory.openSession(); // a session is opened from its parent sessionFactory
			Transaction transaction = session.beginTransaction();
			List<SupplierCredentials> allSuppliers = session.createQuery("FROM SupplierCredentials").list();
			transaction.commit();
			session.close();
			return allSuppliers;
		
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}
}

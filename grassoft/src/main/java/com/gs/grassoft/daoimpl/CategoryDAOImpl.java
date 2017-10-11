package com.gs.grassoft.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.gs.grassoft.dao.CategoryDAO;
import com.gs.grassoft.model.CategoryCredentials;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired //@AutoWired is used for calling the object from the place where we have instantiated the bean .. here in the dbconfiguration ....
	SessionFactory sessionFactory; // this is the object where we have created the @Bean. this sessionfactory is very crucial to create the database operations... 

	public boolean insertCategory(CategoryCredentials categoryCredentials) { // insertUser allows to pass the details to the db..
		try {
			
			Session session = sessionFactory.openSession(); // a session is opened from its parent sessionFactory
			Transaction transaction = session.beginTransaction();
			session.save(categoryCredentials);
			
	// this parameter of the model class allows to pass the details to the database from the model class member variables... (in short the details where we feed in the website)
			transaction.commit();
			
			session.close();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	public List<CategoryCredentials> allCategory() {
		// TODO Auto-generated method stub
		try {
			
			Session session = sessionFactory.openSession(); // a session is opened from its parent sessionFactory
			Transaction transaction = session.beginTransaction();
			List<CategoryCredentials> allCategory = session.createQuery("FROM CategoryCredentials").list();
			transaction.commit();
			session.close();
			return allCategory;
		
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

	public boolean deleteCategory(long categoryId) {
		// TODO Auto-generated method stub
try {
			
			Session session = sessionFactory.openSession(); // a session is opened from its parent sessionFactory
			Transaction transaction = session.beginTransaction();
			CategoryCredentials categoryCredentials=session.get(CategoryCredentials.class, categoryId);
			session.delete(categoryCredentials);
	// this parameter of the model class allows to pass the details to the database from the model class member variables... (in short the details where we feed in the website)
			transaction.commit();
			
			session.close();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	/*public CategoryCredentials singleCategory(long categoryId) {
		// TODO Auto-generated method stub
try {
			
			Session session = sessionFactory.openSession(); // a session is opened from its parent sessionFactory
			Transaction transaction = session.beginTransaction();
			CategoryCredentials categoryCredentials=session.get(CategoryCredentials.class, categoryId);
			
	// this parameter of the model class allows to pass the details to the database from the model class member variables... (in short the details where we feed in the website)
			transaction.commit();
			
			session.close();
			return categoryCredentials;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}*/

	}



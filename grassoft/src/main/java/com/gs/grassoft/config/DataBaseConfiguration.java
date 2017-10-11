package com.gs.grassoft.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
//import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
public class DataBaseConfiguration {
	
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/grassoft");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		return dataSource;
	}


	@Bean(name = "sessionFactory")   	//@Bean is used to create objects for loosely coupled mechanism ... 
										//here the sessionFactory is the name of the object .. (this is not a keyword)
	public SessionFactory getSessionFactory() {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(getDataSource());
		sessionBuilder.scanPackages("com.gs.grassoft.model");
		sessionBuilder.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		sessionBuilder.setProperty("hibernate.show_sql", "true");
		sessionBuilder.setProperty("hibernate.hbm2ddl.auto", "update");
		return sessionBuilder.buildSessionFactory();
	}
	
	
		
	

	
}

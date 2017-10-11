package com.gs.grassoft.dao;

import org.springframework.stereotype.Service;

import com.gs.grassoft.model.UserCredentials;

@Service
public interface UserDAO {
	
	public boolean insertUser(UserCredentials userCredentials);

}

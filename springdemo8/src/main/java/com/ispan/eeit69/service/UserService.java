package com.ispan.eeit69.service;

import java.util.List;

import javax.mail.MessagingException;

import com.ispan.eeit69.model.User;
import com.ispan.eeit69.service.Impl.EmailNotFoundException;

public interface UserService {
	List<User> findAll();

	User findById(int theId);

	void save(User theUser);

	void deleteById(int theId);
	
	User findByUserName(String username);

	
	User findByUserId(String username);
	
	void detach(User user);
	
	String resetPassword(String email) throws EmailNotFoundException, MessagingException;
	 
	long getTotalUserCount();
		
	List<User> getUserSubset(int startIndex, int recordsPerPage);
	
	long getTotalUserCountByKeyword(String keyword);
	
	public List<User> searchUsersByKeyword(String keyword, int startIndex, int recordsPerPage);
}
package com.mgstore.user.model.service;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.mgstore.user.model.dao.UserDAO;
import com.mgstore.user.model.dto.UserDTO;

public class UserService {
	
	private final UserDAO userDAO;
	
	public UserService() {
		userDAO = new UserDAO();
	}
	
	/* 회원가입 */
	public int registUser(UserDTO requestUser) {
		
		SqlSession session = getSqlSession();
		
		int result = userDAO.insertUser(session, requestUser);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 로그인 */
	public UserDTO loginCheck(UserDTO requestUser) {
			
		SqlSession session = getSqlSession();
		
		UserDTO loginUser = null;
		
		String encPwd = userDAO.selectEncryptedPwd(session, requestUser);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		if(passwordEncoder.matches(requestUser.getUserPwd(), encPwd)) {
			loginUser = userDAO.selectLoginUser(session, requestUser);
		}
		
		session.close();
		
		return loginUser;
	}

	public String findId(UserDTO requestUser) {
		
		SqlSession session = getSqlSession();
		
		String userId = userDAO.selectUserId(session, requestUser);
		
		session.close();
		
		return userId;
	}



}

package com.mgstore.user.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.user.model.dto.UserDTO;

public class UserDAO {
	
	/* 신규 회원 등록 */
	public int insertUser(SqlSession session, UserDTO requestUser) {
		return session.insert("UserDAO.insertUser", requestUser);
	}
	
	/* 로그인 시도 중 암호화된 비밀번호 조회 */
	public String selectEncryptedPwd(SqlSession session, UserDTO requestUser) {
		return session.selectOne("UserDAO.selectEncryptedPwd", requestUser);
	}
	
	/* 로그인 처리 */
	public UserDTO selectLoginUser(SqlSession session, UserDTO requestUser) {
		return session.selectOne("UserDAO.selectLoginUser", requestUser);
	}
}

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
	
	/* 아이디 찾기 */
	public String selectUserId(SqlSession session, UserDTO requestUser) {
		return session.selectOne("UserDAO.selectUserId", requestUser);
	}
	
	/* 아이디 중복 확인 */
	public int userIdCheck(SqlSession session, String userId) {
		return session.selectOne("UserDAO.userIdCheck", userId);
	}
	
	/* 닉네임 중복 확인 */
	public int nicknameCheck(SqlSession session, String nickname) {
		return session.selectOne("UserDAO.nicknameCheck", nickname);
	}
	
	/* 이메일 중복 확인 */
	public int emailCheck(SqlSession session, String email) {
		return session.selectOne("UserDAO.emailCheck", email);
	}
	
	/* 비밀번호 찾기 및 수정 */
	public int updateUserPasswordTemp(SqlSession session, UserDTO requestUser) {
		return session.update("UserDAO.updateUserPasswordTemp", requestUser);
	}

}

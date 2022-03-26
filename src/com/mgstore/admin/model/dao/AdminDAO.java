package com.mgstore.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.admin.model.dto.UserDTO;

public class AdminDAO {

	public List<UserDTO> selectUserList(SqlSession session, String userId) {
		
		return session.selectList("AdminDAO.selectUserList", userId);
	}


}

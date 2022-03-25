package com.mgstore.admin.service;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import static com.mgstore.common.mybatis.Template.getSqlSession;

import com.mgstore.admin.model.dao.AdminDAO;
import com.mgstore.admin.model.dto.UserDTO;

public class AdminService {
	
	private final AdminDAO adminDAO;
	
	public AdminService() {
		adminDAO = new AdminDAO();
	}
	

	public List<UserDTO> selectUserList(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<UserDTO> userlist = adminDAO.selectUserList(session, userId);
		
		session.close();
		
		return userlist;
		
	}
}

package com.mgstore.mypage.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.mypage.model.dto.MyPetDTO;
import com.mgstore.mypage.model.dto.MyPostDTO;

public class MyPageDAO {

	public List<MyPetDTO> selectMyPetList(SqlSession session, String userId) {
		
		return session.selectList("MyPageDAO.selectMyPetList", userId);
	}

	public List<MyPostDTO> selectMyPostList(SqlSession session, String userId) {
		return session.selectList("MyPageDAO.selectMyPostList", userId);
	}

}

package com.mgstore.mypage.model.service;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.mypage.model.dao.MyPageDAO;
import com.mgstore.mypage.model.dto.MyPetDTO;
import com.mgstore.mypage.model.dto.MyPostDTO;

public class MyPageService {
	
	private final MyPageDAO myPageDAO;
	
	public MyPageService() {
		myPageDAO = new MyPageDAO();
	}

	public Map<String, Object> selectMyPageData(String userId) {
		
		SqlSession session = getSqlSession();
		
		/* 1. 마이 펫 정보 목록 조회 */
		List<MyPetDTO> myPetList = myPageDAO.selectMyPetList(session, userId);
		
		/* 2. 작성한 게시글 목록 조회 */
		
		List<MyPostDTO> myPostList = myPageDAO.selectMyPostList(session, userId);
		
		/*3. 조회 끝났으면 session 닫기 */
		session.close();
		
		/* 4. 리턴 map 만들어서 담아서 리턴 */
		Map<String, Object> returnMap = new HashMap<>();
		returnMap.put("myPetList", myPetList);
		
		return returnMap;
	}

}

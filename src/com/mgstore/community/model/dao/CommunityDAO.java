package com.mgstore.community.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.common.paging.SelectCriteria;
import com.mgstore.community.model.dto.CommunityPostImageDTO;
import com.mgstore.community.model.dto.CommunityWriteDTO;

public class CommunityDAO {
	
	/*사진 없는 게시글 삽입*/
	public static int insertWrite(SqlSession session, CommunityWriteDTO newWrite) {
		
		return session.insert("CommunityDAO.insertWrite", newWrite);
	}
	
	/*게시글의 수를 알아온다.*/                            
	public int selectTotalCount(SqlSession session, Map<String, String> searchMap) {
		
		return session.selectOne("CommunityDAO.selectTotalCount", searchMap);
	}

	public List<CommunityWriteDTO> selectCommunityList(SqlSession session, SelectCriteria selectCriteria) {
		
		return session.selectList("CommunityDAO.selectWriteList", selectCriteria);
	}

}

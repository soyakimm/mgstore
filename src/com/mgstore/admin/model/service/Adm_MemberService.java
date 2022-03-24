package com.mgstore.admin.model.service;

import com.mgstore.admin.model.dao.Adm_MemberDAO;

public class Adm_MemberService {

	/* 팀원과 헷갈리지 않게 본인 dao, service, dto 명칭 잘 하기*/
	private final Adm_MemberDAO Adm_MemberDAO;
	
	public Adm_MemberService() {
		Adm_MemberDAO = new Adm_MemberDAO();
	}
	
	
}



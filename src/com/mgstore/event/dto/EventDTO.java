package com.mgstore.event.dto;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.admin.model.dto.UserDTO;

public class EventDTO {
	
	private int eveid; //이벤트순서
	private UserDTO userid; // 관리자인지 회원인지
	/* title: 메인배너, content: 이벤트내용사진 */
	private String evetitle; // 제목
	private String evecontent; // 내용
	private int categoryCode; // 이벤트 카테고리 구분하는 pk
	private EveCategoryDTO category; //이벤트 카테고리 
	private Date evecreate; // 등록일
	private Date evestart; // 시작일
	private Date eveend;  // 종료일
	private Date evemoddate; // 수정일
	private String evestatus; //삭제여부 
	private int evecount; // 조회수 
	private List<EveAttachmentDTO> attachmentList; //첨부이미지
	
	
	public EventDTO() {}


	public EventDTO(int eveid, UserDTO userid, String evetitle, String evecontent, int categoryCode,
			EveCategoryDTO category, Date evecreate, Date evestart, Date eveend, Date evemoddate, String evestatus,
			int evecount, List<EveAttachmentDTO> attachmentList) {
		super();
		this.eveid = eveid;
		this.userid = userid;
		this.evetitle = evetitle;
		this.evecontent = evecontent;
		this.categoryCode = categoryCode;
		this.category = category;
		this.evecreate = evecreate;
		this.evestart = evestart;
		this.eveend = eveend;
		this.evemoddate = evemoddate;
		this.evestatus = evestatus;
		this.evecount = evecount;
		this.attachmentList = attachmentList;
	}


	public int getEveid() {
		return eveid;
	}


	public void setEveid(int eveid) {
		this.eveid = eveid;
	}


	public UserDTO getUserid() {
		return userid;
	}


	public void setUserid(UserDTO userid) {
		this.userid = userid;
	}


	public String getEvetitle() {
		return evetitle;
	}


	public void setEvetitle(String evetitle) {
		this.evetitle = evetitle;
	}


	public String getEvecontent() {
		return evecontent;
	}


	public void setEvecontent(String evecontent) {
		this.evecontent = evecontent;
	}


	public int getCategoryCode() {
		return categoryCode;
	}


	public void setCategoryCode(int categoryCode) {
		this.categoryCode = categoryCode;
	}


	public EveCategoryDTO getCategory() {
		return category;
	}


	public void setCategory(EveCategoryDTO category) {
		this.category = category;
	}


	public Date getEvecreate() {
		return evecreate;
	}


	public void setEvecreate(Date evecreate) {
		this.evecreate = evecreate;
	}


	public java.util.Date getEvestart() {
		return evestart;
	}


	public void setEvestart(Date evestart) {
		this.evestart = evestart;
	}


	public java.util.Date getEveend() {
		return eveend;
	}


	public void setEveend(Date eveend) {
		this.eveend = eveend;
	}


	public Date getEvemoddate() {
		return evemoddate;
	}


	public void setEvemoddate(Date evemoddate) {
		this.evemoddate = evemoddate;
	}


	public String getEvestatus() {
		return evestatus;
	}


	public void setEvestatus(String evestatus) {
		this.evestatus = evestatus;
	}


	public int getEvecount() {
		return evecount;
	}


	public void setEvecount(int evecount) {
		this.evecount = evecount;
	}


	public List<EveAttachmentDTO> getAttachmentList() {
		return attachmentList;
	}


	public void setAttachmentList(List<EveAttachmentDTO> attachmentList) {
		this.attachmentList = attachmentList;
	}


	@Override
	public String toString() {
		return "EventDTO [eveid=" + eveid + ", userid=" + userid + ", evetitle=" + evetitle + ", evecontent="
				+ evecontent + ", categoryCode=" + categoryCode + ", category=" + category + ", evecreate=" + evecreate
				+ ", evestart=" + evestart + ", eveend=" + eveend + ", evemoddate=" + evemoddate + ", evestatus="
				+ evestatus + ", evecount=" + evecount + ", attachmentList=" + attachmentList + "]";
	}

	
}
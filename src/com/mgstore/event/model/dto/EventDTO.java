package com.mgstore.event.model.dto;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.user.model.dto.UserDTO;

public class EventDTO {
	
	private int eveId; //이벤트순서
	private UserDTO user; // 관리자인지 회원인지
	/* title: 메인배너, content: 이벤트내용사진 */
	private String eveTitle; // 제목
	private String eveContent; // 내용
	private int categoryCode; // 이벤트 카테고리 구분하는 pk
	private EveCategoryDTO category; //이벤트 카테고리 
	private Date eveCreate; // 등록일
	private Date eveStart; // 시작일
	private Date eveEnd;  // 종료일
	private Date eveModDate; // 수정일
	private String eveStatus; //삭제여부 
	private int eveCount; // 조회수 
	private List<EveAttachmentDTO> attachmentList; //첨부이미지
	
	
	public EventDTO() {}


	public EventDTO(int eveId, UserDTO user, String eveTitle, String eveContent, int categoryCode,
			EveCategoryDTO category, Date eveCreate, Date eveStart, Date eveEnd, Date eveModdate, String eveStatus,
			int eveCount, List<EveAttachmentDTO> attachmentList) {
		super();
		this.eveId = eveId;
		this.user = user;
		this.eveTitle = eveTitle;
		this.eveContent = eveContent;
		this.categoryCode = categoryCode;
		this.category = category;
		this.eveCreate = eveCreate;
		this.eveStart = eveStart;
		this.eveEnd = eveEnd;
		this.eveModDate = eveModdate;
		this.eveStatus = eveStatus;
		this.eveCount = eveCount;
		this.attachmentList = attachmentList;
	}


	public int getEveId() {
		return eveId;
	}


	public void setEveId(int eveId) {
		this.eveId = eveId;
	}


	public UserDTO getUser() {
		return user;
	}


	public void setUser(UserDTO user) {
		this.user = user;
	}


	public String getEveTitle() {
		return eveTitle;
	}


	public void setEveTitle(String eveTitle) {
		this.eveTitle = eveTitle;
	}


	public String getEveContent() {
		return eveContent;
	}


	public void setEveContent(String eveContent) {
		this.eveContent = eveContent;
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


	public Date getEveCreate() {
		return eveCreate;
	}


	public void setEveCreate(Date eveCreate) {
		this.eveCreate = eveCreate;
	}


	public Date getEveStart() {
		return eveStart;
	}


	public void setEveStart(Date eveStart) {
		this.eveStart = eveStart;
	}


	public Date getEveEnd() {
		return eveEnd;
	}


	public void setEveEnd(Date eveEnd) {
		this.eveEnd = eveEnd;
	}


	public Date getEveModDate() {
		return eveModDate;
	}


	public void setEveModDate(Date eveModDate) {
		this.eveModDate = eveModDate;
	}


	public String getEveStatus() {
		return eveStatus;
	}


	public void setEveStatus(String eveStatus) {
		this.eveStatus = eveStatus;
	}


	public int getEveCount() {
		return eveCount;
	}


	public void setEveCount(int eveCount) {
		this.eveCount = eveCount;
	}


	public List<EveAttachmentDTO> getAttachmentList() {
		return attachmentList;
	}


	public void setAttachmentList(List<EveAttachmentDTO> attachmentList) {
		this.attachmentList = attachmentList;
	}


	@Override
	public String toString() {
		return "EventDTO [eveId=" + eveId + ", user=" + user + ", eveTitle=" + eveTitle + ", eveContent=" + eveContent
				+ ", categoryCode=" + categoryCode + ", category=" + category + ", eveCreate=" + eveCreate
				+ ", eveStart=" + eveStart + ", eveEnd=" + eveEnd + ", eveModdate=" + eveModDate + ", eveStatus="
				+ eveStatus + ", eveCount=" + eveCount + ", attachmentList=" + attachmentList + "]";
	}


	
	
}
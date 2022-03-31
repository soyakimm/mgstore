package com.mgstore.event.model.dto;

import java.sql.Date;

import com.mgstore.user.model.dto.UserDTO;

public class EventCommentDTO {


	
	/*
EC_ID	NUMBER	No		1	이벤트댓글 아이디
USER_ID	VARCHAR2(20 BYTE)	No		2	회원아이디
EVE_ID	NUMBER	No		3	이벤트 아이디
EC_CREATE	DATE	No	"SYSDATE	"	4	댓글 등록일
EC_MODDATE	DATE	Yes	"SYSDATE	"	5	최종 수정일
EC_CONTENT	VARCHAR2(2000 BYTE)	No		6	댓글 내용
EC_REPORT	VARCHAR2(2 BYTE)	Yes	"'N'	"	7	댓글신고여부
	 */
	
	private int ecID; //이벤트 댓글 pk
	private int eveId; //이벤트게시판 fk
	private UserDTO user; //댓글유저
	private String ecContent; //댓글내용
	private Date ecCreate; //댓글생성일
	private Date ecModDate; //댓글수정일
	private String ecReport; //신고여부
	
	public EventCommentDTO() {}

	public EventCommentDTO(int ecID, UserDTO user, int eveId, Date ecCreate, Date ecModDate, String ecContent,
			String ecReport) {
		super();
		this.ecID = ecID;
		this.user = user;
		this.eveId = eveId;
		this.ecCreate = ecCreate;
		this.ecModDate = ecModDate;
		this.ecContent = ecContent;
		this.ecReport = ecReport;
	}

	public int getEcID() {
		return ecID;
	}

	public void setEcID(int ecID) {
		this.ecID = ecID;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public int getEveId() {
		return eveId;
	}

	public void setEveId(int eveId) {
		this.eveId = eveId;
	}

	public Date getEcCreate() {
		return ecCreate;
	}

	public void setEcCreate(Date ecCreate) {
		this.ecCreate = ecCreate;
	}

	public Date getEcModDate() {
		return ecModDate;
	}

	public void setEcModDate(Date ecModDate) {
		this.ecModDate = ecModDate;
	}

	public String getEcContent() {
		return ecContent;
	}

	public void setEcContent(String ecContent) {
		this.ecContent = ecContent;
	}

	public String getEcReport() {
		return ecReport;
	}

	public void setEcReport(String ecReport) {
		this.ecReport = ecReport;
	}

	@Override
	public String toString() {
		return "EventComment [ecID=" + ecID + ", user=" + user + ", eveId=" + eveId + ", ecCreate=" + ecCreate
				+ ", ecModDate=" + ecModDate + ", ecContent=" + ecContent + ", ecReport=" + ecReport + "]";
	}
	
	

}

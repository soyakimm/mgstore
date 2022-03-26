package com.mgstore.event.dto;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class EventDTO {
	
	private int eveid;
	private java.sql.Date evedate;
	private java.sql.Date evestart;
	private java.sql.Date eveend;
	private String eveinfo;
	private String userid;
	private java.sql.Date evemoddate;
	private String evedelflag;
	
	public EventDTO() {}

	public EventDTO(int eveid, Date evedate, Date evestart, Date eveend, String eveinfo, String userid, Date evemoddate,
			String evedelflag) {
		super();
		this.eveid = eveid;
		this.evedate = evedate;
		this.evestart = evestart;
		this.eveend = eveend;
		this.eveinfo = eveinfo;
		this.userid = userid;
		this.evemoddate = evemoddate;
		this.evedelflag = evedelflag;
	}

	public int getEveid() {
		return eveid;
	}

	public void setEveid(int eveid) {
		this.eveid = eveid;
	}

	public java.sql.Date getEvedate() {
		return evedate;
	}

	public void setEvedate(java.sql.Date evedate) {
		this.evedate = evedate;
	}

	public java.sql.Date getEvestart() {
		return evestart;
	}

	public void setEvestart(java.sql.Date evestart) {
		this.evestart = evestart;
	}

	public java.sql.Date getEveend() {
		return eveend;
	}

	public void setEveend(java.sql.Date eveend) {
		this.eveend = eveend;
	}

	public String getEveinfo() {
		return eveinfo;
	}

	public void setEveinfo(String eveinfo) {
		this.eveinfo = eveinfo;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public java.sql.Date getEvemoddate() {
		return evemoddate;
	}

	public void setEvemoddate(java.sql.Date evemoddate) {
		this.evemoddate = evemoddate;
	}

	public String getEvedelflag() {
		return evedelflag;
	}

	public void setEvedelflag(String evedelflag) {
		this.evedelflag = evedelflag;
	}

	@Override
	public String toString() {
		return "EventDTO [eveid=" + eveid + ", evedate=" + evedate + ", evestart=" + evestart + ", eveend=" + eveend
				+ ", eveinfo=" + eveinfo + ", userid=" + userid + ", evemoddate=" + evemoddate + ", evedelflag="
				+ evedelflag + "]";
	}

	
}
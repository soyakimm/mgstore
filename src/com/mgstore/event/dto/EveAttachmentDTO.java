package com.mgstore.event.dto;

public class EveAttachmentDTO {
	
	private int eveimgno;
	private int eveid;
	private String eveoriginname;
	private String evesavedname;
	private String evesavepath;
	private String evefiletype;
	private String eveimgstatus;
	private String evepath;
	
	public EveAttachmentDTO() {}

	public EveAttachmentDTO(int eveimgno, int eveid, String eveoriginname, String evesavedname, String evesavepath,
			String evefiletype, String eveimgstatus, String evepath) {
		super();
		this.eveimgno = eveimgno;
		this.eveid = eveid;
		this.eveoriginname = eveoriginname;
		this.evesavedname = evesavedname;
		this.evesavepath = evesavepath;
		this.evefiletype = evefiletype;
		this.eveimgstatus = eveimgstatus;
		this.evepath = evepath;
	}

	public int getEveimgno() {
		return eveimgno;
	}

	public void setEveimgno(int eveimgno) {
		this.eveimgno = eveimgno;
	}

	public int getEveid() {
		return eveid;
	}

	public void setEveid(int eveid) {
		this.eveid = eveid;
	}

	public String getEveoriginname() {
		return eveoriginname;
	}

	public void setEveoriginname(String eveoriginname) {
		this.eveoriginname = eveoriginname;
	}

	public String getEvesavedname() {
		return evesavedname;
	}

	public void setEvesavedname(String evesavedname) {
		this.evesavedname = evesavedname;
	}

	public String getEvesavepath() {
		return evesavepath;
	}

	public void setEvesavepath(String evesavepath) {
		this.evesavepath = evesavepath;
	}

	public String getEvefiletype() {
		return evefiletype;
	}

	public void setEvefiletype(String evefiletype) {
		this.evefiletype = evefiletype;
	}

	public String getEveimgstatus() {
		return eveimgstatus;
	}

	public void setEveimgstatus(String eveimgstatus) {
		this.eveimgstatus = eveimgstatus;
	}

	public String getEvepath() {
		return evepath;
	}

	public void setEvepath(String evepath) {
		this.evepath = evepath;
	}

	@Override
	public String toString() {
		return "EveAttachmentDTO [eveimgno=" + eveimgno + ", eveid=" + eveid + ", eveoriginname=" + eveoriginname
				+ ", evesavedname=" + evesavedname + ", evesavepath=" + evesavepath + ", evefiletype=" + evefiletype
				+ ", eveimgstatus=" + eveimgstatus + ", evepath=" + evepath + "]";
	}
	
	

}

package com.mgstore.product.model.dto;

import java.sql.Date;

public class ProImgDTO implements java.io.Serializable {
	
	private int pImgId;
	private int refproId;
	private String pImgOrgName;
	private String pImgSvrName;
	private String pImgTmbName;
	private char pImgTmbYN;
	private int pImgSize;
	private Date pImgDate;
	
	public ProImgDTO() {}

	public ProImgDTO(int pImgId, int refproId, String pImgOrgName, String pImgSvrName, String pImgTmbName,
			char pImgTmbYN, int pImgSize, Date pImgDate) {
		super();
		this.pImgId = pImgId;
		this.refproId = refproId;
		this.pImgOrgName = pImgOrgName;
		this.pImgSvrName = pImgSvrName;
		this.pImgTmbName = pImgTmbName;
		this.pImgTmbYN = pImgTmbYN;
		this.pImgSize = pImgSize;
		this.pImgDate = pImgDate;
	}

	public int getpImgId() {
		return pImgId;
	}

	public void setpImgId(int pImgId) {
		this.pImgId = pImgId;
	}

	public int getRefproId() {
		return refproId;
	}

	public void setRefproId(int refproId) {
		this.refproId = refproId;
	}

	public String getpImgOrgName() {
		return pImgOrgName;
	}

	public void setpImgOrgName(String pImgOrgName) {
		this.pImgOrgName = pImgOrgName;
	}

	public String getpImgSvrName() {
		return pImgSvrName;
	}

	public void setpImgSvrName(String pImgSvrName) {
		this.pImgSvrName = pImgSvrName;
	}

	public String getpImgTmbName() {
		return pImgTmbName;
	}

	public void setpImgTmbName(String pImgTmbName) {
		this.pImgTmbName = pImgTmbName;
	}

	public char getpImgTmbYN() {
		return pImgTmbYN;
	}

	public void setpImgTmbYN(char pImgTmbYN) {
		this.pImgTmbYN = pImgTmbYN;
	}

	public int getpImgSize() {
		return pImgSize;
	}

	public void setpImgSize(int pImgSize) {
		this.pImgSize = pImgSize;
	}

	public Date getpImgDate() {
		return pImgDate;
	}

	public void setpImgDate(Date pImgDate) {
		this.pImgDate = pImgDate;
	}

	@Override
	public String toString() {
		return "ProImgDTO [pImgId=" + pImgId + ", refproId=" + refproId + ", pImgOrgName=" + pImgOrgName
				+ ", pImgSvrName=" + pImgSvrName + ", pImgTmbName=" + pImgTmbName + ", pImgTmbYN=" + pImgTmbYN
				+ ", pImgSize=" + pImgSize + ", pImgDate=" + pImgDate + "]";
	}
	
	
	

}

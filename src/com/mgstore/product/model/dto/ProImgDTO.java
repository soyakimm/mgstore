package com.mgstore.product.model.dto;

import java.sql.Date;

public class ProImgDTO implements java.io.Serializable {
	
	private int pImgId;
	private int refProId;
	private String pImgOrgName;
	private String pImgSvrName;
	private String pImgPath;
	private String pImgType;
	private String pThumbnailPath;
	private String pImgStatus;
	
	
	public ProImgDTO() {}


	public ProImgDTO(int pImgId, int refProId, String pImgOrgName, String pImgSvrName, String pImgPath, String pImgType,
			String pThumbnailPath, String pImgStatus) {
		super();
		this.pImgId = pImgId;
		this.refProId = refProId;
		this.pImgOrgName = pImgOrgName;
		this.pImgSvrName = pImgSvrName;
		this.pImgPath = pImgPath;
		this.pImgType = pImgType;
		this.pThumbnailPath = pThumbnailPath;
		this.pImgStatus = pImgStatus;
	}


	public int getpImgId() {
		return pImgId;
	}


	public void setpImgId(int pImgId) {
		this.pImgId = pImgId;
	}


	public int getRefProId() {
		return refProId;
	}


	public void setRefProId(int refProId) {
		this.refProId = refProId;
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


	public String getpImgPath() {
		return pImgPath;
	}


	public void setpImgPath(String pImgPath) {
		this.pImgPath = pImgPath;
	}


	public String getpImgType() {
		return pImgType;
	}


	public void setpImgType(String pImgType) {
		this.pImgType = pImgType;
	}


	public String getpThumbnailPath() {
		return pThumbnailPath;
	}


	public void setpThumbnailPath(String pThumbnailPath) {
		this.pThumbnailPath = pThumbnailPath;
	}


	public String getpImgStatus() {
		return pImgStatus;
	}


	public void setpImgStatus(String pImgStatus) {
		this.pImgStatus = pImgStatus;
	}


	@Override
	public String toString() {
		return "ProImgDTO [pImgId=" + pImgId + ", refProId=" + refProId + ", pImgOrgName=" + pImgOrgName
				+ ", pImgSvrName=" + pImgSvrName + ", pImgPath=" + pImgPath + ", pImgType=" + pImgType
				+ ", pThumbnailPath=" + pThumbnailPath + ", pImgStatus=" + pImgStatus + "]";
	}

	
	

}

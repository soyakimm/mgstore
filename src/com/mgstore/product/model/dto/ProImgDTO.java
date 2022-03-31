package com.mgstore.product.model.dto;

import java.sql.Date;

public class ProImgDTO implements java.io.Serializable {
	
	private int proImgId;
	private int refProId;
	private String proImgOrgName;
	private String proImgSvrName;
	private String proImgPath;
	private String proImgType;
	private String proThumbnailPath;
	private String proImgStatus;
	
	
	public ProImgDTO() {}


	public ProImgDTO(int proImgId, int refProId, String proImgOrgName, String proImgSvrName, String proImgPath,
			String proImgType, String proThumbnailPath, String proImgStatus) {
		super();
		this.proImgId = proImgId;
		this.refProId = refProId;
		this.proImgOrgName = proImgOrgName;
		this.proImgSvrName = proImgSvrName;
		this.proImgPath = proImgPath;
		this.proImgType = proImgType;
		this.proThumbnailPath = proThumbnailPath;
		this.proImgStatus = proImgStatus;
	}


	public int getProImgId() {
		return proImgId;
	}


	public void setProImgId(int proImgId) {
		this.proImgId = proImgId;
	}


	public int getRefProId() {
		return refProId;
	}


	public void setRefProId(int refProId) {
		this.refProId = refProId;
	}


	public String getProImgOrgName() {
		return proImgOrgName;
	}


	public void setProImgOrgName(String proImgOrgName) {
		this.proImgOrgName = proImgOrgName;
	}


	public String getProImgSvrName() {
		return proImgSvrName;
	}


	public void setProImgSvrName(String proImgSvrName) {
		this.proImgSvrName = proImgSvrName;
	}


	public String getProImgPath() {
		return proImgPath;
	}


	public void setProImgPath(String proImgPath) {
		this.proImgPath = proImgPath;
	}


	public String getProImgType() {
		return proImgType;
	}


	public void setProImgType(String proImgType) {
		this.proImgType = proImgType;
	}


	public String getProThumbnailPath() {
		return proThumbnailPath;
	}


	public void setProThumbnailPath(String proThumbnailPath) {
		this.proThumbnailPath = proThumbnailPath;
	}


	public String getProImgStatus() {
		return proImgStatus;
	}


	public void setProImgStatus(String proImgStatus) {
		this.proImgStatus = proImgStatus;
	}


	@Override
	public String toString() {
		return "ProImgDTO [proImgId=" + proImgId + ", refProId=" + refProId + ", proImgOrgName=" + proImgOrgName
				+ ", proImgSvrName=" + proImgSvrName + ", proImgPath=" + proImgPath + ", proImgType=" + proImgType
				+ ", proThumbnailPath=" + proThumbnailPath + ", proImgStatus=" + proImgStatus + "]";
	}

	


}

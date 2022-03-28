package com.mgstore.event.model.dto;

public class EveAttachmentDTO {
	
	private int eveImgNo;
	private int eveId;
	private String eveOriginName;
	private String eveSavedName;
	private String eveSavePath;
	private String eveFileType;
	private String eveImgStatus;
	private String evethumbNailPath;
	
	public EveAttachmentDTO() {}

	public EveAttachmentDTO(int eveImgNo, int eveId, String eveOriginName, String eveSavedName, String eveSavePath,
			String eveFileType, String eveImgStatus, String evethumbNailPath) {
		super();
		this.eveImgNo = eveImgNo;
		this.eveId = eveId;
		this.eveOriginName = eveOriginName;
		this.eveSavedName = eveSavedName;
		this.eveSavePath = eveSavePath;
		this.eveFileType = eveFileType; 
		this.eveImgStatus = eveImgStatus;
		this.evethumbNailPath = evethumbNailPath;
	}

	public int getEveImgNo() {
		return eveImgNo;
	}

	public void setEveImgNo(int eveImgNo) {
		this.eveImgNo = eveImgNo;
	}

	public int getEveId() {
		return eveId;
	}

	public void setEveId(int eveId) {
		this.eveId = eveId;
	}

	public String getEveOriginName() {
		return eveOriginName;
	}

	public void setEveOriginName(String eveOriginName) {
		this.eveOriginName = eveOriginName;
	}

	public String getEveSavedName() {
		return eveSavedName;
	}

	public void setEveSavedName(String eveSavedName) {
		this.eveSavedName = eveSavedName;
	}

	public String getEveSavePath() {
		return eveSavePath;
	}

	public void setEveSavePath(String eveSavePath) {
		this.eveSavePath = eveSavePath;
	}

	public String getEveFileType() {
		return eveFileType;
	}

	public void setEveFileType(String eveFileType) {
		this.eveFileType = eveFileType;
	}

	public String getEveImgStatus() {
		return eveImgStatus;
	}

	public void setEveImgStatus(String eveImgStatus) {
		this.eveImgStatus = eveImgStatus;
	}

	public String getEvethumbNailPath() {
		return evethumbNailPath;
	}

	public void setEvethumbNailPath(String evethumbNailPath) {
		this.evethumbNailPath = evethumbNailPath;
	}

	@Override
	public String toString() {
		return "EveAttachmentDTO [eveImgNo=" + eveImgNo + ", eveId=" + eveId + ", eveOriginName=" + eveOriginName
				+ ", eveSavedName=" + eveSavedName + ", eveSavePath=" + eveSavePath + ", eveFileType=" + eveFileType
				+ ", eveImgStatus=" + eveImgStatus + ", evethumbNailPath=" + evethumbNailPath + "]";
	}

}
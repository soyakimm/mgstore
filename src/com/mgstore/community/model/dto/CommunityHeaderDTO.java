package com.mgstore.community.model.dto;

public class CommunityHeaderDTO {
	
	private int headerId;
	private String headerName;
	
	public CommunityHeaderDTO() {}

	public CommunityHeaderDTO(int headerId, String headerName) {
		super();
		this.headerId = headerId;
		this.headerName = headerName;
	}

	public int getHeaderId() {
		return headerId;
	}

	public void setHeaderId(int headerId) {
		this.headerId = headerId;
	}

	public String getHeaderName() {
		return headerName;
	}

	public void setHeaderName(String headerName) {
		this.headerName = headerName;
	}

	@Override
	public String toString() {
		return "CommunityHeaderDTO [headerId=" + headerId + ", headerName=" + headerName + "]";
	}
	
	
	
}

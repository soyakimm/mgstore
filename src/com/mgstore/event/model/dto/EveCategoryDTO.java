package com.mgstore.event.model.dto;

import java.sql.Date;

public class EveCategoryDTO {
	
	private int eveCateCode; // 카테고리 코드 (pk)
	private String eveCateName; // 카테고리명(진행중, 종료)

	public EveCategoryDTO() {}

	public EveCategoryDTO(int eveCateCode, String eveCateName) {
		super();
		this.eveCateCode = eveCateCode;
		this.eveCateName = eveCateName;
	}

	public int getEveCateCode() {
		return eveCateCode;
	}

	public void setEveCateCode(int eveCateCode) {
		this.eveCateCode = eveCateCode;
	}

	public String getEveCateName() {
		return eveCateName;
	}

	public void setEveCateName(String eveCateName) {
		this.eveCateName = eveCateName;
	}

	@Override
	public String toString() {
		return "EveCategoryDTO [eveCateCode=" + eveCateCode + ", eveCateName=" + eveCateName + "]";
	}

	
}

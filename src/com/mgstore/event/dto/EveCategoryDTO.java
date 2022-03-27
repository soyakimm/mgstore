package com.mgstore.event.dto;

import java.sql.Date;

public class EveCategoryDTO {
	
	private int evecatecode; // 카테고리 코드 (pk)
	private String evecatename; // 카테고리명(진행중, 종료)

	public EveCategoryDTO() {}

	public EveCategoryDTO(int evecatecode, String evecatename) {
		super();
		this.evecatecode = evecatecode;
		this.evecatename = evecatename;
	}

	public int getEvecatecode() {
		return evecatecode;
	}

	public void setEvecatecode(int evecatecode) {
		this.evecatecode = evecatecode;
	}

	public String getEvecatename() {
		return evecatename;
	}

	public void setEvecatename(String evecatename) {
		this.evecatename = evecatename;
	}

	@Override
	public String toString() {
		return "EveCategoryDTO [evecatecode=" + evecatecode + ", evecatename=" + evecatename + "]";
	}
	
	
}

package com.mgstore.payment.model.dto;


public class OrderDetailDTO {
	
	/*디테일DTO*/
	private int ordDetalId; //주문상세내역id
	private int optionId; //상품옵션 아이디	//
	private int ordQty; //상품수량
	
	public OrderDetailDTO() {}

	public OrderDetailDTO(int ordDetalId, int optionId, int ordQty) {
		super();
		this.ordDetalId = ordDetalId;
		this.optionId = optionId;
		this.ordQty = ordQty;
	}

	public int getOrdDetalId() {
		return ordDetalId;
	}

	public void setOrdDetalId(int ordDetalId) {
		this.ordDetalId = ordDetalId;
	}

	public int getOptionId() {
		return optionId;
	}

	public void setOptionId(int optionId) {
		this.optionId = optionId;
	}

	public int getOrdQty() {
		return ordQty;
	}

	public void setOrdQty(int ordQty) {
		this.ordQty = ordQty;
	}

	@Override
	public String toString() {
		return "OrderDetailDTO [ordDetalId=" + ordDetalId + ", optionId=" + optionId + ", ordQty=" + ordQty + "]";
	}
	
	
	
	
}

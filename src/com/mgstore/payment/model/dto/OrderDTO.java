package com.mgstore.payment.model.dto;

import java.util.Date;

public class OrderDTO {
	
	private int ordId;
	private java.util.Date ordDate;
	private String adrCode; //배송지 우편번호 
	private String address; //배송 주소 
	private String adrDetail; //배송 나머지 상세주소 
	private String ordName; // 수령자이름 
	private String ordPhone; // 연락처 
	private String userId; // 주문자id 

	private int payId;		//결제아이디
	private int payAmount;	//선택한 상품 총 금액 
	private int payPoint;	//사용적립금액 (보류)
	private int payTotal;	//결제 최종금액 
	private String payState;	//주문처리상태 
	
	private int ordDetalId; //주문상세내역id
	private int optionId; //상품옵션 아이디
	private int ordQty; //상품수량
	
	public OrderDTO() {}

	public OrderDTO(int ordId, Date ordDate, String adrCode, String address, String adrDetail, String ordName,
			String ordPhone, String userId, int payId, int payAmount, int payPoint, int payTotal, String payState,
			int ordDetalId, int optionId, int ordQty) {
		super();
		this.ordId = ordId;
		this.ordDate = ordDate;
		this.adrCode = adrCode;
		this.address = address;
		this.adrDetail = adrDetail;
		this.ordName = ordName;
		this.ordPhone = ordPhone;
		this.userId = userId;
		this.payId = payId;
		this.payAmount = payAmount;
		this.payPoint = payPoint;
		this.payTotal = payTotal;
		this.payState = payState;
		this.ordDetalId = ordDetalId;
		this.optionId = optionId;
		this.ordQty = ordQty;
	}

	public int getOrdId() {
		return ordId;
	}

	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}

	public java.util.Date getOrdDate() {
		return ordDate;
	}

	public void setOrdDate(java.util.Date ordDate) {
		this.ordDate = ordDate;
	}

	public String getAdrCode() {
		return adrCode;
	}

	public void setAdrCode(String adrCode) {
		this.adrCode = adrCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAdrDetail() {
		return adrDetail;
	}

	public void setAdrDetail(String adrDetail) {
		this.adrDetail = adrDetail;
	}

	public String getOrdName() {
		return ordName;
	}

	public void setOrdName(String ordName) {
		this.ordName = ordName;
	}

	public String getOrdPhone() {
		return ordPhone;
	}

	public void setOrdPhone(String ordPhone) {
		this.ordPhone = ordPhone;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	public int getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}

	public int getPayPoint() {
		return payPoint;
	}

	public void setPayPoint(int payPoint) {
		this.payPoint = payPoint;
	}

	public int getPayTotal() {
		return payTotal;
	}

	public void setPayTotal(int payTotal) {
		this.payTotal = payTotal;
	}

	public String getPayState() {
		return payState;
	}

	public void setPayState(String payState) {
		this.payState = payState;
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
		return "OrderDTO [ordId=" + ordId + ", ordDate=" + ordDate + ", adrCode=" + adrCode + ", address=" + address
				+ ", adrDetail=" + adrDetail + ", ordName=" + ordName + ", ordPhone=" + ordPhone + ", userId=" + userId
				+ ", payId=" + payId + ", payAmount=" + payAmount + ", payPoint=" + payPoint + ", payTotal=" + payTotal
				+ ", payState=" + payState + ", ordDetalId=" + ordDetalId + ", optionId=" + optionId + ", ordQty="
				+ ordQty + "]";
	}
	
	

}

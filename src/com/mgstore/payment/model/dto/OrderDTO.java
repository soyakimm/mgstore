package com.mgstore.payment.model.dto;

import java.util.Date;

public class OrderDTO {
	
	private int ordId;
	private java.util.Date ordDate;
	private String adrCode; //배송지 우편번호 
	private String address; //배송 주소 
	private String adrDetail; //배송 나머지 상세주소 
	private String ordName; // 수령자이름 
	private String ordPhone; // 수령자연락처 
	private String userId; // 주문자id 
	private String deliveryReq; //배송요청사항

	private int payId;		//결제아이디
	private int payProTotal;	//선택한 상품 총 금액 
	private int payPoint;	//사용적립금액 (보류)
	private int payAmount;	//결제 최종금액 
	private String payState;	//주문처리상태 
	private String proPrice; //종류별 상품 금액
	
	/* 하나의 주문당 여러개의 값(상품)*/
	private int ordDetalId; //주문상세내역id
	private int optionId; //상품옵션 아이디	==> 상품아이디로 변경//
	private int ordQty; //상품수량
	private String proName; //상품이름
	
	/*회원정보*/
	private String userName;
	private String userPhone;
	private String userEmail;
	
	public OrderDTO() {}

	public OrderDTO(int ordId, Date ordDate, String adrCode, String address, String adrDetail, String ordName,
			String ordPhone, String userId, String deliveryReq, int payId, int payProTotal, int payPoint, int payAmount,
			String payState, String proPrice, int ordDetalId, int optionId, int ordQty, String proName, String userName,
			String userPhone, String userEmail) {
		super();
		this.ordId = ordId;
		this.ordDate = ordDate;
		this.adrCode = adrCode;
		this.address = address;
		this.adrDetail = adrDetail;
		this.ordName = ordName;
		this.ordPhone = ordPhone;
		this.userId = userId;
		this.deliveryReq = deliveryReq;
		this.payId = payId;
		this.payProTotal = payProTotal;
		this.payPoint = payPoint;
		this.payAmount = payAmount;
		this.payState = payState;
		this.proPrice = proPrice;
		this.ordDetalId = ordDetalId;
		this.optionId = optionId;
		this.ordQty = ordQty;
		this.proName = proName;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
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

	public String getDeliveryReq() {
		return deliveryReq;
	}

	public void setDeliveryReq(String deliveryReq) {
		this.deliveryReq = deliveryReq;
	}

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	public int getPayProTotal() {
		return payProTotal;
	}

	public void setPayProTotal(int payProTotal) {
		this.payProTotal = payProTotal;
	}

	public int getPayPoint() {
		return payPoint;
	}

	public void setPayPoint(int payPoint) {
		this.payPoint = payPoint;
	}

	public int getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}

	public String getPayState() {
		return payState;
	}

	public void setPayState(String payState) {
		this.payState = payState;
	}

	public String getProPrice() {
		return proPrice;
	}

	public void setProPrice(String proPrice) {
		this.proPrice = proPrice;
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

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Override
	public String toString() {
		return "OrderDTO [ordId=" + ordId + ", ordDate=" + ordDate + ", adrCode=" + adrCode + ", address=" + address
				+ ", adrDetail=" + adrDetail + ", ordName=" + ordName + ", ordPhone=" + ordPhone + ", userId=" + userId
				+ ", deliveryReq=" + deliveryReq + ", payId=" + payId + ", payProTotal=" + payProTotal + ", payPoint="
				+ payPoint + ", payAmount=" + payAmount + ", payState=" + payState + ", proPrice=" + proPrice
				+ ", ordDetalId=" + ordDetalId + ", optionId=" + optionId + ", ordQty=" + ordQty + ", proName="
				+ proName + ", userName=" + userName + ", userPhone=" + userPhone + ", userEmail=" + userEmail + "]";
	}

	
	

	
}

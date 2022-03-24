package com.mgstore.mypage.model.dto;

public class MyPetDTO {
	
	private String petId;
	private String petGender;
	private String petNeutral;
	private String petKind;
	private String petName;
	private String petBirthdate;
	private String userId;
	private String petFilename;
	private String petFileroute;
	

	public MyPetDTO() {
		super();
	}

	public MyPetDTO(String petId, String petGender, String petNeutral, String petKind, String petName,
			String petBirthdate, String userId, String petFilename, String petFileroute) {
		super();
		this.petId = petId;
		this.petGender = petGender;
		this.petNeutral = petNeutral;
		this.petKind = petKind;
		this.petName = petName;
		this.petBirthdate = petBirthdate;
		this.userId = userId;
		this.petFilename = petFilename;
		this.petFileroute = petFileroute;
	}

	public String getPetId() {
		return petId;
	}

	public void setPetId(String petId) {
		this.petId = petId;
	}

	public String getPetGender() {
		return petGender;
	}

	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}

	public String getPetNeutral() {
		return petNeutral;
	}

	public void setPetNeutral(String petNeutral) {
		this.petNeutral = petNeutral;
	}

	public String getPetKind() {
		return petKind;
	}

	public void setPetKind(String petKind) {
		this.petKind = petKind;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getPetBirthdate() {
		return petBirthdate;
	}

	public void setPetBirthdate(String petBirthdate) {
		this.petBirthdate = petBirthdate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPetFilename() {
		return petFilename;
	}

	public void setPetFilename(String petFilename) {
		this.petFilename = petFilename;
	}

	public String getPetFileroute() {
		return petFileroute;
	}

	public void setPetFileroute(String petFileroute) {
		this.petFileroute = petFileroute;
	}

	@Override
	public String toString() {
		return "MyPetDTO [petId=" + petId + ", petGender=" + petGender + ", petNeutral=" + petNeutral + ", petKind="
				+ petKind + ", petName=" + petName + ", petBirthdate=" + petBirthdate + ", userId=" + userId
				+ ", petFilename=" + petFilename + ", petFileroute=" + petFileroute + "]";
	} 
	
	
	
	
	/*PET_ID	VARCHAR2(20 BYTE)
PET_GENDER	VARCHAR2(2 BYTE)
PET_NEUTRAL	VARCHAR2(2 BYTE)
PET_KIND	VARCHAR2(50 BYTE)
PET_NAME	VARCHAR2(50 BYTE)
PET_BIRTHDATE	VARCHAR2(8 BYTE)
USER_ID	VARCHAR2(20 BYTE)
PET_FILENAME	VARCHAR2(300 BYTE)
PET_FILEROUTE	VARCHAR2(30 BYTE)*/

}

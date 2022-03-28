package com.mgstore.community.model.dto;

public class CommunityPostImageDTO {
	
	private int imageId;							
	private int postId;
	private String savePath;
	private String originalName;
	private String savedName;
	private String fileType;
	private String thumbnailPath;
	private String status;
	
	/*private int no;
	//어떤 게시판에 업로드된 파일인지
	private int refBoardNo;
	private String originalName;
	private String savedName;
	private String savePath;
	private String fileType;
	private String thumbnailPath;
	private String status; */
	
	public CommunityPostImageDTO() {}

	public CommunityPostImageDTO(int imageId, int postId, String savePath, String originalName, String savedName,
			String fileType, String thumbnailPath, String status) {
		super();
		this.imageId = imageId;
		this.postId = postId;
		this.savePath = savePath;
		this.originalName = originalName;
		this.savedName = savedName;
		this.fileType = fileType;
		this.thumbnailPath = thumbnailPath;
		this.status = status;
	}

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getSavedName() {
		return savedName;
	}

	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getThumbnailPath() {
		return thumbnailPath;
	}

	public void setThumbnailPath(String thumbnailPath) {
		this.thumbnailPath = thumbnailPath;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "CommunityPostImageDTO [imageId=" + imageId + ", postId=" + postId + ", savePath=" + savePath
				+ ", originalName=" + originalName + ", savedName=" + savedName + ", fileType=" + fileType
				+ ", thumbnailPath=" + thumbnailPath + ", status=" + status + "]";
	}

	
	

}

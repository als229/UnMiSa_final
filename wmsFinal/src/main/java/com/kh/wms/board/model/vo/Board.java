package com.kh.wms.board.model.vo;

public class Board {

	private int boardNo;
	private int memberNo;
	private String boardTitle;
	private String boardContent;
	private int count;
	private String changeName;
	private String originName;
	private String boardType;
	private String createDate;
	private String boardStatus;
	private String memberId;
	private int addressNo;
	private String sidoName;
	private String gu;
	private String dong;
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Board(int boardNo, int memberNo, String boardTitle, String boardContent, int count, String changeName,
			String originName, String boardType, String createDate, String boardStatus, String memberId, int addressNo,
			String sidoName, String gu, String dong) {
		super();
		this.boardNo = boardNo;
		this.memberNo = memberNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.count = count;
		this.changeName = changeName;
		this.originName = originName;
		this.boardType = boardType;
		this.createDate = createDate;
		this.boardStatus = boardStatus;
		this.memberId = memberId;
		this.addressNo = addressNo;
		this.sidoName = sidoName;
		this.gu = gu;
		this.dong = dong;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getBoardStatus() {
		return boardStatus;
	}

	public void setBoardStatus(String boardStatus) {
		this.boardStatus = boardStatus;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getAddressNo() {
		return addressNo;
	}

	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}

	public String getSidoName() {
		return sidoName;
	}

	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}

	public String getGu() {
		return gu;
	}

	public void setGu(String gu) {
		this.gu = gu;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", memberNo=" + memberNo + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", count=" + count + ", changeName=" + changeName + ", originName=" + originName
				+ ", boardType=" + boardType + ", createDate=" + createDate + ", boardStatus=" + boardStatus
				+ ", memberId=" + memberId + ", addressNo=" + addressNo + ", sidoName=" + sidoName + ", gu=" + gu
				+ ", dong=" + dong + "]";
	}

}

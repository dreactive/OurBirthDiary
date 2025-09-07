package bbs;

public class Bbs {
	int bbsID;
	int bbsType; //0: 후기, 1: 정보, 2: 질문, 3: 정책
	String bbsTitle;
	String userID;
	String bbsDate;
	String bbsContent;
	int bbsWorkflow;
	int bbsRangeView;
	int bbsRangeComment;
	int bbsAvailalbe;
	BbsAttachment[] bbsAttachment;
	
	public int getBbsID() {
		return bbsID;
	}
	public void setBbsID(int bbsID) {
		this.bbsID = bbsID;
	}
	public int getBbsType() {
		return bbsType;
	}
	public void setBbsType(int bbsType) {
		this.bbsType = bbsType;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(String bbsDate) {
		this.bbsDate = bbsDate;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public int getBbsWorkflow() {
		return bbsWorkflow;
	}
	public void setBbsWorkflow(int bbsWorkflow) {
		this.bbsWorkflow = bbsWorkflow;
	}
	public int getBbsRangeView() {
		return bbsRangeView;
	}
	public void setBbsRangeView(int bbsRangeView) {
		this.bbsRangeView = bbsRangeView;
	}
	public int getBbsRangeComment() {
		return bbsRangeComment;
	}
	public void setBbsRangeComment(int bbsRangeComment) {
		this.bbsRangeComment = bbsRangeComment;
	}
	public int getBbsAvailalbe() {
		return bbsAvailalbe;
	}
	public void setBbsAvailalbe(int bbsAvailalbe) {
		this.bbsAvailalbe = bbsAvailalbe;
	}
	public BbsAttachment[] getBbsAttachment() {
		return bbsAttachment;
	}
	public void setBbsAttachment(BbsAttachment[] bbsAttachment) {
		this.bbsAttachment = bbsAttachment;
	}
	
	
}

package com.java.aboutjeju.dto;

public class AboutjejuDto {
	private int LMnumber; //고유번호
	private String LMcategory; //카테고리
	private String LMtitle; //제목
	private String LMcontent; //내용
	private String LMaddress; //주소 
	private String LMlatitude; //위도
	private String LMlongitude; // 경도
	public int getLMnumber() {
		return LMnumber;
	}
	public void setLMnumber(int lMnumber) {
		LMnumber = lMnumber;
	}
	public String getLMcategory() {
		return LMcategory;
	}
	public void setLMcategory(String lMcategory) {
		LMcategory = lMcategory;
	}
	public String getLMtitle() {
		return LMtitle;
	}
	public void setLMtitle(String lMtitle) {
		LMtitle = lMtitle;
	}
	public String getLMcontent() {
		return LMcontent;
	}
	public void setLMcontent(String lMcontent) {
		LMcontent = lMcontent;
	}
	public String getLMaddress() {
		return LMaddress;
	}
	public void setLMaddress(String lMaddress) {
		LMaddress = lMaddress;
	}
	public String getLMlatitude() {
		return LMlatitude;
	}
	public void setLMlatitude(String lMlatitude) {
		LMlatitude = lMlatitude;
	}
	public String getLMlongitude() {
		return LMlongitude;
	}
	public void setLMlongitude(String lMlongitude) {
		LMlongitude = lMlongitude;
	}
	
	@Override
	public String toString() {
		return "AboutjejuDto [LMnumber=" + LMnumber + ", LMcategory=" + LMcategory + ", LMtitle=" + LMtitle
				+ ", LMcontent=" + LMcontent + ", LMaddress=" + LMaddress + ", LMlatitude=" + LMlatitude
				+ ", LMlongitude=" + LMlongitude + "]";
	}
	
}

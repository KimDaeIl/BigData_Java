package work.model.dto;

import java.io.Serializable;

import work.Util;

public class Member implements Serializable {

	private String memberId = "Guest";
	private String memberPw = "";
	private String memberName = "";
	private String mobile = "";
	private String email = "";
	private String entryDate = "1900/01/01";
	private char grade = 'G';
	private int mileage = 0;
	private String manager = "";

	public Member() {
		super();
	}

	public Member(String memberId, String memberPw, String memberName, String mobile, String email) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.mobile = mobile;
		this.email = email;
	}

	public Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate,
			char grade) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.mobile = mobile;
		this.email = email;
		this.entryDate = entryDate;
		this.grade = grade;
	}

	public Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate,
			char grade, int mileage, String manager) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.mobile = mobile;
		this.email = email;
		this.entryDate = entryDate;
		this.grade = grade;
		this.mileage = mileage;
		this.manager = manager;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEntryDate() {
		return entryDate;
	}

	public void setEntryDate(String entryDate) {
		this.entryDate = entryDate;
	}

	public char getGrade() {
		return grade;
	}

	public void setGrade(char grade) {
		this.grade = grade;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Member [").append(memberId).append(", ").append(Util.convertSecureString(memberPw))
				// .append(memberPw)
				.append(", ").append(memberName).append(", ").append(mobile).append(", ").append(email).append(", ")
				.append(entryDate).append(", ").append(grade).append(", ").append(mileage).append(", ").append(manager)
				.append("]");
		return builder.toString();
	}

}

package work.model.dto;

import work.Util;

/**
 * <pre>
 * 회占쏙옙 DTO
 * </pre>
 * 
 * @author 占썩ㅏ占쏙옙;占시ㅿ옙占쏙옙占쏙옙
 * @since JDK 1.8.0
 * @version 1.0.0
 *
 */

public abstract class Member {

	/**
	 * <pre>
	 * 회占쏙옙 占쏙옙占싱듸옙
	 * type: 	String
	 * length: 	8-30
	 * default: DEFAULT_USER_ID
	 * format:	-
	 * </pre>
	 */
	private String memberId = "Guest"; // 회占쏙옙 占쏙옙占싱듸옙

	/**
	 * <pre>
	 * 회占쏙옙 占쏙옙橘占싫?
	 * type: 	String
	 * length: 	8-20
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberPw = ""; // 회占쏙옙 占쏙옙橘占싫?

	/**
	 * <pre>
	 * 회占쏙옙 占싱몌옙
	 * type: 	String
	 * length: 	10
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberName = ""; // 회占쏙옙 占싱몌옙

	/**
	 * <pre>
	 * 占쏙옙占쏙옙占?占쏙옙占쏙옙처
	 * type: 	String
	 * length: 	13
	 * default: DEFAULT_STRING
	 * format: 	"123-1234-1234"
	 * </pre>
	 */
	private String mobile = ""; // 占쏙옙占쏙옙占?占쏙옙占쏙옙처

	/**
	 * <pre>
	 * 占싱몌옙占쏙옙 占쌍쇽옙
	 * type: 	String
	 * length: 	30
	 * default: DEFAULT_STRING
	 * format: 	-@-.[com|co.kr|...]
	 * </pre>
	 */
	private String email = ""; // 占싱몌옙占쏙옙 占쌍쇽옙

	/**
	 * <pre>
	 * 占쏙옙占쏙옙 占쏙옙짜
	 * type: 	String
	 * length: 	10
	 * default: "1900/01/01"
	 * format: 	"YYYY/MM/DD"
	 * </pre>
	 */
	private String entryDate = "1900/01/01"; // 占쏙옙占쏙옙 占쏙옙짜

	/**
	 * <pre>
	 * 占쏙옙 占쏙옙占?
	 * type: 	char
	 * length: 	1
	 * default: 'G' 
	 * format: 	{'G': 占싹뱄옙, 'S': 占쏙옙占? 'A': 占쏙옙占쏙옙占쏙옙}
	 * </pre>
	 */
	private char grade = 'G'; // 占쏙옙占?

	public Member() {
		this("Guest", "pw", "no named", "num", "email");

	}

	/**
	 * @param memberId
	 * @param memberPw
	 * @param memberName
	 * @param mobile
	 * @param email
	 */
	public Member(String memberId, String memberPw, String memberName, String mobile, String email) {
		setMemberId(memberId);
		setMemberPw(memberPw);
		setMemberName(memberName);
		setMobile(mobile);
		setEmail(email);
		init();
	}

	/**
	 * @return the memberId
	 */
	public String getMemberId() {
		return memberId;
	}

	/**
	 * @param memberId
	 *            the memberId to set
	 */
	public void setMemberId(String memberId) {
		if (Util.isValidString(memberId, 8, 30)) {
			this.memberId = memberId;
		}
	}

	/**
	 * @return the memberPw
	 */
	public String getMemberPw() {
		return memberPw;
	}

	/**
	 * @param memberPw
	 *            the memberPw to set
	 */
	public void setMemberPw(String memberPw) {
		if (Util.isValidString(memberPw, 8, 20)) {
			this.memberPw = memberPw;
		}
	}

	/**
	 * @return the memberName
	 */
	public String getMemberName() {
		return memberName;
	}

	/**
	 * @param memberName
	 *            the memberName to set
	 */
	public void setMemberName(String memberName) {
		if (Util.isValidString(memberName, 10)) {
			this.memberName = memberName;
		}
	}

	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}

	/**
	 * @param mobile
	 *            the mobile to set
	 */
	public void setMobile(String mobile) {
		if (Util.isValidStaticString(mobile, 13)) {
			this.mobile = mobile;
		}
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		if (Util.isValidString(email, 30)) {
			this.email = email;
		}
	}

	/**
	 * @return the entryDate
	 */
	public String getEntryDate() {
		return entryDate;
	}

	/**
	 * @param entryDate
	 *            the entryDate to set
	 */
	public void setEntryDate(String entryDate) {
		if (Util.isValidStaticString(entryDate, 10)) {
			this.entryDate = entryDate;
		}
	}

	/**
	 * @return the grade
	 */
	public char getGrade() {
		return grade;
	}

	/**
	 * @param grade
	 *            the grade to set
	 */
	protected void setGrade(char grade) {
		if (isValidGrade(grade)) {
			this.grade = grade;
		}
	}



	private boolean isValidGrade(char grade) {
		switch (grade) {
		case 'G':
		case 'S':
		case 'A':
			return true;
		default:
			return false;
		}
	}

	/**
	 * <pre>
	 * 占쌘쏙옙 클占쏙옙占쏙옙 占십깍옙화 占쏙옙 占쌨소듸옙
	 * + init(): void
	 * </pre>
	 */
	public abstract void init();

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return memberId + ", " + memberPw + ", " + memberName + ", " + mobile + ", " + email + ", " + entryDate + ", "
				+ grade;
	}

	
	

}

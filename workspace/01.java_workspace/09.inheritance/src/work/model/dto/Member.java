package work.model.dto;

import sun.security.util.Length;

/**
 * <pre>
 * 회원 DTO
 * </pre>
 * 
 * @author 기ㅏㅁ;ㅓㅇ리ㅏ
 * @since JDK 1.8.0
 * @version 1.0.0
 *
 */

public abstract class Member {

	/**
	 * <pre>
	 * 회원 아이디
	 * type: 	String
	 * length: 	8-30
	 * default: DEFAULT_USER_ID
	 * format:	-
	 * </pre>
	 */
	private String memberId = "Guest"; // 회원 아이디

	/**
	 * <pre>
	 * 회원 비밀번호
	 * type: 	String
	 * length: 	8-20
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberPw = ""; // 회원 비밀번호

	/**
	 * <pre>
	 * 회원 이름
	 * type: 	String
	 * length: 	10
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberName = ""; // 회원 이름

	/**
	 * <pre>
	 * 모바일 연락처
	 * type: 	String
	 * length: 	13
	 * default: DEFAULT_STRING
	 * format: 	"123-1234-1234"
	 * </pre>
	 */
	private String mobile = ""; // 모바일 연락처

	/**
	 * <pre>
	 * 이메일 주소
	 * type: 	String
	 * length: 	30
	 * default: DEFAULT_STRING
	 * format: 	-@-.[com|co.kr|...]
	 * </pre>
	 */
	private String email = ""; // 이메일 주소

	/**
	 * <pre>
	 * 가입 날짜
	 * type: 	String
	 * length: 	10
	 * default: "1900/01/01"
	 * format: 	"YYYY/MM/DD"
	 * </pre>
	 */
	private String entryDate = "1900/01/01"; // 가입 날짜

	/**
	 * <pre>
	 * 고객 등급 
	 * type: 	char
	 * length: 	1
	 * default: 'G' 
	 * format: 	{'G': 일반, 'S': 우수, 'A': 관리자}
	 * </pre>
	 */
	private char grade = 'G'; // 등급

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
		if (isValidString(memberId, 8, 30)) {
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
		if (isValidString(memberPw, 8, 20)) {
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
		if (isValidString(memberName, 10)) {
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
		if (isValidStaticString(mobile, 13)) {
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
		if (isValidString(email, 30)) {
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
		if (isValidStaticString(entryDate, 10)) {
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

	/**
	 * <pre>
	 * 오브젝트 객체 null 체크
	 * </pre>
	 * 
	 * @return obj의 null 여부 ㅠ
	 */
	protected boolean isNull(Object obj) {
		return obj == null;
	}

	protected boolean isValidStaticString(String str, int length) {
		return isValidString(str, length, length);
	}

	/**
	 * <pre>
	 * 문자열의 유효성 체크
	 * </pre>
	 * 
	 * @param str
	 *            유효성 체크할 String 객체
	 * @param length
	 *            str객체의 유효 길이 값
	 * @return str String 객체의 길이와 null 체크
	 */
	protected boolean isValidString(String str, int length) {
		return isValidString(str, 1, length);
	}

	/**
	 * <pre>
	 * 문자열의 유효성 체크
	 * </pre>
	 * 
	 * @param str
	 *            유효성 체크할 String 객체
	 * @param minLen
	 *            str객체의 유효 최소 길이 값
	 * @param mamLen
	 *            str객체의 유효 최대 길이 값
	 * @return str:String 객체의 유효성 체크 결과
	 */
	protected boolean isValidString(String str, int minLen, int maxLen) {
		if (!isNull(str)) {
			if (minLen <= str.length() && str.length() <= maxLen) {
				return true;
			}
		}

		return false;
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
	 * 자식 클래스 초기화 블럭 메소드
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

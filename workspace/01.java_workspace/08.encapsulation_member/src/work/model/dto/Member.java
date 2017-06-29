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

public class Member {
	private static final int MAX_MILEAGE = 999999;
	private static final String DEFAULT_STRING = "";
	private static final int DEFAULT_INT = 0;

	private static final String DEFAULT_USER_ID = "Guest";
	private static final char DEFAULT_GRADE = 'G';
	private static final String DEFAULT_ENTRY_DATE = "1900/01/01";

	/**
	 * <pre>
	 * 회원 아이디
	 * type: 	String
	 * length: 	8-30
	 * default: DEFAULT_USER_ID
	 * format:	-
	 * </pre>
	 */
	private String memberId = DEFAULT_USER_ID; // 회원 아이디

	/**
	 * <pre>
	 * 회원 비밀번호
	 * type: 	String
	 * length: 	8-20
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberPw = DEFAULT_STRING; // 회원 비밀번호

	/**
	 * <pre>
	 * 회원 이름
	 * type: 	String
	 * length: 	10
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberName = DEFAULT_STRING; // 회원 이름

	/**
	 * <pre>
	 * 모바일 연락처
	 * type: 	String
	 * length: 	13
	 * default: DEFAULT_STRING
	 * format: 	"123-1234-1234"
	 * </pre>
	 */
	private String mobile = DEFAULT_STRING; // 모바일 연락처

	/**
	 * <pre>
	 * 이메일 주소
	 * type: 	String
	 * length: 	30
	 * default: DEFAULT_STRING
	 * format: 	-@-.[com|co.kr|...]
	 * </pre>
	 */
	private String email = DEFAULT_STRING; // 이메일 주소

	/**
	 * <pre>
	 * 가입 날짜
	 * type: 	String
	 * length: 	10
	 * default: "1900/01/01"
	 * format: 	"YYYY/MM/DD"
	 * </pre>
	 */
	private String entryDate = DEFAULT_ENTRY_DATE; // 가입 날짜

	/**
	 * <pre>
	 * 고객 등급 
	 * type: 	char
	 * length: 	1
	 * default: 'G' 
	 * format: 	{'G': 일반, 'S': 우수, 'A': 관리자}
	 * </pre>
	 */
	private char grade = DEFAULT_GRADE; // 등급

	/**
	 * <pre>
	 * 보유한 마일리지 
	 * type: 	int
	 * length: 	6
	 * default: DEFAULT_USER_ID
	 * format: 	123456
	 * </pre>
	 */
	private int mileage/* = 0 */; // 적립 마일리지

	/**
	 * <pre>
	 * 담당자 이름
	 * type:	String
	 * length: 	10
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String managerName = DEFAULT_STRING;

	/**
	 * default constructor
	 */
	public Member() {
		this(DEFAULT_USER_ID);
	}

	public Member(String memberId) {
		this(memberId, DEFAULT_STRING);
	}

	public Member(String memberId, String memberPw) {
		this(memberId, memberPw, DEFAULT_STRING);
	}

	public Member(String memberId, String memberPw, String memberName) {
		this(memberId, memberPw, memberName, DEFAULT_STRING);
	}

	public Member(String memberId, String memberPw, String memberName, String mobile) {
		this(memberId, memberPw, memberName, mobile, DEFAULT_STRING);
	}

	private Member(String memberId, String memberPw, String memberName, String mobile, String email) {
		this(memberId, memberPw, memberName, mobile, email, DEFAULT_ENTRY_DATE);
	}

	private Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate) {
		this(memberId, memberPw, memberName, mobile, email, entryDate, DEFAULT_GRADE);
	}

	private Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate,
			char grade) {
		this(memberId, memberPw, memberName, mobile, email, entryDate, grade, DEFAULT_INT);
	}

	private Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate,
			char grade, int mileage) {
		this(memberId, memberPw, memberName, mobile, email, entryDate, grade, mileage, DEFAULT_STRING);
	}

	public Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate,
			char grade, int mileage, String managerName) {
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		setMobile(mobile);
		this.email = email;
		this.entryDate = entryDate;
		this.grade = grade;
		setMileage(mileage);
		this.managerName = managerName;

	}

	/**
	 * <pre>
	 * 회원의 정보를 출력하는 메소드
	 * + printInfo(): void
	 * </pre>
	 * 
	 * @param -
	 * @return void
	 */
	public void printInfo() {
		System.out.println(memberId);
		System.out.println(memberPw);
		System.out.println(memberName);
		System.out.println(mobile);
		System.out.println(email);
		System.out.println(entryDate);
		System.out.println(grade);
		System.out.println(mileage);
		System.out.println("====================");
	}

	/**
	 * <pre>
	 * 회원의 휴대전화 번호를 저장하는 메소드
	 * + setMobile(mobile: String): void
	 * </pre>
	 * 
	 * @param mobile
	 *            저장할 휴대폰 번호
	 */
	public void setMobile(String mobile) {
		if (isNull(mobile)) {
			this.mobile = DEFAULT_STRING;
		} else if (!this.mobile.equals(mobile)) {
			this.mobile = mobile;
		}
	}

	/**
	 * <pre>
	 * 회원의 휴대전화 번호를 요청하는 메소드
	 * + getMobile(): String
	 * </pre>
	 * 
	 * @return String
	 */
	public String getMobile() {
		if (isNull(this.mobile)) {
			this.mobile = DEFAULT_STRING;
		}
		return this.mobile;
	}

	/**
	 * <pre>
	 * 회원이 보유한 마일리지 정보 저장하는 메소드
	 * + setMileage(mileage: int): void
	 * </pre>
	 * 
	 * @param mileage
	 *            저장할 마일리지 정보
	 */
	public void setMileage(int mileage) {
		if (mileage > DEFAULT_INT) {
			this.mileage = mileage > MAX_MILEAGE ? MAX_MILEAGE : mileage;
		} else {
			this.mileage = DEFAULT_INT;
		}
	}

	/**
	 * <pre>
	 * 회원이 보유한 마일리지 정보 요청하는 메소드
	 * + getMileage(): int
	 * </pre>
	 * 
	 * @return mileage 회원이 보유한 마일리지
	 */
	public int getMileage() {
		return this.mileage;
	}

	/**
	 * <pre>
	 * 회원 비밀번호 정보 요청하는 메소드
	 * + getPw(): String
	 * </pre>
	 * 
	 * @return this.memberPw 회원의 비밀번호
	 */
	public String getPw() {
		if (isNull(this.memberPw))
			this.memberPw = DEFAULT_STRING;
		return this.memberPw;
	}

	/**
	 * <pre>
	 * 비밀번호 정보 저장하는 메소드
	 * + setPw(memberPw: String): void
	 * </pre>
	 * 
	 * @param memberPw
	 *            저장할 회원 비밀번호
	 */
	public void setPw(String memberPw) {
		if (isValidString(memberPw, 8, 20)) {
			this.memberPw = memberPw;
		}
	}

	/**
	 * <pre>
	 * 회원 아이디 정보 요청하는 메소드
	 * + getId(): String
	 * </pre>
	 * 
	 * @return this.memberId 회원의 비밀번호
	 */
	public String getId() {
		if (isNull(this.memberId))
			this.memberId = DEFAULT_STRING;
		return this.memberId;
	}

	/**
	 * <pre>
	 * 회원 아이디 정보 저장하는 메소드
	 * + setId(memberId: String): void
	 * </pre>
	 * 
	 * @param memberId
	 *            저장할 회원 아이디
	 */
	public void setId(String memberId) {
		if (isValidString(memberId, 8, 30)) {
			this.memberId = memberId;
		}
	}

	/**
	 * <pre>
	 * 오브젝트 객체 null 체크
	 * </pre>
	 * 
	 * @return obj의 null 여부 ㅠ
	 */
	private boolean isNull(Object obj) {
		return obj == null;
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
	private boolean isValidString(String str, int length) {
		return isValidString(str, length, length);
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
	private boolean isValidString(String str, int minLen, int maxLen) {
		if (!isNull(str)) {
			if (minLen <= str.length() && str.length() <= maxLen) {
				return true;
			}
		}

		return false;
	}

	/**
	 * <pre>
	 * </pre>
	 * 
	 * @param
	 * @return
	 */

}

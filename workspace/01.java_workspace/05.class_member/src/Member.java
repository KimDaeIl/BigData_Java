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
	/**
	 * <pre>
	 * 회원 아이디
	 * type: 	String
	 * length: 	8-20
	 * default: "Guest"
	 * format:	-
	 * </pre>
	 */
	private String memberId = "Guest"; // 회원 아이디

	/**
	 * <pre>
	 * 회원 비밀번호
	 * type: 	String
	 * length: 	8-20
	 * default: ""
	 * format:	-
	 * </pre>
	 */
	private String memberPw = ""; // 회원 비밀번호

	/**
	 * <pre>
	 * 회원 이름
	 * type: 	String
	 * length: 	10
	 * default: ""
	 * format:	-
	 * </pre>
	 */
	private String memberName = ""; // 회원 이름

	/**
	 * <pre>
	 * 모바일 연락처
	 * type: 	String
	 * length: 	13
	 * default: ""
	 * format: 	"123-1234-1234"
	 * </pre>
	 */
	private String mobile = ""; // 모바일 연락처

	/**
	 * <pre>
	 * 이메일 주소
	 * type: 	String
	 * length: 	30
	 * default: ""
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

	/**
	 * <pre>
	 * 보유한 마일리지 
	 * type: 	int
	 * length: 	6
	 * default: "Guest"
	 * format: 	123456
	 * </pre>
	 */
	private int mileage = 0; // 적립 마일리지

	/**
	 * <pre>
	 * 담당자 이름
	 * type:	String
	 * length: 	10
	 * default: ""
	 * format:	-
	 * </pre>
	 */
	private String managerName = "";

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
		if (mobile != null && !this.mobile.equals(mobile)) {
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
		if (this.mobile == null) {
			this.mobile = "";
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
		if (mileage > 0) {
			this.mileage = mileage > MAX_MILEAGE ? MAX_MILEAGE : mileage;
		} else {
			this.mileage = 0;
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
	 * </pre>
	 * 
	 * @param
	 * @return
	 */

}

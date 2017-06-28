package work.model.dto;
/**
 * <pre>
 * ȸ�� DTO
 * </pre>
 * 
 * @author �⤿��;�ä�����
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
	 * ȸ�� ���̵�
	 * type: 	String
	 * length: 	8-20
	 * default: DEFAULT_USER_ID
	 * format:	-
	 * </pre>
	 */
	private String memberId = DEFAULT_USER_ID; // ȸ�� ���̵�

	/**
	 * <pre>
	 * ȸ�� ��й�ȣ
	 * type: 	String
	 * length: 	8-20
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberPw = DEFAULT_STRING; // ȸ�� ��й�ȣ

	/**
	 * <pre>
	 * ȸ�� �̸�
	 * type: 	String
	 * length: 	10
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberName = DEFAULT_STRING; // ȸ�� �̸�

	/**
	 * <pre>
	 * ����� ����ó
	 * type: 	String
	 * length: 	13
	 * default: DEFAULT_STRING
	 * format: 	"123-1234-1234"
	 * </pre>
	 */
	private String mobile = DEFAULT_STRING; // ����� ����ó

	/**
	 * <pre>
	 * �̸��� �ּ�
	 * type: 	String
	 * length: 	30
	 * default: DEFAULT_STRING
	 * format: 	-@-.[com|co.kr|...]
	 * </pre>
	 */
	private String email = DEFAULT_STRING; // �̸��� �ּ�

	/**
	 * <pre>
	 * ���� ��¥
	 * type: 	String
	 * length: 	10
	 * default: "1900/01/01"
	 * format: 	"YYYY/MM/DD"
	 * </pre>
	 */
	private String entryDate = DEFAULT_ENTRY_DATE; // ���� ��¥

	/**
	 * <pre>
	 * ���� ��� 
	 * type: 	char
	 * length: 	1
	 * default: 'G' 
	 * format: 	{'G': �Ϲ�, 'S': ���, 'A': ������}
	 * </pre>
	 */
	private char grade = DEFAULT_GRADE; // ���

	/**
	 * <pre>
	 * ������ ���ϸ��� 
	 * type: 	int
	 * length: 	6
	 * default: DEFAULT_USER_ID
	 * format: 	123456
	 * </pre>
	 */
	private int mileage/* = 0 */; // ���� ���ϸ���

	/**
	 * <pre>
	 * ����� �̸�
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

	public Member(String memberId, String memberPw, String memberName, String mobile, String email) {
		this(memberId, memberPw, memberName, mobile, email, DEFAULT_ENTRY_DATE);
	}

	public Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate) {
		this(memberId, memberPw, memberName, mobile, email, entryDate, DEFAULT_GRADE);
	}

	public Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate,
			char grade) {
		this(memberId, memberPw, memberName, mobile, email, entryDate, grade, DEFAULT_INT);
	}

	public Member(String memberId, String memberPw, String memberName, String mobile, String email, String entryDate,
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
	 * ȸ���� ������ ����ϴ� �޼ҵ�
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
	 * ȸ���� �޴���ȭ ��ȣ�� �����ϴ� �޼ҵ�
	 * + setMobile(mobile: String): void
	 * </pre>
	 * 
	 * @param mobile
	 *            ������ �޴��� ��ȣ
	 */
	public void setMobile(String mobile) {
		if (mobile == null) {
			this.mobile = DEFAULT_STRING;
		} else if (!this.mobile.equals(mobile)) {
			this.mobile = mobile;
		}
	}

	/**
	 * <pre>
	 * ȸ���� �޴���ȭ ��ȣ�� ��û�ϴ� �޼ҵ�
	 * + getMobile(): String
	 * </pre>
	 * 
	 * @return String
	 */
	public String getMobile() {
		if (this.mobile == null) {
			this.mobile = DEFAULT_STRING;
		}
		return this.mobile;
	}

	/**
	 * <pre>
	 * ȸ���� ������ ���ϸ��� ���� �����ϴ� �޼ҵ�
	 * + setMileage(mileage: int): void
	 * </pre>
	 * 
	 * @param mileage
	 *            ������ ���ϸ��� ����
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
	 * ȸ���� ������ ���ϸ��� ���� ��û�ϴ� �޼ҵ�
	 * + getMileage(): int
	 * </pre>
	 * 
	 * @return mileage ȸ���� ������ ���ϸ���
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
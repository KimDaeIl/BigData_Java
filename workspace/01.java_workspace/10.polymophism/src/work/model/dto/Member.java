package work.model.dto;

import sun.security.util.Length;

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

public abstract class Member {

	/**
	 * <pre>
	 * ȸ�� ���̵�
	 * type: 	String
	 * length: 	8-30
	 * default: DEFAULT_USER_ID
	 * format:	-
	 * </pre>
	 */
	private String memberId = "Guest"; // ȸ�� ���̵�

	/**
	 * <pre>
	 * ȸ�� ��й�ȣ
	 * type: 	String
	 * length: 	8-20
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberPw = ""; // ȸ�� ��й�ȣ

	/**
	 * <pre>
	 * ȸ�� �̸�
	 * type: 	String
	 * length: 	10
	 * default: DEFAULT_STRING
	 * format:	-
	 * </pre>
	 */
	private String memberName = ""; // ȸ�� �̸�

	/**
	 * <pre>
	 * ����� ����ó
	 * type: 	String
	 * length: 	13
	 * default: DEFAULT_STRING
	 * format: 	"123-1234-1234"
	 * </pre>
	 */
	private String mobile = ""; // ����� ����ó

	/**
	 * <pre>
	 * �̸��� �ּ�
	 * type: 	String
	 * length: 	30
	 * default: DEFAULT_STRING
	 * format: 	-@-.[com|co.kr|...]
	 * </pre>
	 */
	private String email = ""; // �̸��� �ּ�

	/**
	 * <pre>
	 * ���� ��¥
	 * type: 	String
	 * length: 	10
	 * default: "1900/01/01"
	 * format: 	"YYYY/MM/DD"
	 * </pre>
	 */
	private String entryDate = "1900/01/01"; // ���� ��¥

	/**
	 * <pre>
	 * �� ��� 
	 * type: 	char
	 * length: 	1
	 * default: 'G' 
	 * format: 	{'G': �Ϲ�, 'S': ���, 'A': ������}
	 * </pre>
	 */
	private char grade = 'G'; // ���

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
	 * ������Ʈ ��ü null üũ
	 * </pre>
	 * 
	 * @return obj�� null ���� ��
	 */
	protected boolean isNull(Object obj) {
		return obj == null;
	}

	protected boolean isValidStaticString(String str, int length) {
		return isValidString(str, length, length);
	}

	/**
	 * <pre>
	 * ���ڿ��� ��ȿ�� üũ
	 * </pre>
	 * 
	 * @param str
	 *            ��ȿ�� üũ�� String ��ü
	 * @param length
	 *            str��ü�� ��ȿ ���� ��
	 * @return str String ��ü�� ���̿� null üũ
	 */
	protected boolean isValidString(String str, int length) {
		return isValidString(str, 1, length);
	}

	/**
	 * <pre>
	 * ���ڿ��� ��ȿ�� üũ
	 * </pre>
	 * 
	 * @param str
	 *            ��ȿ�� üũ�� String ��ü
	 * @param minLen
	 *            str��ü�� ��ȿ �ּ� ���� ��
	 * @param mamLen
	 *            str��ü�� ��ȿ �ִ� ���� ��
	 * @return str:String ��ü�� ��ȿ�� üũ ���
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
	 * �ڽ� Ŭ���� �ʱ�ȭ �� �޼ҵ�
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

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
	/**
	 * <pre>
	 * ȸ�� ���̵�
	 * type: 	String
	 * length: 	8-20
	 * default: "Guest"
	 * format:	-
	 * </pre>
	 */
	private String memberId = "Guest"; // ȸ�� ���̵�

	/**
	 * <pre>
	 * ȸ�� ��й�ȣ
	 * type: 	String
	 * length: 	8-20
	 * default: ""
	 * format:	-
	 * </pre>
	 */
	private String memberPw = ""; // ȸ�� ��й�ȣ

	/**
	 * <pre>
	 * ȸ�� �̸�
	 * type: 	String
	 * length: 	10
	 * default: ""
	 * format:	-
	 * </pre>
	 */
	private String memberName = ""; // ȸ�� �̸�

	/**
	 * <pre>
	 * ����� ����ó
	 * type: 	String
	 * length: 	13
	 * default: ""
	 * format: 	"123-1234-1234"
	 * </pre>
	 */
	private String mobile = ""; // ����� ����ó

	/**
	 * <pre>
	 * �̸��� �ּ�
	 * type: 	String
	 * length: 	30
	 * default: ""
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

	/**
	 * <pre>
	 * ������ ���ϸ��� 
	 * type: 	int
	 * length: 	6
	 * default: "Guest"
	 * format: 	123456
	 * </pre>
	 */
	private int mileage = 0; // ���� ���ϸ���

	/**
	 * <pre>
	 * ����� �̸�
	 * type:	String
	 * length: 	10
	 * default: ""
	 * format:	-
	 * </pre>
	 */
	private String managerName = "";

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
		if (mobile != null && !this.mobile.equals(mobile)) {
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
			this.mobile = "";
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
		if (mileage > 0) {
			this.mileage = mileage > MAX_MILEAGE ? MAX_MILEAGE : mileage;
		} else {
			this.mileage = 0;
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

/**
 * ��� �׽�Ʈ Ŭ����
 * 
 * @author �⤿��;�ä�����
 * @since JDK 1.8.0
 * @version 1.0.0
 *
 */
public class MemberTest {

	/**
	 * ���� �޼ҵ�
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		// dto(Data Transfer Object): �� ��ü
		Member dto = new Member();

		dto.setMileage(100);
		dto.printInfo();

		dto.setMileage(10000000);
		dto.setMobile("010-1234-5678");
		dto.printInfo();


	}
}

package work.view;

import work.model.dto.Member;

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
		Member member = new Member("id", "pw", "name");
		member.printInfo();

	}
}

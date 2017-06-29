package work.view;

import work.model.dto.AdminMember;
import work.model.dto.GeneralMember;
import work.model.dto.Member;
import work.model.dto.SpecialMember;
import work.model.service.MemberService;

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
		MemberService ms = new MemberService();
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember("user00001", "", "", "", ""));
		ms.addMember(null);
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new SpecialMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());
		ms.addMember(new AdminMember());

		System.out.println(ms.isFull());
		System.out.println(ms.getCount());
		System.out.println(ms.getMember("user001"));

	}
}

package work.view;

import work.model.dto.AdminMember;
import work.model.dto.GeneralMember;
import work.model.dto.Member;
import work.model.dto.SpecialMember;

/**
 * ��� �׽�Ʈ Ŭ����
 * 
 * @author �⤿��;�ä�����
 * @since JDK 1.8.0
 * @version 1.0.0
 *
 */
public class MemberTest {
	public static void main(String[] args) {

		GeneralMember user01 = new GeneralMember("user0001", "password01", "ȫ�浿", "010-1234-1111", "user01@work.com", 1000);
		user01.setEntryDate("2017/05/10");
		GeneralMember user02 = new GeneralMember("user0002", "password02", "������", "010-1234-1112", "user02@work.com", 1000);
		user02.setEntryDate("2017/05/11");
		GeneralMember user03 = new GeneralMember("user0003", "password03", "�̼���", "010-1234-1113", "user03@work.com", 1000);
		user03.setEntryDate("2017/05/12");

		SpecialMember suser01 = new SpecialMember("suser0001", "password01", "������", "010-1111-1111", "suser01@work.com", "���߱�");
		suser01.setEntryDate("2017/03/01");
		SpecialMember suser02 = new SpecialMember("suser0002", "password02", "������", "010-1111-1112", "suser02@work.com", "������");
		suser02.setEntryDate("2017/03/02");

		AdminMember auser01 = new AdminMember("suser0001", "password01", "������", "010-111-1234", "auser01@work.com", "����");
		auser01.setEntryDate("2017/04/21");

		System.out.println(user01.toString());
		System.out.println(user01.toString());
		System.out.println(user01.toString());
		System.out.println();

		System.out.println(suser01.toString());
		System.out.println(suser01.toString());
		System.out.println();

		System.out.println(auser01.toString());
		System.out.println();

		genericMethod(suser01);

	}

	public static <T extends Member> void genericMethod(T t) {
		System.out.println(t.toString());
	}
}

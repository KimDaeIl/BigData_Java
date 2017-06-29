package work.view;

import work.model.dto.AdminMember;
import work.model.dto.GeneralMember;
import work.model.dto.Member;
import work.model.dto.SpecialMember;
import work.model.service.MemberService;

/**
 * 멤버 테스트 클래스
 * 
 * @author 기ㅏㅁ;ㅓㅇ리ㅏ
 * @since JDK 1.8.0
 * @version 1.0.0
 *
 */
public class MemberTest {

	/**
	 * 메인 메소드
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

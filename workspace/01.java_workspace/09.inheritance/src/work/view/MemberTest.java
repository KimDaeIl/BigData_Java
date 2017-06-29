package work.view;

import work.model.dto.AdminMember;
import work.model.dto.GeneralMember;
import work.model.dto.Member;
import work.model.dto.SpecialMember;

/**
 * 멤버 테스트 클래스
 * 
 * @author 기ㅏㅁ;ㅓㅇ리ㅏ
 * @since JDK 1.8.0
 * @version 1.0.0
 *
 */
public class MemberTest {
	public static void main(String[] args) {

		GeneralMember user01 = new GeneralMember("user0001", "password01", "홍길동", "010-1234-1111", "user01@work.com", 1000);
		user01.setEntryDate("2017/05/10");
		GeneralMember user02 = new GeneralMember("user0002", "password02", "강감찬", "010-1234-1112", "user02@work.com", 1000);
		user02.setEntryDate("2017/05/11");
		GeneralMember user03 = new GeneralMember("user0003", "password03", "이순신", "010-1234-1113", "user03@work.com", 1000);
		user03.setEntryDate("2017/05/12");

		SpecialMember suser01 = new SpecialMember("suser0001", "password01", "유관순", "010-1111-1111", "suser01@work.com", "송중기");
		suser01.setEntryDate("2017/03/01");
		SpecialMember suser02 = new SpecialMember("suser0002", "password02", "김유신", "010-1111-1112", "suser02@work.com", "송혜교");
		suser02.setEntryDate("2017/03/02");

		AdminMember auser01 = new AdminMember("suser0001", "password01", "박재형", "010-111-1234", "auser01@work.com", "과장");
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

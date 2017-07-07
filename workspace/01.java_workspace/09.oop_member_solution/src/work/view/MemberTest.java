package work.view;

import work.model.dto.AdminMember;
import work.model.dto.GeneralMember;
import work.model.dto.Member;
import work.model.dto.SpecialMember;
import work.model.service.MemberService;

/**
 * 
 */

/**
 * <pre>
 * 회占쏙옙占쏙옙占쏙옙占시쏙옙占쏙옙 占쏙옙占쏙옙(占쌓쏙옙트) 클占쏙옙占쏙옙
 * </pre>
 * 
 * @author 占쌈곤옙占쏙옙
 * @version ver.1.0
 * @since jdk1.4
 */
public class MemberTest {
	/**
	 * 占쏙옙占쌜메쇽옙占쏙옙
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("\n### ?뚯썝愿由ъ떆?ㅽ뀥 珥덇린???앹꽦");
		GeneralMember dto1 = new GeneralMember("user01", "password01", "?띻만??, "010-1234-1111", "user01@work.com", "2017/05/10", 'G', 1000);
		GeneralMember dto2 = new GeneralMember("user02", "password02", "媛뺢컧李?, "010-1234-1112", "user01@work.com", "2017/05/10", 'G', 2000);
		GeneralMember dto3 = new GeneralMember("user03", "password03", "?댁닚??, "010-1234-1113", "user01@work.com", "2017/05/10", 'G', 3000);
		SpecialMember dto4 = new SpecialMember("suser01", "password01", "?좉???, "010-1111-1111", "suser01@work.com", "2017/05/10", 'S', null);
		SpecialMember dto5 = new SpecialMember("suser02", "password02", "源?좎떊", "010-1111-1112", "suser01@work.com", "2017/05/10", 'A', null);
		AdminMember dto6 = new AdminMember("auser01", "password01", "諛뺤옱??, "010-1234-1111", "auser01@work.com", "2017/05/10", 'A', "怨쇱옣");

		// 회占쏙옙占쏙옙占쏙옙占쏙옙占?crud)占쏙옙 占쏙옙占쏙옙歐占쏙옙占쏙옙占?占쏙옙占쏙옙 占쏙옙체 占쏙옙占쏙옙
		MemberService service = new MemberService(50);

		System.out.println("\n### ?뚯썝?깅줉");
		service.addMember(dto1);
		service.addMember(dto2);
		service.addMember(dto3);
		service.addMember(dto4);
		service.addMember(dto5);
		service.addMember(dto6);

		int count = service.getCount();
		System.out.println("\n### ?꾩옱 ?깅줉?몄썝 : " + count);

		System.out.println("\n### ?뚯썝?꾩껜議고쉶");
		Member[] members = service.getMember();
		for (int index = 0; index < members.length; index++) {
			System.out.println(members[index]);
		}

		System.out.println("\n### ?뚯썝議고쉶: user01");
		Member dto = service.getMember("user01");
		if (dto != null) {
			System.out.println(dto);
		}

		System.out.println("\n### 誘몄〈???뚯썝議고쉶: user99");
		dto = service.getMember("user99");

		System.out.println("\n### ?뚯썝蹂寃?: user01");
		dto = new GeneralMember("user01", "bluesky", "?띻만??, "010-1234-3333", "hong@work.com", "2017/05/10", 'G', 15000);
		dto = service.updateMember(dto);
		System.out.println("\n## ?뚯썝蹂寃쏀썑 ?뺣낫 : user01");
		System.out.println(dto);

		System.out.println("\n## ?뚯썝?뷀샇 蹂寃?: user01");
		dto = service.getMember("user01");
		System.out.println(dto);

		System.out.println("\n## ?뚯썝?뷀샇 蹂寃? user02 password02 happyday");
		service.updateMemberPw("user02", "password02", "happyday");
		System.out.println("\n## ?뚯썝?뷀샇 蹂寃쏀썑 議고쉶 : user02");
		dto = service.getMember("user02");
		System.out.println(dto.getMemberId() + "?섏쓽 蹂寃쎌븫?? " + dto.getMemberPw());

		count = service.getCount();
		System.out.println("\n### ?꾩옱 ?깅줉?몄썝??: " + count);
		System.out.println("\n###?뚯썝?꾩껜議고쉶");
		members = service.getMember();
		for (int index = 0; index < members.length; index++) {
			System.out.println(members[index]);
		}

		System.out.println("\n## ?뚯썝?덊눜 : user03, suser01");
		service.deleteMember("user03");
		service.deleteMember("suser01");

		count = service.getCount();
		System.out.println("\n### ?꾩옱 ?깅줉?몄썝 : " + count);
		System.out.println("\n### ?뚯썝?꾩껜議고쉶 : ?뚯썝?덊눜??);
		members = service.getMember();
		for (int index = 0; index < members.length; index++) {
			System.out.println(members[index]);
		}
	}

}

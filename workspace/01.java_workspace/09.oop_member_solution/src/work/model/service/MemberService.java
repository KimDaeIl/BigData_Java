package work.model.service;

import work.model.dto.Member;

/**
 * 회占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占?crud)占쏙옙 占쏜델몌옙占쏙옙 占쏙옙占쏙옙 클占쏙옙占쏙옙
 * 
 * ## 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占?-- encapsulation -- array -- constuctor 占쌩븝옙占쏙옙占쏙옙 --
 * polymorphism 占쏙옙占쏙옙占쏙옙 : 회占쏙옙타占쏙옙占쏙옙 占썼열(占싸몌옙타占쏙옙)
 * 
 * @author cse
 *
 */
public class MemberService {
	/** 占쏙옙占쏙옙占쏙옙 : 회占쏙옙(占싹뱄옙,占쏙옙占?占쏙옙占쏙옙占쏙옙) 占쏙옙체占쏙옙占쏙옙 占쏙옙占쏙옙占싹깍옙占쏙옙占쏙옙 占쌘뤄옙 占쏙옙占썲구占쏙옙 */
	private Member[] members;

	/** 占쏙옙占?회占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙 占쏙옙占?회占쏙옙占쏙옙 占쌘뤄옙占쏙옙占쏙옙占?占쏙옙치 占싸듸옙占쏙옙 */
	private int count;

	/** 占썩본占쏙옙占쏙옙占쏙옙 : 占썼열크占쏙옙 占썩본 10占쏙옙 占쏙옙占쏙옙 占십깍옙화 */
	public MemberService() {
		// members = new Member[10];
		this(10);
	}

	/** 占쏙옙占쏙옙占쏙옙 占쌩븝옙占쏙옙占쏙옙 : 占썼열크占쏙옙 占쏙옙占쌨뱄옙占쏙옙 크占쏙옙占?占쏙옙占쏙옙 占십깍옙화 */
	public MemberService(int length) {
		members = new Member[length];
	}

	/** 占쏙옙占?회占쏙옙占쏙옙 占쏙옙회 占쌨쇽옙占쏙옙 */
	public int getCount() {
		return count;
	}

	// 占신곤옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 : 회占쏙옙 占쏙옙歐占쏙옙(占싸몌옙타占쏙옙) : 占싹뱄옙, 占쏙옙占? 占쏙옙占쏙옙占쏙옙
	public void addMember(Member dto) {
		members[count++] = dto;
	}

	// 占쏙옙占쏙옙占쏙옙占쏙옙회(회占쏙옙占쏙옙占싱듸옙) : 회占쏙옙(占싸몌옙) 占쏙옙환타占쏙옙 占쏙옙占쏙옙占쏙옙
	/*
	 * 1. 占쏙옙溝占?회占쏙옙占쏙옙 占쏙옙큼 占쌥븝옙占싹면서 2. 占싣규몌옙트占쏙옙 占쏙옙占쌨뱄옙占쏙옙 占쏙옙占싱듸옙占?占썼열占쏙옙柰占시쇽옙占?占쏙옙占싱듸옙 占쏙옙占쏙옙占쏙옙
	 * 占쏙옙占쌔쇽옙 : equals(Object) 3. 占쏙옙占싱듸옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占싸듸옙占쏙옙占쏙옙체占쏙옙 占쏙옙회占쏙옙체占싱므뤄옙 占쏙옙환 4.
	 * for 占쏙옙占쏙옙占쏙옙 占쌥븝옙占쏙옙 占쏙옙占쌩는듸옙占쏙옙 return 占쏙옙占쏙옙 占십았다몌옙 占쌔댐옙占쏙옙絹占?占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占실뤄옙
	 * 占쏙옙占쏙옙占쌨쇽옙占쏙옙 占쏙옙占쏙옙構占?return null
	 */
	public Member getMember(String memberId) {
		for (int index = 0; index < count; index++) { // 1.
			if (memberId.equals(members[index].getMemberId())) { // 2.
				return members[index]; // 3.
			}
		}
		System.out.println("Error : ?뚯썝?뺣낫媛 議댁옱?섏? ?딆뒿?덈떎. : " + memberId);
		return null; // 4.
	}

	// 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
	/**
	 * 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
	 * 
	 * @param dto
	 *            占쏙옙占쏙옙 회占쏙옙占쏙옙체 占쏙옙占쏙옙
	 * @return 占쏙옙占쏙옙占쏙옙 회占쏙옙占쏙옙체 占쏙옙占쏙옙
	 */
	public Member updateMember(Member dto) {
		// members 泥섏쓬遺???좏슚???몃뜳?ㅺ퉴吏 諛섎났
		for (int index = 0; index < count; index++) {
			// ??ν븯??硫ㅻ쾭 媛앹껜??id? ?꾩옱 ?몃뜳?ㅼ쓽 硫ㅻ쾭 媛앹껜 id 鍮꾧탳
			if (dto.getMemberId().equals(members[index].getMemberId())) {
				Member tmp = members[index];
				members[index] = dto;
				return tmp;
			}
		}
		System.out.println("Error : 회占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占십쏙옙占싹댐옙. : " + dto.getMemberId());
		return null;
	}

	// 占쏙옙호占쏙옙占쏙옙
	public void updateMemberPw(String memberId, String memberPw, String modifyMemberPw) {
		for (int index = 0; index < count; index++) {
			if (memberId.equals(members[index].getMemberId()) && memberPw.equals(members[index].getMemberPw())) {
				members[index].setMemberPw(modifyMemberPw);
				;
				return;
			}
		}
		System.out.println("Error : 회占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占십쏙옙占싹댐옙. : " + memberId);
	}

	// 회占쏙옙탈占쏙옙
	public Member deleteMember(String memberId) {
		for (int index = 0; index < count; index++) {
			if (memberId.equals(members[index].getMemberId())) {
				Member tmp = members[index];
				members[index] = members[--count];
				return tmp;
			}
		}
		System.out.println("Error : 회占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占십쏙옙占싹댐옙. : " + memberId);
		return null;
	}

	// 占쏙옙체회占쏙옙 占쏙옙회
	public Member[] getMember() {
		// return members;
		// null???꾨땶 諛곗뿴 ?붿냼留?由ы꽩
		Member[] tmp = new Member[count];
		for (int index = 0; index < count; index++) {
			tmp[index] = members[index];
		}

		return tmp;
	}
}

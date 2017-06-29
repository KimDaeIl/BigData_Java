package work.model.service;

import work.model.dto.Member;

/**
 * <pre>
 * 멤버 정보 CRUD 기능 정의 클래스
 * </pre>
 * 
 * @author cse
 * @since
 *
 */
public class MemberService {

	/**
	 * 멤버 객체 배열
	 */
	private Member members[];

	/**
	 * members 배열 위치, 할당 객체 관리에 필요한 변수
	 */
	private int count;

	/**
	 * 기본 생성자
	 */
	public MemberService() {
		this(10);
	}

	/**
	 * 멤버 수를 매개변수로 받는 생성자
	 * 
	 * @param memberCount
	 *            관리할 멤버의 수
	 */
	public MemberService(int memberCount) {
		members = new Member[memberCount];
	}

	/**
	 * 새로운 멤버 추가 메소드
	 * 
	 * @param member
	 *            추가할 멤버 객체
	 */
	// public <T extends Member> void addMember(T member) {
	public void addMember(Member member) {

		if (member != null) {
			if (!isFull()) {
				members[count++] = member;
			} else {
				System.out.println("members are full");
			}

		} else {
			System.out.println("null 허용 ㄴㄴ");
		}
	}

	/**
	 * 특정 위치의 멤버 객체 요청
	 * 
	 * @param position
	 *            요청할 멤버의 위치
	 * @return position에 위치한 멤버 객체 반환
	 */
	public Member getMemberAt(int position) {
		if (0 <= position && position < count) {
			return this.members[position];
		}
		return null;
	}

	// 내 정보 조회(아이디): 회원 부모 타입
	public Member getMember(String id) {
		if (id == null) {
			return null;
		}

		Member tempMember = null;
		for (int i = 0; i < count; i++) {
			tempMember = members[i];

			if (tempMember.getMemberId().equals(id)) {
				return tempMember;
			}
		}

		System.out.println(id + " 회원 ㄴㄴ");
		return null;
	}

	// 내 정보 변경
	public void updateMember(Member member) {
		if (member == null) {
			return;
		}

		for (int i = 0; i < count; i++) {
			if (members[i] == member) {
				members[i] = member;
				break;
			}
		}
	}

	// 암호 변경(id, pw, newPw)

	// 회원 탈퇴(id, pw)

	// 전체회원()
	public Member[] getAllMembers() {
		return this.members;
	}

	// 마일리지 변경(id, newMileage)

	/**
	 * members 배열 상태 체크 메소드
	 * 
	 * @return members 유휴 여부
	 */
	public boolean isFull() {
		return this.count == this.members.length;
	}

	/**
	 * count 변수에 접근하기 위한 프로퍼티
	 * 
	 * @return members의 현재 위치 및 인원수
	 */
	public int getCount() {
		return this.count;
	}

}

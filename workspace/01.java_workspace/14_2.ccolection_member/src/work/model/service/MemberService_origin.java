package work.model.service;

import work.model.dto.GeneralMember;
import work.model.dto.Member;

/**
 * <pre>
 * It defines CRUD operation for the user information.
 * </pre>
 *
 * @author cse
 */
public class MemberService_origin {

	/**
	 * 占쏙옙占?占쏙옙체 占썼열
	 */
	private Member members[];

	/**
	 * the position for last valid member index of members
	 */
	private int count;

	/**
	 * 占썩본 占쏙옙占쏙옙占쏙옙
	 */
	public MemberService_origin() {
		this(10);
	}

	/**
	 * 占쏙옙占?占쏙옙占쏙옙 占신곤옙占쏙옙占쏙옙占쏙옙 占쌨댐옙 占쏙옙占쏙옙占쏙옙
	 *
	 * @param memberCount
	 *            占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占?占쏙옙
	 */
	public MemberService_origin(int memberCount) {
		members = new Member[memberCount];
	}

	/**
	 * 占쏙옙占싸울옙 占쏙옙占?占쌩곤옙 占쌨소듸옙
	 *
	 * @param member
	 *            占쌩곤옙占쏙옙 占쏙옙占?占쏙옙체
	 */
	// public <T extends work.model.dto.Member> void addMember(T member) {
	public void addMember(Member member) {

		if (member == null) {
			System.out.println("emeber == null");
			return;
		}
		if (isFull()) {
			System.out.println("諛곗뿴 ?");
			return;
		}

		if (getMember(member.getMemberId()) != null) {
			System.out.println("?덈뒗 硫ㅻ쾭");
			return;
		}

		members[count++] = member;
	}

	/**
	 * get member information by index for array.
	 *
	 * @param position
	 *            占쏙옙청占쏙옙 占쏙옙占쏙옙占?占쏙옙치
	 * @return position占쏙옙 占쏙옙치占쏙옙 占쏙옙占?占쏙옙체 占쏙옙환
	 */
	public Member getMemberAt(int position) {
		if (0 <= position && position < count) {
			return this.members[position];
		}
		
		System.out.println("nullPoint~~");
		return null;
	}

	//////////////////////// HOMEWORK////////////////////////
	// find a member by user id.
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

		System.out.println(id + " user is not found.");
		return null;
	}

	// update member information.
	public boolean updateMember(Member member) {
		if (member == null) {
			System.out.println("the member is null");
			return false;
		}

		for (int i = 0; i < count; i++) {
			if (members[i] == member) {
				members[i] = member;
				System.out.println("finish to update user information.");
				return true;
			}
		}

		return false;
	}

	// update member pw(id, pw, newPw)
	public boolean updateMemberPw(String id, String pw, String newPw) {
		Member tempMember = getMember(id);

		if (tempMember == null) {
			return false;
		}

		if (pw == null || newPw == null) {
			System.out.println("check pw and newPw, one of them is null");
			return false;

		} else if (pw.equals(newPw)) {
			System.out.println("new Password you inputted is equals with current password.");
			return false;

		}

		if (tempMember.getMemberPw().equals(pw)) {
			tempMember.setMemberPw(newPw);
			return updateMember(tempMember);

		}

		return false;
	}

	// delete member information(id, pw)
	public boolean deleteMember(String id, String pw) {

		Member tempMember = getMember(id);

		if (tempMember == null) {
			return false;
		}

		if (tempMember.getMemberPw().equals(pw)) {
			for (int i = 0; i < count; i++) {
				if (members[i] == tempMember) {
					members[i] = null;
					System.arraycopy(members, i + 1, members, i, count - i - 1);
					members[--count] = null;
					System.out.println(String.format("delete completely a member in %dth, now members are %d of %d", i, count, members.length));
					return true;
				}
			}

		}

		return false;
	}

	// getAllMembers()
	public Member[] getAllMembers() {
		// return this.members;

		Member temp[] = new Member[count];
		System.arraycopy(members, 0, temp, 0, temp.length);

		return temp;
	}

	public void getAllMembers2() {
		Member member = null;
		for (int i = 0; i < count; i++) {
			member = getMemberAt(i);

			if (member != null) {
				System.out.println(member);
			}

		}
	}

	// update member mileage information(id, mileage)
	public boolean updateMileage(String id, int mileage) {

		Member tempMember = getMember(id);
		GeneralMember generalMember = null;

		if (tempMember instanceof GeneralMember) {
			generalMember = (GeneralMember) tempMember;

		} else {
			System.out.println(String.format("This id(%s) is not GeneralMember. Mileage is only for GeneralMembers", id));
			return false;

		}

		if (generalMember == null) {
			System.out.println("check your id inputted.");
			return false;
		}

		if (generalMember.getGrade() == 'G') {
			generalMember.setMileage(mileage);

			return updateMember(tempMember);

		}

		return false;
	}

	/**
	 * check members to be full.
	 *
	 * @return members 占쏙옙占쏙옙 占쏙옙占쏙옙
	 */
	public boolean isFull() {
		return this.count == this.members.length;
	}

	/**
	 * get count for members array.
	 *
	 * @return members
	 */
	public int getCount() {
		return this.count;
	}

}

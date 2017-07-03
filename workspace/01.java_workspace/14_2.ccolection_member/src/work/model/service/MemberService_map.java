package work.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import work.model.dto.GeneralMember;
import work.model.dto.Member;

/**
 * <pre>
 * It defines CRUD operation for the user information.
 * </pre>
 *
 * @author cse
 */
public class MemberService_map {

	/**
	 * ��� ��ü �迭
	 */
	private HashMap<String, Member> members;

	/**
	 * the position for last valid member index of members
	 */
	// private int count;

	/**
	 * �⺻ ������
	 */
	public MemberService_map() {

		members = new HashMap<>();
		// this(10);
	}

	/**
	 * ��� ���� �Ű������� �޴� ������
	 *
	 * @param memberCount
	 *            ������ ����� ��
	 */
	public MemberService_map(int memberCount) {
	}

	/**
	 * ���ο� ��� �߰� �޼ҵ�
	 *
	 * @param member
	 *            �߰��� ��� ��ü
	 */
	// public <T extends work.model.dto.Member> void addMember(T member) {
	public void addMember(Member member) {

		if (member == null) {
			System.out.println("emeber == null");
			return;
		}

		if (members.containsKey(member.getMemberId())) {
			System.out.println("있는 멤버");
			System.out.println();
			return;
		}

		members.put(member.getMemberId(), member);
	}

	/**
	 * get member information by index for array.
	 *
	 * @param position
	 *            ��û�� ����� ��ġ
	 * @return position�� ��ġ�� ��� ��ü ��ȯ
	 */
	// public Member getMemberAt(int position) {
	// if (0 <= position && position < count) {
	// return this.members[position];
	// }
	//
	// System.out.println("nullPoint~~");
	// return null;
	// }

	//////////////////////// HOMEWORK////////////////////////
	// find a member by user id.
	public Member getMember(String id) {
		if (id == null) {
			return null;
		}

		// Member tempMember = null;
		// for (int i = 0; i < count; i++) {
		// tempMember = members[i];
		//
		// if (tempMember.getMemberId().equals(id)) {
		// return tempMember;
		// }
		// }
		//
		// System.out.println(id + " user is not found.");
		// return null;

		if (members.containsKey(id)) {
			return members.get(id);
		}
		return null;
	}

	// update member information.
	public boolean updateMember(Member member) {
		if (member == null) {
			System.out.println("the member is null");
			return false;
		}

		if (members.containsKey(member.getMemberId())) {
			members.put(member.getMemberId(), member);
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

		if (members.containsKey(id)) {
			if (members.get(id).getMemberPw().equals(pw)) {
				members.remove(id);
				return true;

			}
		}

		return false;
	}

	// getAllMembers()
	public ArrayList<Member> getAllMembers() {
		// return this.members;

		Iterator<String> i = members.keySet().iterator();
		ArrayList<Member> memberList = new ArrayList<>();

		while (i.hasNext()) {
			memberList.add(members.get(i.next()));
		}

		return memberList;
	}

	public void printAllMembers() {

		ArrayList<Member> memberList = getAllMembers();

		for (Member m : memberList) {
			System.out.println(m.toString());
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
	 * @return members ���� ����
	 */
	/**
	 * get count for members array.
	 *
	 * @return members
	 */
	public int getCount() {
		return members.size();
	}

}

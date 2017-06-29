package work.model.service;

import work.model.dto.Member;

/**
 * <pre>
 * ��� ���� CRUD ��� ���� Ŭ����
 * </pre>
 * 
 * @author cse
 * @since
 *
 */
public class MemberService {

	/**
	 * ��� ��ü �迭
	 */
	private Member members[];

	/**
	 * members �迭 ��ġ, �Ҵ� ��ü ������ �ʿ��� ����
	 */
	private int count;

	/**
	 * �⺻ ������
	 */
	public MemberService() {
		this(10);
	}

	/**
	 * ��� ���� �Ű������� �޴� ������
	 * 
	 * @param memberCount
	 *            ������ ����� ��
	 */
	public MemberService(int memberCount) {
		members = new Member[memberCount];
	}

	/**
	 * ���ο� ��� �߰� �޼ҵ�
	 * 
	 * @param member
	 *            �߰��� ��� ��ü
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
			System.out.println("null ��� ����");
		}
	}

	/**
	 * Ư�� ��ġ�� ��� ��ü ��û
	 * 
	 * @param position
	 *            ��û�� ����� ��ġ
	 * @return position�� ��ġ�� ��� ��ü ��ȯ
	 */
	public Member getMemberAt(int position) {
		if (0 <= position && position < count) {
			return this.members[position];
		}
		return null;
	}

	// �� ���� ��ȸ(���̵�): ȸ�� �θ� Ÿ��
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

		System.out.println(id + " ȸ�� ����");
		return null;
	}

	// �� ���� ����
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

	// ��ȣ ����(id, pw, newPw)

	// ȸ�� Ż��(id, pw)

	// ��üȸ��()
	public Member[] getAllMembers() {
		return this.members;
	}

	// ���ϸ��� ����(id, newMileage)

	/**
	 * members �迭 ���� üũ �޼ҵ�
	 * 
	 * @return members ���� ����
	 */
	public boolean isFull() {
		return this.count == this.members.length;
	}

	/**
	 * count ������ �����ϱ� ���� ������Ƽ
	 * 
	 * @return members�� ���� ��ġ �� �ο���
	 */
	public int getCount() {
		return this.count;
	}

}

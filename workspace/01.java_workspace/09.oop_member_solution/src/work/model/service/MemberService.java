package work.model.service;

import work.model.dto.Member;

/**
 * ȸ�������� ���� ���(crud)�� �𵨸��� ���� Ŭ����
 * 
 * ## ���� ���� ��� -- encapsulation -- array -- constuctor �ߺ����� --
 * polymorphism ������ : ȸ��Ÿ���� �迭(�θ�Ÿ��)
 * 
 * @author cse
 *
 */
public class MemberService {
	/** ������ : ȸ��(�Ϲ�,���,������) ��ü���� �����ϱ����� �ڷ� ���屸�� */
	private Member[] members;

	/** ��� ȸ���� ���� �� ��� ȸ���� �ڷ������ ��ġ �ε��� */
	private int count;

	/** �⺻������ : �迭ũ�� �⺻ 10�� ���� �ʱ�ȭ */
	public MemberService() {
		// members = new Member[10];
		this(10);
	}

	/** ������ �ߺ����� : �迭ũ�� ���޹��� ũ��� ���� �ʱ�ȭ */
	public MemberService(int length) {
		members = new Member[length];
	}

	/** ��� ȸ���� ��ȸ �޼��� */
	public int getCount() {
		return count;
	}

	// �Ű����� ������ : ȸ�� ��ϱ��(�θ�Ÿ��) : �Ϲ�, ���, ������
	public void addMember(Member dto) {
		members[count++] = dto;
	}

	// ��������ȸ(ȸ�����̵�) : ȸ��(�θ�) ��ȯŸ�� ������
	/*
	 * 1. ��ϵ� ȸ���� ��ŭ �ݺ��ϸ鼭 2. �ƱԸ�Ʈ�� ���޹��� ���̵�� �迭��Ұ�ü�� ���̵� ������
	 * ���ؼ� : equals(Object) 3. ���̵� ������ ���� �ε�����ü�� ��ȸ��ü�̹Ƿ� ��ȯ 4.
	 * for ������ �ݺ��� ���ߴµ��� return ���� �ʾҴٸ� �ش���̵� �������������Ƿ�
	 * �����޼��� ����ϰ� return null
	 */
	public Member getMember(String memberId) {
		for (int index = 0; index < count; index++) { // 1.
			if (memberId.equals(members[index].getMemberId())) { // 2.
				return members[index]; // 3.
			}
		}
		System.out.println("Error : 회원정보가 존재하지 않습니다. : " + memberId);
		return null; // 4.
	}

	// ����������
	/**
	 * ����������
	 * 
	 * @param dto
	 *            ���� ȸ����ü ����
	 * @return ������ ȸ����ü ����
	 */
	public Member updateMember(Member dto) {
		// members 처음부터 유효한 인덱스까지 반복
		for (int index = 0; index < count; index++) {
			// 저장하는 멤버 객체의 id와 현재 인덱스의 멤버 객체 id 비교
			if (dto.getMemberId().equals(members[index].getMemberId())) {
				Member tmp = members[index];
				members[index] = dto;
				return tmp;
			}
		}
		System.out.println("Error : ȸ�������� �������� �ʽ��ϴ�. : " + dto.getMemberId());
		return null;
	}

	// ��ȣ����
	public void updateMemberPw(String memberId, String memberPw, String modifyMemberPw) {
		for (int index = 0; index < count; index++) {
			if (memberId.equals(members[index].getMemberId()) && memberPw.equals(members[index].getMemberPw())) {
				members[index].setMemberPw(modifyMemberPw);
				;
				return;
			}
		}
		System.out.println("Error : ȸ�������� �������� �ʽ��ϴ�. : " + memberId);
	}

	// ȸ��Ż��
	public Member deleteMember(String memberId) {
		for (int index = 0; index < count; index++) {
			if (memberId.equals(members[index].getMemberId())) {
				Member tmp = members[index];
				members[index] = members[--count];
				return tmp;
			}
		}
		System.out.println("Error : ȸ�������� �������� �ʽ��ϴ�. : " + memberId);
		return null;
	}

	// ��üȸ�� ��ȸ
	public Member[] getMember() {
		// return members;
		// null이 아닌 배열 요소만 리턴
		Member[] tmp = new Member[count];
		for (int index = 0; index < count; index++) {
			tmp[index] = members[index];
		}

		return tmp;
	}
}

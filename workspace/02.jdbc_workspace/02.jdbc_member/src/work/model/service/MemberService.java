package work.model.service;

import java.util.ArrayList;

import work.Util;
import work.model.dao.MemberDao;
import work.model.dto.Member;

/**
 * <pre>
 * It defines CRUD operation for the user information.
 * </pre>
 *
 * @author cse
 */
public class MemberService {

	private MemberDao memberDao;

	/**
	 * the position for last valid member index of members
	 */
	// private int count;

	/**
	 * 占썩본 占쏙옙占쏙옙占쏙옙
	 */
	public MemberService() {
		memberDao = MemberDao.getInstance();

	}

	public boolean isExists(String id) {

		return false;
	}

	// public <T extends work.model.dto.Member> void addMember(T member) {

	public int addMember(Member member) {

		return memberDao.insert(member);
	}

	public Member getMember(String id) {

		if (Util.isNull(id) && id.isEmpty()) {
			System.out.println("ID is null or empty.");
			return null;
		}

		return memberDao.selectOne(id);

	}

	// update member information.
	public int updateMember(Member member) {

		return memberDao.update(member);
	}

	// update member pw(id, pw, newPw)
	private int updateMemberPw(String id, String pw, String newPw) {

		return 0;
	}

	public int deleteMember(String id, String pw) {
		if (Util.isNull(id) || id.isEmpty()) {

			System.out.println("id is null or empty");
			return 0;
		}

		if (Util.isNull(pw) || pw.isEmpty()) {

			System.out.println("password is null or empty");
			return 0;
		}

		return memberDao.delete(id, pw);
	}

	public ArrayList<Member> getMember() {

		return memberDao.selectList();
	}

	public ArrayList<Member> getMemberByGrade(char grade) {

		return getMemberByGrade(String.valueOf(grade));

	}

	public ArrayList<Member> getMemberByGrade(String grade) {
		switch (grade) {
		case "G":
		case "g":
		case "s":
		case "S":
		case "a":
		case "A":
			return memberDao.selectMemberByGrade(grade.toUpperCase());
		default:
			return null;
		}

	}
}

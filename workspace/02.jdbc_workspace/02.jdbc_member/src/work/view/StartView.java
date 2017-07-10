package work.view;

import java.util.ArrayList;
import java.util.Arrays;

import work.Util;
import work.model.dao.MemberDao;
import work.model.dto.Member;
import work.model.service.MemberService;

public class StartView {

	public static void main(String[] args) {
		MemberService ms = new MemberService();

		title("전체회원조회");
		ArrayList<Member> members = ms.getMember();
		for (Member m : members)
			print(m);
		print();

		title("user01 조회");
		Member member = ms.getMember("user01");
		print(member);
		print();

		title("g");
		members = ms.getMemberByGrade('g');
		for (Member m : members)
			print(m);
		print();

		title("delete: user01, password01");
		print(ms.deleteMember("user01", "password01"));
		print();

		title("insert: user01, password01");
		Member m = new Member();
		m.setMemberId("user01");
		m.setMemberPw("password01");
		m.setMemberName("useruu");
		m.setMobile("mobile");
		m.setEmail("abc@Av.com");
		m.setEntryDate(Util.getCurrentDay());
		print(ms.addMember(m));
		print();

		title("update: user01");
		m.setMemberPw("password");
		m.setMemberName("name");
		m.setMobile("010-1234-5678");
		m.setEmail("email@email.com");

		print(ms.updateMember(m));
		print();

	}

	public static void print(Object object) {
		System.out.println(object);
	}

	public static void print() {
		System.out.println();
	}

	public static void title(String title) {
		print("###  " + title + "  ###");
	}
}

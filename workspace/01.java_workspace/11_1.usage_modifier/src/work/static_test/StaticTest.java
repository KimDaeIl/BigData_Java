package work.static_test;

import java.util.Random;

public class StaticTest {
	public String msg = "static test";
	public static String title = "2017 빅데이터 과정";

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println(title);
		// System.out.println(msg);
		// error: static 메소드는 static 변수만 참조 가능
		StaticTest st = new StaticTest();
		System.out.println(st.msg);

		// Member 클래스에서 static 변수로 선언했기 때문에 클래스 이름으로 호출 가능
		int count = Member.count;

		Member m1 = new Member();
		Member m2 = new Member();

		m1.count = 100;

	}
}

class Member {
	// 멤버 변수 >> 인스턴스 변수
	// heap area: new 연산을 통해 메모리 할당. 객체와 라이프 사이클 동일
	String id;
	String pw;

	// 멤버 변수 >> 클래스 변수
	// static area: 프로그램 라이프 사이클과 동일
	static int count;

	Member() {
		this("id", "pw");
	}

	Member(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

}

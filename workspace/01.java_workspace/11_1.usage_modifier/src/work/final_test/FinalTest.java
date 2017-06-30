package work.final_test;

import java.util.ArrayList;

import com.sun.glass.ui.Cursor;

/**
 * @author cse
 *
 */
public class FinalTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		double pi = Math.PI;
		// 상수(final)은 변경 불가
		// Math.PI = 1004;

		new Member();
		System.out.println();

		new Member();
		System.out.println();

		new Member();
		System.out.println();

		new Member();
		System.out.println();

		new Member();
		System.out.println();

		new Member();
		System.out.println();

		new Member();

	}
}

class Member {
	//
	static {
		System.out.println("App(program) 실행 때 한번");
	}

	// 인스턴스 초기화 블럭
	// 생성자 사용: 아규먼트 전달, 중복정의 가능
	{
		System.out.println("객체 생성될 때 수행");
	}

	public Member() {
		System.out.println("객체가 생성될 때 수행: Member()");
	}

	@Override
	public String toString() {
		return "aaa";
	}

	public void a() {
	}

	public final void b() {
	}
}

class SpecialMember extends Member {

	@Override
	public void a() {
		System.out.println("밥");
	}

	// overloading
	public void a(int data) {

	}

	public void c() {
	}

}

// String은 fianl 클래스라 상속이 차단되었다.
// class GeneralMember extends String{}

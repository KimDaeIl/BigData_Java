/**
 * 
 */
package work.interface_test;

import work.interface_test.Cat;
import work.interface_test.Dog;
import work.interface_test.Pet;

/*
 * interface
 * public interface {interface_name}{
 * 
 * }
 * 
 * interface에서 선언한 멤버변수 및 메소드 정의는 모두 public이며,
 * 상수는 public static final 키워드가 붙는다.
 * 즉, 인터페이서에서 선언한 멤버변수는 모두 상수로 선언된다.
 * 
 * interface는 상속이 되며, extends를 통해 상속할 수 있다.
 * 
 */

/**
 * @author cse
 *
 */
public class InterfaceTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Pet[] pets = new Pet[3];

		pets[0] = new Cat();
		pets[1] = new Dog();
		pets[2] = new Dog();

		pets[0].eat("사료");

		// 인터페이스의 멤버변수는 모두 상수
		// 상수는 변경할 수 없다.
		pets[0].name = "노랑이";

		pets[1].eat("참사료");
		pets[2].eat("냠냠샤로");
		System.out.println();

		for (int i = 0; i < pets.length; i++) {
			pets[i].speak();
			System.out.println();
		}
	}

}

interface Pet {

	String name = "씩씩이";

	public void eat(String food);

	public void speak();

	public void song();
}

class Cat implements Pet {
	/*
	 * 재정의: Overriding 전제조건: 상속 재정의 규칙 1. 메소드 반환 타입, 이름, 아큐먼트(타입의 순서 및 갯수): 동일
	 * 2. 접급권한: 축소 불가(이상) 3. 예외: 확대 불가(미발생, sub 예외 발생, 동일 예외 발생
	 */

	/*
	 * annotation @#### jdk 1.5 javac, java 실행 시 정해진 규칙을 사전에 검증 자바 제공, 사용자 정의 가능
	 */

	@Override
	public void eat(String food) {
		// TODO Auto-generated method stub
	}

	@Override
	public void speak() {
		// TODO Auto-generated method stub
		System.out.println("덤비냥?");
	}

	@Override
	public void song() {
		// TODO Auto-generated method stub

	}
}

class Dog implements Pet {
	public void eat(String food) {
		System.out.println(food + "를 강아지가 먹습니다.");
	}

	public void speak() {
		System.out.println("덤비시개~!!");

	}

	public void song() {
		System.out.println("멍크멍크");
	}
}
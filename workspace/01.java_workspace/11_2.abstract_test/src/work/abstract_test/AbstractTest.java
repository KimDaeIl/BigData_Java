/**
 * 
 */
package work.abstract_test;

/**
 * @author cse
 *
 */
public class AbstractTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Pet[] pets = new Pet[3];

		pets[0] = new Cat();
		pets[1] = new Dog();
		pets[2] = new Dog();

		pets[0].eat("사료");
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

class Pet {

	public String name = "씩씩이";

	public void eat(String food) {
		System.out.println(food + "를 맛나게 먹습니다.");
	}

	public void speak() {
		System.out.println("동물! 동물!");

	}

	public void song() {
		System.out.println("애완동물이 노래를 합니다.");
	}
}

class Cat extends Pet {
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
		super.eat(food);
	}

	@Override
	public void speak() {
		// TODO Auto-generated method stub
		super.speak();
		System.out.println("덤비냥?");
	}
}

class Dog extends Pet {
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

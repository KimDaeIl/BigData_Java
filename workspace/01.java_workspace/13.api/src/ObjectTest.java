/**
 * 
 */

/**
 * @author cse
 *
 */
public class ObjectTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Member m1 = new Member("member1", "pw");
		// Member m2 = new Member("member1", "pw");
		// Member m3 = new Member("member3", "pw");
		// Member m4 = m1;
		//
		// System.out.println();
		// System.out.println(m1 == m2);
		// System.out.println(m1 == m3);
		// System.out.println(m1 == m4);
		// System.out.println();
		//
		// System.out.println(m1.equals(m2));
		// System.out.println(m1.equals(m3));
		// System.out.println(m1.equals(m4));
		// System.out.println();
		//
		// System.out.println(m1);
		// System.out.println(m2);
		// System.out.println(m3);
		// System.out.println(m4);
		// System.out.println();
		//
		// System.out.println(m1.hashCode());
		// System.out.println(m2.hashCode());
		// System.out.println(m3.hashCode());
		// System.out.println(m4.hashCode());
		// System.out.println();

		/*
		 * 상수로 문자열 선언 시 heap area의 literal pool 영역에 할당
		 * 동일한 상수 문자열 참조 시 같은 곳 참조
		 */
		String msg1 = "hello";
		// msg1과 같은 메모리 참조
		String msg2 = "hello";

		String msg3 = new String("hello");
		String msg4 = new String("hello");
		String msg5 = "HELLO";

		System.out.println(msg1.hashCode());
		System.out.println(msg2.hashCode());
		System.out.println(msg3.hashCode());
		System.out.println(msg4.hashCode());
		System.out.println(msg5.hashCode());
		

	}

}

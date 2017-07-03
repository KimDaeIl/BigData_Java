import java.util.HashSet;

/**
 * 
 */

/**
 * @author cse
 *
 */
public class SetTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		HashSet set=new HashSet<>();

		System.out.println(set.add("hello"));
		System.out.println(set.add("hello"));
		System.out.println(set.add("hello"));
		System.out.println();
		

		System.out.println(set.add("123"));
		System.out.println(set.add(123));
		System.out.println();

		System.out.println(set.add(new Member("user01", "pw1")));
		System.out.println(set.add(new Member("user01", "pw1")));
		System.out.println(set.add(new Member("user01", "pw2")));
		System.out.println();
		
		System.out.println(set.size());
		System.out.println(set.toString());
//		set.iterator()
	}

}

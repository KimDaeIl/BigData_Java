import java.util.ArrayList;
import java.util.Date;

/**
 * 
 */

/**
 * @author cse
 *
 */
public class ListTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ArrayList list = new ArrayList<>();

		list.add("1");
		list.add("2");
		list.add("3");
		list.add("4");
		list.add("hello");
		list.add("hello");
		list.add("hello");
		list.add("5");
		list.add(1);
		list.add(new Integer(1));
		list.set(5, new Date());

		System.out.println(list.size());

		System.out.println("<< =1.4==>>");
		// jdk 1.4
		for (int i = 0; i < list.size(); i++)
			System.out.println(list.get(i));

		System.out.println("<< 1.5===>>");
		// jdk 1.5 향상된 for
		for (Object b : list)
			System.out.println(b);

		System.out.println("<< remove===>>");
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).equals("hello"))
				System.out.println(list.remove(i));

		}

		System.out.println("<< ===>>");
		ArrayList removeList = new ArrayList<>();
		removeList.add("hello");

		list.removeAll(removeList);

		for (Object b : list)
			System.out.println(b);
	}

}

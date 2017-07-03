import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/**
 * 
 * @author cse
 *
 */
public class MapTest {

	/**
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		HashMap map = new HashMap<>();

		System.out.println("<< 등록: put >>");
		map.put("a1", "value");
		map.put("a1", "value");
		map.put("user01", new Member("user01", "pw1"));
		map.put("user02", new Member("user02", "pw1"));
		System.out.println();

		System.out.println("<< 조회: get >>");
		System.out.println(map.get("a1"));
		System.out.println(map.get("user01"));
		System.out.println(map.get("user02"));
		System.out.println();

		System.out.println("<< 삭제: remove >>");
		System.out.println(map.remove("user01"));
		System.out.println();

		System.out.println("<< 전부 조회>>");
		Iterator i = map.keySet().iterator();
		
		while (i.hasNext()) {
			System.out.println(map.get(i.next()));
		}
		System.out.println();

	}
}

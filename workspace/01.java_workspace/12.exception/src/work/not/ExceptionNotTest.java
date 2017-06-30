/**
 * 
 */
package work.not;

/**
 * @author cse
 *
 */
public class ExceptionNotTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] names = { "AAA", "BBB", "CCC", "DDD" };

		for (int i = 0; i < 5; i++) {
			System.out.println(names[i]);
			/*
			 * |AAA|BBB|CCC|DDD|null(ArrayOutOfBoundsException)
			 */
		}

	}
}

/**
 * 
 */
package work.check;

/**
 * @author cse
 *
 */
public class ExceptionTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] names = { "AAA", "BBB", "CCC", "DDD" };
		
		try {
			for (int i = 0; i < 5; i++) {
				System.out.println(names[i]);
				/*
				 * |AAA|BBB|CCC|DDD|null(ArrayIndexOutOfBoundsException)
				 */
			}

		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println(e.getMessage());

		} finally {
			System.out.println("무조건 수행되는 finally 구문");
			System.out.println();
		}

	}
}

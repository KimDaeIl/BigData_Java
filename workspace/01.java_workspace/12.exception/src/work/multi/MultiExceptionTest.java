/**
 * 
 */
package work.multi;

/**
 * @author cse
 *
 */
public class MultiExceptionTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		String msg = null;
		try {

			msg.length();

			// System.out.println("X: try 수행문");

		} catch (NullPointerException e) {
			System.out.println("Error class: "+ e.getClass().getName());
			System.out.println("Error message: " + e.getMessage());
			e.printStackTrace();

		} catch (ClassCastException e) {
			System.out.println("Error class: "+ e.getClass().getName());
			System.out.println("Error message: " + e.getMessage());
			e.printStackTrace();
			
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("Error class: "+ e.getClass().getName());
			System.out.println("Error message: " + e.getMessage());
			e.printStackTrace();
			
		}

		System.out.println("D: 정상 종료");

	}

}

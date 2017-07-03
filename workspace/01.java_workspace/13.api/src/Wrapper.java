/**
 * 
 */

/**
 * @author cse
 *
 */
public class Wrapper {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		if (args.length != 2) {
			System.out.println("숫자만 두개");
			return;
		}

		try {
			System.out.println(Integer.parseInt(args[0]) + Integer.parseInt(args[1]));

		} catch (NumberFormatException e) {
			System.out.println("문자열>> " + e.getMessage());

		}
	}

}

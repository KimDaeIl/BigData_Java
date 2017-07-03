/**
 * 
 */
package work.user;

import java.io.IOException;

/**
 * @author cse
 *
 */
public class UserExceptionTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws IOException{
		int data = System.in.read();
		System.out.println(data);

		User u = new User();
		try {
			u.setKey("qo1234");

		} catch (UserException e) {
			System.out.println("error: " + e.getMessage());
		}

		try { 
			u.setKey("GuESt");

		} catch (UserException e) {
			System.out.println("error: " + e.getMessage());
		}
	}


	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		
		super.finalize();
		System.out.println("GC");
	}
}

class User {
	private String key = "";

	public void setKey(String key) throws UserException {
		if (key.equalsIgnoreCase("guest")) {
			throw new UserException("ERR_1234 >> " + key);
		}

		this.key = key;
	}
}

package work.user;

public class UserException extends Exception {

	public String key;

	public UserException() {
		this("work.user.UserException");
	}

	/**
	 * @param message
	 */
	public UserException(String message) {
		super(message);
		this.key = message;
	}

	public String getKey() {
		return this.key;
	}

}

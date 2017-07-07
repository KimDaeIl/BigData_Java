package work.model.dto;

import work.Util;

public class AdminMember extends Member {

	/**
	 * <pre>
	 * 占쏙옙책占쏙옙
	 * type: 	String
	 * length: 	8-30
	 * default: ""
	 * format:	-
	 * </pre>
	 */
	private String position = "";

	public AdminMember() {
		super();
		// init();
	}

	public AdminMember(String memberId, String memberPw, String memberName, String mobile, String email, String position) {
		super(memberId, memberPw, memberName, mobile, email);
		setPosition(position);
		// init();
	}

	public AdminMember(String memberId, String memberPw, String memberName, String mobile, String email) {
		this(memberId, memberPw, memberName, mobile, email, "");
	}

	/**
	 * @return the position
	 */
	public String getPosition() {
		return position;
	}

	/**
	 * @param position
	 *            the position to set
	 */
	public void setPosition(String position) {
		if (Util.isValidString(position, 2, 10)) {
			this.position = position;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see work.model.dto.work.model.dto.Member#init()
	 */
	@Override
	public void init() {
		setGrade('A');
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return super.toString() + ", " + position;
	}

}

package work.model.dto;

public class SpecialMember extends Member {
	/**
	 * <pre>
	 * ´ã´çÀÚ
	 * type: 	String
	 * length: 	10
	 * default: ""
	 * format:	-
	 * </pre>
	 */
	private String managerName = "";

	public SpecialMember() {
		super();
		// init();
	}

	/**
	 * @param memberId
	 * @param memberPw
	 * @param memberName
	 * @param mobile
	 * @param email
	 * @param managerName
	 */
	public SpecialMember(String memberId, String memberPw, String memberName, String mobile, String email,
			String managerName) {
		super(memberId, memberPw, memberName, mobile, email);
		setManagerName(managerName);
		// init();
	}

	public SpecialMember(String memberId, String memberPw, String memberName, String mobile, String email) {
		this(memberId, memberPw, memberName, mobile, email, "");
	}

	/**
	 * @return the managerName
	 */
	public String getManagerName() {
		if (isNull(this.managerName))
			this.managerName = "";
		return this.managerName;
	}

	/**
	 * @param managerName
	 *            the managerName to set
	 */
	public void setManagerName(String managerName) {
		if (isValidString(managerName, 10)) {
			this.managerName = managerName;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see work.model.dto.Member#init()
	 */
	@Override
	public void init() {
		setGrade('S');
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return super.toString() + ", " + managerName;
	}

}

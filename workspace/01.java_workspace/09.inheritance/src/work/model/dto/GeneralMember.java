package work.model.dto;

public class GeneralMember extends Member {

	/**
	 * <pre>
	 * 보유 마일리지 
	 * type: 	int
	 * length: 	6
	 * default: 0
	 * format:	123456
	 * </pre>
	 */
	private int mileage;

	public GeneralMember() {
		super();
		// init();
	}

	/**
	 * @param memberId
	 * @param memberPw
	 * @param memberName
	 * @param mobile
	 * @param email
	 * @param mileage
	 */
	public GeneralMember(String memberId, String memberPw, String memberName, String mobile, String email, int mileage) {
		super(memberId, memberPw, memberName, mobile, email);
		setMileage(mileage);
		// init();

	}

	public GeneralMember(String memberId, String memberPw, String memberName, String mobile, String email) {
		this(memberId, memberPw, memberName, mobile, email, 0);
	}

	/**
	 * @return the mileage
	 */
	public int getMileage() {
		return mileage;
	}

	/**
	 * @param mileage
	 *            the mileage to set
	 */
	public void setMileage(int mileage) {
		if (mileage > 0) {
			this.mileage = mileage > 999999 ? 999999 : mileage;
		} else {
			this.mileage = 0;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see work.model.dto.Member#init()
	 */
	@Override
	public void init() {
		setGrade('G');
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return super.toString() + ", " + mileage;
	}

}


public class Member {
	String id;
	String pw;

	public Member(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return id + ", " + pw;
	}

//	@Override
//	public boolean equals(Object obj) {
//		if (obj != null && obj instanceof Member) {
//			if (((Member) obj).id.equals(this.id)) {
//				return true;
//			}
//		}
//
//		return false;
//	}
	
	

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((pw == null) ? 0 : pw.hashCode());
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		
		Member other = (Member) obj;
		if (id == null) {
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (pw == null) {
				return false;
		} else if (!pw.equals(other.pw))
			return false;
		return true;
	}

}

class GeneralMember extends Member {

	/**
	 * @param id
	 * @param pw
	 */
	public GeneralMember(String id, String pw) {
		super(id, pw);
		// TODO Auto-generated constructor stub
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return super.toString();
	}

}

class SpecialMember extends Member {

	/**
	 * @param id
	 * @param pw
	 */
	public SpecialMember(String id, String pw) {
		super(id, pw);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return super.toString();
	}

}

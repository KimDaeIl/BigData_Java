package work.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import work.Util;
import work.model.dto.Member;

/**
 * DAO pattern
 * 
 * @author cse
 *
 */
public class MemberDao {
	private volatile static MemberDao instance = null;

	public static synchronized MemberDao getInstance() {

		if (instance == null) {
			instance = new MemberDao();
		}

		return instance;
	}

	/**
	 * <pre>
		 driver loading
		 server conn
		 init state for sql exc
		 excute sql
		 handle result by ResultSet
		 return resource
		 	=> close() 중복 정의
	 * 
	 * </pre>
	 */

	/**
	 * <pre>
	 * db 관련 프로퍼티 
	 * 	> private 멤버
	 * 	> 외부파일 분리 > javja.util.Resourcebundle
	 * driver
	 * url
	 * user
	 * password
	 * 
	 * </pre>
	 */

	// jdbc property 멤버변수

	private String classDriver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	private String user = "scott";
	private String password = "tiger";

	// 기본 생성자 1. driver 생성자
	private MemberDao() {
		try {
			Class.forName(classDriver);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();

		}
	}

	// 연결 반환 메소드 작성
	public Connection getConnection() {
		try {

			return DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			System.out.println("error : getConnection()");
			e.printStackTrace();

		}

		return null;
	}

	// 클로즈
	public void close(Statement stmt, Connection conn) {
		close(null, stmt, conn);

	}

	public void close(ResultSet rs, Statement stmt, Connection conn) {

		try {
			if (!Util.isNull(rs) && !rs.isClosed()) {
				rs.close();
				rs = null;
			}

			if (!Util.isNull(stmt) && !stmt.isClosed()) {
				stmt.close();
				stmt = null;
			}

			if (!Util.isNull(conn) && !conn.isClosed()) {
				conn.close();
				conn = null;
			}

		} catch (SQLException e) {
			System.out.println("error: close()");
			e.printStackTrace();
		}

	}

	// 전체 회원 조회
	public ArrayList<Member> selectList() {
		ArrayList<Member> memberList = new ArrayList<>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from members");

			Member tempMember = null;
			while (rs.next()) {
				tempMember = new Member();
				tempMember.setMemberId(rs.getString("member_id"));
				tempMember.setMemberPw(rs.getString("member_pw"));
				tempMember.setMemberName(rs.getString("member_name"));
				tempMember.setMobile(rs.getString("mobile"));
				tempMember.setEntryDate(rs.getString("entry_date"));
				tempMember.setGrade(rs.getString("grade").charAt(0));
				tempMember.setMileage(rs.getInt("mileage"));
				tempMember.setManager(rs.getString("manager"));

				memberList.add(tempMember);

			}
		} catch (SQLException e) {
			System.out.println("error: selectList()");
			e.printStackTrace();

		} finally {
			close(rs, stmt, conn);

		}

		return memberList;
	}

	public ArrayList<Member> selectMemberByGrade(String grade) {
		ArrayList<Member> memberList = new ArrayList<>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from members where grade=?");
			pstmt.setString(1, grade);
			rs = pstmt.executeQuery();

			Member tempMember = null;
			while (rs.next()) {
				tempMember = new Member();
				tempMember.setMemberId(rs.getString("member_id"));
				tempMember.setMemberPw(rs.getString("member_pw"));
				tempMember.setMemberName(rs.getString("member_name"));
				tempMember.setMobile(rs.getString("mobile"));
				tempMember.setEntryDate(rs.getString("entry_date"));
				tempMember.setGrade(rs.getString("grade").charAt(0));
				tempMember.setMileage(rs.getInt("mileage"));
				tempMember.setManager(rs.getString("manager"));

				memberList.add(tempMember);

			}
		} catch (SQLException e) {
			System.out.println("error: selectList()");
			e.printStackTrace();

		} finally {
			close(rs, pstmt, conn);

		}

		return memberList;
	}

	// 내 정보 조회 selectOne(id:String): Member

	public Member selectOne(String id) {
		Member tempMember = null;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from members where member_id=?");
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				tempMember = new Member();
				tempMember.setMemberId(rs.getString("member_id"));
				tempMember.setMemberPw(rs.getString("member_pw"));
				tempMember.setMemberName(rs.getString("member_name"));
				tempMember.setMobile(rs.getString("mobile"));
				tempMember.setEntryDate(rs.getString("entry_date"));
				tempMember.setGrade(rs.getString("grade").charAt(0));
				tempMember.setMileage(rs.getInt("mileage"));
				tempMember.setManager(rs.getString("manager"));
			}

		} catch (SQLException e) {
			System.out.println("error: selectList()");
			e.printStackTrace();

		} finally {
			close(rs, pstmt, conn);

		}

		return tempMember;
	}

	public String findMemberId(String mobile) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from members where mobile=?");
			pstmt.setString(1, mobile);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				return rs.getString("member_id");
			}

		} catch (SQLException e) {
			System.out.println("error: selectList()");
			e.printStackTrace();

		} finally {
			close(rs, pstmt, conn);

		}

		return null;
	}

	public Member selectOne(String id, String pw) {
		Member member = selectOne(id);

		if (!Util.isNull(member)) {
			if (member.getMemberPw().equalsIgnoreCase(pw)) {
				return member;
			}
		}

		return null;
	}

	public int insert(Member member) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into members values(?, ?, ?, ?, ?, ?, ?, ?, ?)");

			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMobile());
			pstmt.setString(5, member.getEmail());
			pstmt.setString(6, member.getEntryDate());
			pstmt.setString(7, String.valueOf(member.getGrade()));
			pstmt.setInt(8, member.getMileage());
			pstmt.setString(9, member.getManager());

			int result = pstmt.executeUpdate();

			conn.commit();

			return result;
		} catch (SQLException e) {
			System.out.println("error: deleteOne()");
			e.printStackTrace();
		}

		return 0;
	}

	public int update(Member member) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sql = new StringBuilder();
		sql.append("update members set ").append("member_pw=?, member_name=?, mobile=?, email=? ")
				.append("where member_id=?");

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setString(1, member.getMemberPw());
			pstmt.setString(2, member.getMemberName());
			pstmt.setString(3, member.getMobile());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getMemberId());

			System.out.println(sql.toString());
			int result = pstmt.executeUpdate();

			conn.commit();

			return result;

		} catch (SQLException e) {
			System.out.println("error: update");
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				System.out.println("error: rollback in update");
				e.printStackTrace();
			}
		}

		return 0;
	}

	public int updateGrade(Member member) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sql = new StringBuilder();
		sql.append("update members set ").append("grade=?, mileage=?, manager=? ").append("where member_id=?");

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setString(1, String.valueOf(member.getGrade()));
			pstmt.setInt(2, member.getMileage());
			pstmt.setString(3, member.getManager());
			pstmt.setString(4, member.getMemberId());
			

			int result = pstmt.executeUpdate();

			conn.commit();

			return result;

		} catch (SQLException e) {
			System.out.println("error: update");
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				System.out.println("error: rollback in update");
				e.printStackTrace();
			}
		}

		return 0;
	}

	public int delete(String id, String pwd) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("delete from members where member_id=? and member_pw=?");

			pstmt.setString(1, id);
			pstmt.setString(2, pwd);

			int result = pstmt.executeUpdate();

			conn.commit();

			return result;

		} catch (SQLException e) {
			System.out.println("error: delete");
			e.printStackTrace();

			try {
				conn.rollback();
			} catch (SQLException e1) {
				System.out.println("error: rollback in delete()");
				e.printStackTrace();
			}

		}

		return 0;
	}

	// 관리자: 회원 전체 변경
	// 관리자:등급변경
	// 관리자:마일리지볁경
	// 아이디찾기
	// 암호찾기
	// 로그인

}

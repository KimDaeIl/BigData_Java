import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.SQLType;
import java.sql.Statement;
import java.sql.Types;

import com.sun.org.apache.bcel.internal.generic.Select;

// 0. import java.sql.*

public class Test {

	public static void main(String[] args) {

		SelectClass sc = new SelectClass();

		sc.select("select * from dept");

		// String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
		// String user = "scott";
		// String password = "tiger";
		// String sql = new String();
		//
		// Connection conn = null;
		// Statement stmt = null;
		// ResultSet rs = null;
		//
		// try {
		//
		// // 1. Driver loading
		// Class.forName("oracle.jdbc.driver.OracleDriver");
		//
		// // 2. Connection 积己
		// conn = DriverManager.getConnection(url, user, password);
		//
		// // 3. Statement 积己
		// stmt = conn.createStatement();
		// // PreparedStatement pstmt= conn.createcreateStatement();
		//
		// // 4. SQL 角青夸没
		// sql = "select * from dept";
		// rs = stmt.executeQuery(sql);
		// ResultSetMetaData resultMeta = rs.getMetaData();
		//
		// // System.out.println(resultMeta.getColumnCount());
		// for (int i = 1; i <= resultMeta.getColumnCount(); i++) {
		// System.out.print(resultMeta.getColumnLabel(i) + "\t");
		// System.out.println(resultMeta.getColumnType(i));
		// }
		//
		// System.out.println();
		//
		// while (rs.next()) {
		//
		// System.out.println(
		// String.format("%d \t %s \t %s", rs.getInt("deptno"),
		// rs.getString("dname"), rs.getString("loc")));
		//
		// }
		// // stmt.executeLargeUpdate("insert into "); // 利侩等 row 荐 府畔
		// //
		// //
		// // stmt.execute("SQL");
		//
		// // 5. SQL 搬苞贸府
		//
		// } catch (SQLException e) {
		// e.printStackTrace();
		//
		// } catch (ClassNotFoundException e) {
		// e.printStackTrace();
		//
		// } finally {
		//
		// // 6. 磊盔秦力
		// try {
		// if (rs != null && !rs.isClosed()) {
		// rs.close();
		// rs = null;
		// }
		//
		// if (stmt != null && !stmt.isClosed()) {
		// stmt.close();
		// stmt = null;
		// }
		//
		// if (conn != null && !conn.isClosed()) {
		// conn.close();
		// conn = null;
		// }
		//
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		//
		// }

	}

}

class SelectClass extends AbsSelect {
	public SelectClass() {
		// TODO Auto-generated constructor stub
	}

	@Override
	void handleResultSet(ResultSet rs) {
		try {
			ResultSetMetaData resultMeta = rs.getMetaData();
			for (int i = 1; i <= resultMeta.getColumnCount(); i++) {
				System.out.print(resultMeta.getColumnLabel(i) + "\t");
				System.out.println(resultMeta.getColumnType(i));
			}

			while (rs.next()) {

				System.out.println(String.format("%d \t %s \t %s", rs.getInt("deptno"), rs.getString("dname"),
						rs.getString("loc")));

			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
	}
}
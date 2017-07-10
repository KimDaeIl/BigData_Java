import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public abstract class AbsSelect extends ResultDate {

	private void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();

		} catch (SQLException e) {
			e.printStackTrace();

		}

	}

	public ResultSet excute(String sql) {
		try {
			return stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	abstract void handleResultSet(ResultSet rs);

	private void close() {
		try {
			if (stmt != null && !stmt.isClosed()) {
				stmt.close();
				stmt = null;
			}

			if (conn != null && !conn.isClosed()) {
				conn.close();
				conn = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void select(String sql) {

		connection();

		handleResultSet(excute(sql));

		close();

	}
}

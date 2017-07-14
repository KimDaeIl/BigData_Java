package work.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import work.Util;

/**
 * Connection Pool Design DAO by Factory pattern, single-ton get connection from
 * datasource
 * 
 * 
 * @author cse
 *
 */
public class FactoryDao {
	private DataSource ds;
	private static FactoryDao instance;

	private FactoryDao() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle");
			System.out.println("FactoryDao()");

		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public synchronized static FactoryDao getInstance() {

		System.out.println("getInstance");
		if (instance == null) {
			System.out.println("instance == null");
			instance = new FactoryDao();
		}

		System.out.println("instance is null? >> " + instance == null);
		return instance;
	}

	protected Connection getConecction() {
		try {

			System.out.println("ds is null? >> "+ds == null);
			return ds.getConnection();

		} catch (SQLException e) {
			System.out.println("BaseDao: getConnection");
			e.printStackTrace();
		}

		return null;
	}

	// 클로즈
	private void close(Statement stmt, Connection conn) {
		close(null, stmt, conn);

	}

	protected void close(ResultSet rs, Statement stmt, Connection conn) {

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

}

package work.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class BaseDao {

	// 연결 반환 메소드 작성
	protected Connection getConnection() {
		return FactoryDao.getInstance().getConecction();
	}

	protected void close(ResultSet rs, Statement stmt, Connection conn) {
		FactoryDao.getInstance().close(rs, stmt, conn);
	}
	
}

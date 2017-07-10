import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectionDate {
	protected String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	protected String user = "scott";
	protected String password = "tiger";
	protected String sql = new String();

	protected Connection conn = null;
	protected Statement stmt = null;
	protected ResultSet rs = null;
}

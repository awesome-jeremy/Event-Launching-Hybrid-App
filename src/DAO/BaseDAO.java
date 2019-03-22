package DAO;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class BaseDAO {
	public DataSource dataSource;
	public BaseDAO() {
		// TODO Auto-generated constructor stub
		
		try {
			Context initContext = new InitialContext();
			dataSource = (DataSource)initContext.lookup("java:/comp/env/jdbc/For_Activity");
			
		} catch (Exception e) {
			System.out.println(e);
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() throws SQLException{
		return dataSource.getConnection();
	}
}

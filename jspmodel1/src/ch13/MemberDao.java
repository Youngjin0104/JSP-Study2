package ch13;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class MemberDao {

	private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final String JDB_URL = "jdbc:mysql://localhost:3306/shopdb?severTimezone=Asia/Seoul&characterEncoding=UTF-8";
	private final String USER = "root";
	private final String PASS = "asd1234";
	
	public MemberDao() {
		
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Vector<MemberBean> getMemberBeans() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<MemberBean> vlist = new Vector<MemberBean>();
		try {
			con = DriverManager.getConnection(JDB_URL, USER, PASS);
			stmt = con.createStatement();
			rs = stmt.executeQuery("Select * From membertbl");
			
			while(rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setMemberID(rs.getString("memberID"));
				bean.setMemberName(rs.getString("memberName"));
				bean.setMemberAddress(rs.getString("memberAddress"));
				
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return vlist;
		
	}
	
}

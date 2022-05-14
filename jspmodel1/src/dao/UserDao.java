package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import beans.UserBean;

public class UserDao {

	private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final String JDB_URL = "jdbc:mysql://localhost:3306/blog?severTimezone=Asia/Seoul&characterEncoding=UTF-8";
	private final String USER = "root";
	private final String PASS = "asd1234";

	public UserDao() {

		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Vector<UserBean> getUserBeans() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		Vector<UserBean> vlist = new Vector<UserBean>();
		try {
			con = DriverManager.getConnection(JDB_URL, USER, PASS);
			stmt = con.createStatement();
			rs = stmt.executeQuery("Select * From user");

			while (rs.next()) {
				UserBean bean = new UserBean();
				bean.setId(rs.getString("id"));
				bean.setUsername(rs.getString("username"));
				bean.setEmail(rs.getString("email"));
				bean.setCreateDate(rs.getString("createDate"));

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

	// 로그인 기능
	public UserBean login(String username, String password) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			String sql = "select id, username, email, createDate "
					+ "from user where username = ? and password = ?"; 
			con = DriverManager.getConnection(JDB_URL, USER, PASS);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			
			rs = pstmt.executeQuery();
		
			if(rs.next()) {
				UserBean dto = new UserBean();
				dto.setId(rs.getString("id"));
				dto.setUsername(rs.getString("username"));
				dto.setEmail(rs.getString("email"));
				dto.setCreateDate(rs.getString("createDate"));
				
				return dto;
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

			if (pstmt != null) {
				try {
					pstmt.close();
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
		return null;
	}

	// 회원가입 기능
	public int save(UserBean dto) {
		Connection con = null;
//			Statement stmt = null; // --> 변경(정적인 쿼리문을 만들어주는 녀석) 기본;;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DriverManager.getConnection(JDB_URL, USER, PASS);
			pstmt = con.prepareStatement(("INSert INTO user(username,password,email,userRole,createDate)"
					+ "VALUES(?, ?, ?, 'USER', now())"));
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getEmail());

			// 정상 등록되면 1 리턴된다.
			int result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			return result;

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

			if (pstmt != null) {
				try {
					pstmt.close();
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
		return -1;
	}

}

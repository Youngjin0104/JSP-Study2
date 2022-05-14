package com.company.aboutking.test.copy2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverTest {

	public static void main(String[] args) {
		
		Connection connection;
		String url =
				"jdbc:mysql://localhost:3306/shopdb?severTimezone=Asia/Seoul&characterEncoding=UTF-8";
		String userId = "root";
		String pwd = "asd1234";
		
		try {
			// 동적 바인딩을 위한 자바 기술
			// 컴파일 시점에 문자열로 저장을 해 두고 런타임 시점에 객체로 만드는 기술
			// MySql JDBC Driver 이름입니다.(오라클, MSSQL)
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url, userId, pwd);
			System.out.println("Success");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

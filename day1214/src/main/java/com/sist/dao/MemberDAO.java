package com.sist.dao;

import java.sql.*;

public class MemberDAO {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@192.168.219.102:1521:XE";
	String user="c##madang";
	String password="madang";
	
	public boolean isMember(String id, String pwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		boolean result=false;
		String sql = "select id, pwd from member where id=? and pwd=?";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			rs=pstmt.executeQuery();

			if(rs.next()) {
				result=true;
			}
			
		}catch(Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}finally {
			try {
				if(conn!=null)
					conn.close();
				if(pstmt!=null)
					pstmt.close();
			}catch(Exception ex) {
				
			}
		}
		return result;
	}

}

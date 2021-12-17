package com.sist.dao;

import java.sql.*;

import com.sist.vo.Goods;

public class GoodsDAO {
	
	public int insertGoods(Goods g) {
		int re=-1;
		String sql = "insert into goods values(?,?,?,?,null)";
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@192.168.219.102:1521:XE";
		String user="c##madang";
		String pwd="madang";

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,pwd);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, g.getNo());
			pstmt.setString(2, g.getName());
			pstmt.setInt(3, g.getPrice());
			pstmt.setInt(4, g.getQty());
			
			re =pstmt.executeUpdate();

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
		return re;
	}

}

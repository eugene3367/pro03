package kr.go.damyang.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import kr.go.damyang.model.Maria;

public class TestDAO {	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	

	public TestDTO testDataOne(String string) {
		TestDTO dto = new TestDTO();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.TEST_SELECT_ONE);
			pstmt.setString(1, );
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setName(rs.getString("name"));
				dto.setPoint(rs.getInt("point"));
			}
		} catch(Exception e){
			System.out.println("잘못된 연산");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return dto;
	}
	


}

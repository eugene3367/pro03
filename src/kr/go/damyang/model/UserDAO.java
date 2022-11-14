package kr.go.damyang.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.damyang.dto.NoticeDTO;

public class UserDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String key ="%02x";	
	
	public int idCheckPro(String id){	//중복 아이디 체크 / 회원가입시 가입전 체크
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//글 추가
			pstmt = con.prepareStatement(Maria.USER_ID_CHECK);
			pstmt.setString(1, id);
			cnt = pstmt.executeQuery();
			if(rs.next()){ cnt = cnt+1;} else {cnt = 0;}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);;
		}
		return cnt;
	}
	
	//회원가입
	public int addUser(UserDTO user){
		int cnt = 0;
		try{
			con = Maria.getConnection();
			//글 추가
			pstmt = con.prepareStatement(Maria.USER_JOIN);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getBirth());
			pstmt.setString(5, user.getEmail());
			pstmt.setString(6, user.getTel());
			pstmt.setString(7, user.getAddr());
			cnt = pstmt.executeUpdate();			
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(pstmt, con);;
		}
		return cnt;
	}
	
	//로그인
	public int userLogin(String id, String pw){
		int cnt = 0;
		String qpw = "";
		
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.VISIT_UPDATE);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				qpw = AES256.decryptAES256(rs.getString("pw"), key);
				if(pw.equals(qpw)){
					cnt=1;
				}else{
					cnt=0;
				}				
			}else{
				cnt = 9;
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}
	
	//회원 정보 보기
	public UserDTO userInfo(String id){
		UserDOT dto = new UserDTO();
		try{
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.USER_ID_CHECK);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setId(rs.getString("id"));
				dto.setPw(AES256.decryptAES256(rs.getString("pw"), key));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setTel(rs.getString("tel"));
				dto.setGrade(rs.getString("grade"));
				dto.setAddr(rs.getString("addr"));
				dto.setPoint(rs.getInt("point"));
				dto.setVisted(rs.getInt("visted"));
				dto.setBirth(rs.getString("birth"));
				dto.setRegdate(rs.getString("regdate"));
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return dto;
	}
	
	//회원정보 변경
	public int updateUser(UserDTO user){
		int cnt = 0;
		try{
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.USER_UPDATE)
			
		}
	}
	
	//회원목록
	
	//

}

package kr.go.damyang.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UserLoginCtrl")
public class UserLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
	private final static String USER = "root";
	private final static String PASS = "a1234";
	String sql = "";
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		try {
			//데이터베이스 연결
			Class.forName(DRIVER);
			sql = "select * from user where userid=? and userpw=?";
			Connection con = DriverManager.getConnection(URL, USER, PASS);			
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = null;
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			rs = pstmt.executeQuery();
			
			if(rs.next()){				
				//세션을 발생시키고, 인덱스로 이동
				session.setAttribute("userId", rs.getString("userId"));
				session.setAttribute("userPw", rs.getString("userPw"));
				session.setAttribute("userName", rs.getString("userName"));
				session.setAttribute("address", rs.getString("address"));
				session.setAttribute("tel", rs.getString("tel"));				
				session.setAttribute("regdate", rs.getString("regdate"));
				response.sendRedirect("index.jsp");
			} else {
				//로그인 페이지로 이동
				response.sendRedirect("./user/login.jsp");
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

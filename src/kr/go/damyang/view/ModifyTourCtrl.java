package kr.go.damyang.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.damyang.dto.PicDTO;
import kr.go.damyang.dto.TourDTO;
import kr.go.damyang.model.TourDAO;

@WebServlet("/ModifyTourCtrl.do")
public class ModifyTourCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//UTF-8 초기화
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		TourDAO dao = new TourDAO();
		TourDTO dto = dao.getTour(no);
		
		ArrayList<PicDTO> picList = dao.JSONPicList(dto.getTourno());
		
		//dao로 부터 받은 데이터를 view에 디스패치함
		request.setAttribute("dto", dto);
		request.setAttribute("list", picList);
		
		RequestDispatcher view = request.getRequestDispatcher("./tour/tourModify.jsp");
		view.forward(request, response);
	}

}

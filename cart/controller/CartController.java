package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import dao.DBconn;
import dao.OrderProductDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CartController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	static OrderProductDAO opDAO ;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
		opDAO = new OrderProductDAO();		
		String RequestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		res.setContentType("text/html; charset=utf-8");
		req.setCharacterEncoding("utf-8");
		
		if (command.equals("/CartListAction.do")) {//장바구니 목록 보기
			requestCartList(req);
			RequestDispatcher rd = req.getRequestDispatcher("./cart/cartPage.jsp");
			rd.forward(req, res);
		} 
		}catch(SQLException sqlE) {
			
		}catch (ClassNotFoundException e) {
		
		}
		
	//	action = "artListAction.do???????????"
	}

	private void requestCartList(HttpServletRequest req) {
		// TODO Auto-generated method stub
		
	}



}

package controller;

import java.io.IOException;
import java.sql.SQLException;

import org.apache.catalina.Session;

import dao.OrderDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class OrderController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	static OrderDAO opDAO ;
	static Session session;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			opDAO = new OrderDAO();		
			String RequestURI = req.getRequestURI();
			String contextPath = req.getContextPath();
			String command = RequestURI.substring(contextPath.length());
		
			res.setContentType("text/html; charset=utf-8");
			req.setCharacterEncoding("utf-8");
		
			if (command.equals("/addOrder.orderDo")) {
				addOrder(req, opDAO);
				RequestDispatcher rd = req.getRequestDispatcher("./cart/cartPage.jsp");
				rd.forward(req, res);
			}else if (command.equals("/readOrder.orderDo")) {
				readOrder(req, res);
				RequestDispatcher rd = req.getRequestDispatcher("./cart/cartPage.jsp");
				rd.forward(req, res);
			}else if (command.equals("/searchOrder.orderDo")) {
				searchOrder(req, res);
				RequestDispatcher rd = req.getRequestDispatcher("./cart/cartPage.jsp");
				rd.forward(req, res);
			} else if (command.equals("/changeOrder.orderDo")) {
				changeOrder(req, res);
				RequestDispatcher rd = req.getRequestDispatcher("./cart/cartPage.jsp");
				rd.forward(req, res);
			}else if (command.equals("/cancelOrder.orderDo")) {
			cancelOrder(req, res);
				RequestDispatcher rd = req.getRequestDispatcher("./cart/cartPage.jsp");
				rd.forward(req, res);
			}
		}catch(SQLException sqlE) {
			System.out.println("check sql Exception in CartCotroller class");
			sqlE.printStackTrace();
			System.exit(0);
		}catch (ClassNotFoundException classE) {
			System.out.println("check classNotFound Exception in CartCotroller class");
			classE.printStackTrace();
			System.exit(0);
		}
	}

	private void addOrder(HttpServletRequest req, OrderDAO opDAO) throws SQLException {
		String productId = req.getParameter("id");
		int quantity = Integer.parseInt(req.getParameter("quanitity"));
		session = (Session) req.getSession();
		session.getClass();
		opDAO.addOrder(null);
		
	}
	
	private void readOrder(HttpServletRequest req, HttpServletResponse res) {
		
		
	}
	
	private void searchOrder(HttpServletRequest req, HttpServletResponse res) {
		
		
	}

	private void changeOrder(HttpServletRequest req, HttpServletResponse res) {
	
		
	}
	
	private void cancelOrder(HttpServletRequest req, HttpServletResponse res) {
	
		
	}
}

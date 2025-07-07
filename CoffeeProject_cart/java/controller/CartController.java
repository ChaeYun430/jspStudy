package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import dao.CoffeeDAO;
import dto.CartDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CartController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private CartDTO cartDTO;
	private ArrayList<CartDTO> listCartDTOs = new ArrayList<CartDTO>(); //버퍼?? //임시로 객체 만들어 놓음
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			String RequestURI = req.getRequestURI();
			String contextPath = req.getContextPath();
			String command = RequestURI.substring(contextPath.length());
		
			res.setContentType("text/html; charset=utf-8");
			req.setCharacterEncoding("utf-8");
			
			if (command.equals("/select.cartDo")) {
				select(req);
				RequestDispatcher rd = req.getRequestDispatcher("./product/coffee.jsp");
				rd.forward(req, res);
			}else if (command.equals("/countUp.cartDo")) {
				countUp(req);
				String id = req.getParameter("id");
				RequestDispatcher rd = req.getRequestDispatcher("./product/coffee.jsp?id="+ id);
				rd.forward(req, res);
			}else if (command.equals("/countDown.cartDo")) {
				countDown(req);
				String id = req.getParameter("id");
				RequestDispatcher rd = req.getRequestDispatcher("./product/coffee.jsp?id="+ id);
				rd.forward(req, res);
			}else if (command.equals("/addCart.cartDo")) {
				addCart(req);
				String button = req.getParameter("button");
				switch (button) {
				case "cartPage":
					RequestDispatcher rd = req.getRequestDispatcher("./cart/cartPage.jsp");
					rd.forward(req, res);
					break;
				case "coffees":
					rd = req.getRequestDispatcher("./product/coffees.jsp");
					rd.forward(req, res);
					break;
				default:
				}
			}else if (command.equals("/updateQuantity.cartDo")) {
				updateQuantity(req);
				RequestDispatcher rd = req.getRequestDispatcher("./cart/cartPage.jsp");
				rd.forward(req, res);
			}else if (command.equals("/deleteCart.cartDo")) {
				deleteCart(req);
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

	private void select(HttpServletRequest req) throws ClassNotFoundException, SQLException {
		cartDTO = new CartDTO();
		CoffeeDAO coffeeDAO = CoffeeDAO.getInstance();
		cartDTO.setProduct(coffeeDAO.getCoffee(req.getParameter("id")));
		req.setAttribute("cartDTO", cartDTO);
	}

	private void countUp(HttpServletRequest req) {
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		cartDTO.setQuantity(quantity+1);
		req.setAttribute("cartDTO", cartDTO);
	}

	private void countDown(HttpServletRequest req) {
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		cartDTO.setQuantity(quantity-1);
		req.setAttribute("cartDTO", cartDTO);
	}
	
	private void addCart(HttpServletRequest req) throws ClassNotFoundException, SQLException {
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		String productId = req.getParameter("productId");
		cartDTO.setProduct(CoffeeDAO.getInstance().getCoffee(productId));
		cartDTO.setQuantity(quantity);
		cartDTO.setTotalPrice(cartDTO.getQuantity() * cartDTO.getProduct().getUnitPrice());
		//세션 인식하고 버퍼 초기화 필요
		boolean check = listCartDTOs.add(cartDTO);
		if (check) {
			System.out.println("장바구니 버퍼에 추가 완료");
			req.setAttribute("listCartDTOs", listCartDTOs);
		}else {
			System.out.println("중간 오류 점검 : addCart of CartController class");
		}
	}
	
	private void updateQuantity(HttpServletRequest req) {
		String productId = req.getParameter("productId");
		for (int i = 0; i < listCartDTOs.size(); i++) {
			if (listCartDTOs.get(i).getProduct().getId().equals(productId)) {
				cartDTO=listCartDTOs.get(i);
				break;
			}
		}
		//더 생각하기 가능성 고려하기
		String upDown = req.getParameter("upDown");
		switch (upDown) {
		case "up":
			cartDTO.setQuantity(cartDTO.getQuantity()+1);
			cartDTO.setTotalPrice(cartDTO.getProduct().getUnitPrice()*cartDTO.getQuantity());
			req.setAttribute("listCartDTOs", listCartDTOs);
			break;
		case "down":
			cartDTO.setQuantity(cartDTO.getQuantity()-1);
			cartDTO.setTotalPrice(cartDTO.getProduct().getUnitPrice()*cartDTO.getQuantity());
			req.setAttribute("listCartDTOs", listCartDTOs);
			break;
		default:
		}
	}
	
	private void deleteCart(HttpServletRequest req) {
		String productId = req.getParameter("productId");
		for (int i = 0; i < listCartDTOs.size(); i++) {
			if (listCartDTOs.get(i).getProduct().getId().equals(productId)) {
				listCartDTOs.remove(i);
				req.setAttribute("listCartDTOs", listCartDTOs);
				return;
			}
		}
		req.setAttribute("listCartDTOs", listCartDTOs);
	}

	
	
}

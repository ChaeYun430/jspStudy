package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import dto.CartDTO;
import dto.OrderDTO;

public class OrderDAO extends DBconn{
	
	Date orderDate = new Date();
	PreparedStatement pstmt = null;
	ResultSet resultSet = null;
	int result = 0;
	private CartDTO cartDTO;
	public OrderDAO() throws ClassNotFoundException, SQLException {
		super();
	}

	//addProduct
	public void addProduct(ArrayList<CartDTO> listOfCarts) throws SQLException {
		try {
			for (int i = 0; i < listOfCarts.size(); i++) {
				String sql = "INSERT INTO ORDERPRODUCT (PRODUCTID, QUANTITY, TOTALPRICE) VALUES (?, ?, ?) ";
				pstmt = conn.prepareStatement(sql);
				cartDTO = listOfCarts.get(i);
				pstmt.setString(1, cartDTO.getProduct().getId());
				pstmt.setInt(2, cartDTO.getQuantity());
				pstmt.setInt(3, cartDTO.getTotalPrice());
				result = pstmt.executeUpdate();
				if (result>0) {
					System.out.println("주문상품 추가에 성공했습니다.");
				}else {
					System.out.println("주문상품 추가에 실패했습니다.");
				}
			}
		}catch (SQLException e) {
			System.out.println("check addOrderProduct method in OrderListDAO");
			e.printStackTrace();
			System.exit(0);
		}finally {
			pstmt.close();
		}
	}
	
	//addOrder
	public void addOrder(CartDTO cartDTO) throws SQLException {
		try {
			String sql = "INSERT INTO ORDERLIST (ORDERNUM, ORDERPRODUCTNUM, MEMID, REQUEST) VALUES (?, ?, ?, ?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cartDTO.getOrderNum());
			pstmt.setInt(2, cartDTO.getOrderNum());
			pstmt.setString(3, cartDTO.getMemberDTO().getId());
			pstmt.setString(4, cartDTO.getRequest());
			result = pstmt.executeUpdate();
			if (result>0) {
				System.out.println("주문목록 추가에 성공했습니다.");
			}else {
				System.out.println("주문목록 추가에 실패했습니다.");
			}
		}catch (SQLException e) {
			System.out.println("check addOrder method in OrderListDAO");
			e.printStackTrace();
			System.exit(0);
		}finally {
			pstmt.close();
		}
	}
	
	
	
	//readOrderList
	public void readOrderList(OrderDTO olDTO) throws SQLException {
		try {
			String sql = "SELECT OL.ORDERNUM, OP.QUANTITY, OP.TOTALPRICE  M.ADDRESS, M.NAME, M.CARDID  FROM ORDERLIST OL, ORDERPRODUCT OP, MEMBER M WHERE ORDERPRODUCTNUM = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			resultSet = pstmt.executeQuery();
			while(resultSet.next()) {
				
			}
		}catch (SQLException e) {
			System.out.println("check readOrderList method in OrderListDAO");
			e.printStackTrace();
			System.exit(0);
		}finally {
			pstmt.close();
		}
	}
	
	//changeOrder
	public void changeOrder(OrderDTO orderDTO) throws SQLException {
		try {
			String sql = "INSERT INTO ORDERLIST (ORDERNUM, PRODUCTID, QUANTITY, TOTALPRICE) VALUES (?, ?, ?, ?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setString(2, null);
			pstmt.setInt(3, 0);
			pstmt.setInt(4, 0);
			result = pstmt.executeUpdate();
			if (result>0) {
				System.out.println("주문이 실패했습니다.");
			}else {
				System.out.println("주문이 완료되었습니다.");
			}
		}catch (SQLException e) {
			System.out.println("check addOrder method in OrderListDAO");
			e.printStackTrace();
		}finally {
			pstmt.close();
			System.exit(0);
		}
	}
	
	//cancellOrder
	public void cancelOrder(OrderDTO orderDTO) throws SQLException {
		try {
			String sql = "INSERT INTO ORDERLIST (ORDERNUM, PRODUCTID, QUANTITY, TOTALPRICE) VALUES (?, ?, ?, ?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setString(2, null);
			pstmt.setInt(3, 0);
			pstmt.setInt(4, 0);
			result = pstmt.executeUpdate();
			if (result>0) {
				System.out.println("주문이 실패했습니다.");
			}else {
				System.out.println("주문이 완료되었습니다.");
			}
		}catch (SQLException e) {
			System.out.println("check addOrder method in OrderListDAO");
			e.printStackTrace();
		}finally {
			pstmt.close();
			System.exit(0);
		}
	}
	
	public void pay(CartDTO cartDTO) throws SQLException {
		try {
			String sql = "INSERT INTO ORDERLIST (ORDERNUM, PRODUCTID, QUANTITY, TOTALPRICE) VALUES (?, ?, ?, ?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setString(2, null);
			pstmt.setInt(3, 0);
			pstmt.setInt(4, 0);
			result = pstmt.executeUpdate();
			if (result>0) {
				System.out.println("주문이 실패했습니다.");
			}else {
				System.out.println("주문이 완료되었습니다.");
			}
		}catch (SQLException e) {
			System.out.println("check addOrder method in OrderListDAO");
			e.printStackTrace();
		}finally {
			pstmt.close();
			System.exit(0);
		}
	}
	//1. 장바구니에 있던 상품 주문해서 데이터 베이스에 추가
	//2. 주문목록 보기
	//3. 상품교환??
	//4. 환불
	//5. 배송정보 연동
	
}

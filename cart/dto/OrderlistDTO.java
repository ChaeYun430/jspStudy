package dto;

import java.sql.Date;

public class OrderListDTO {
	private int orderNum ;
	private MemberDTO memberDTO;
	private OrderProductDTO OrderProduct;
	private String request;
	private Date payDate;
	
//	private String id;
//	private String password;
//	private String name;
//	private String birth;
//	private String gender;
//	private String mail;
//	private String phone;
//	private String address;
//	private Date regist_day;
//	
//	private String cardNum;
//	private String cvc;
//	private String valid;
//	private String cardPw;
	
	
//	private int orderProductNum;
//	private String productID ;
//	private int quantity;
//	private int totalPrice;
	
	
	
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public MemberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	public OrderProductDTO getOrderProduct() {
		return OrderProduct;
	}
	public void setOrderProduct(OrderProductDTO orderProduct) {
		OrderProduct = orderProduct;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	
	
	
	
	
}

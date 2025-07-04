package dto;

public class OrderProductDTO {
	
	private int orderProductNum;
	private CoffeeDTO coffeeDTO ;
	private int quantity;
	private int totalPrice;
	
	public int getOrderProductNum() {
		return orderProductNum;
	}
	public void setOrderProductNum(int orderProductNum) {
		this.orderProductNum = orderProductNum;
	}
	public CoffeeDTO getCoffeeDTO() {
		return coffeeDTO;
	}
	public void setCoffeeDTO(CoffeeDTO coffeeDTO) {
		this.coffeeDTO = coffeeDTO;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	@Override
	public String toString() {
		return "OrderProductDTO [orderProductNum=" + orderProductNum + ", coffeeDTO=" + coffeeDTO + ", quantity="
				+ quantity + ", totalPrice=" + totalPrice + "]";
	}
	
	
	
	
}

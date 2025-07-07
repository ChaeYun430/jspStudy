package dto;

public class CartDTO {
	
	private CoffeeDTO product = new CoffeeDTO();;
	private int quantity = 0;
	private int totalPrice = 0;
	
	

	public CoffeeDTO getProduct() {
		return product;
	}
	public void setProduct(CoffeeDTO product) {
		this.product = product;
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
	
	
}

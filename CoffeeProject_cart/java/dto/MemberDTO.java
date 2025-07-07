package dto;

import java.sql.Date;

public class MemberDTO {

	private String id;
	private String password;
	private String name;
	private String birth;
	private String gender;
	private String mail;
	private String phone;
	private String address;
	private Date regist_day;
	
	private String cardNum;
	private String cvc;
	private String valid;
	private String cardPw;
	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}

	public String getCvc() {
		return cvc;
	}

	public void setCvc(String cvc) {
		this.cvc = cvc;
	}

	public String getValid() {
		return valid;
	}

	public void setValid(String valid) {
		this.valid = valid;
	}

	public String getCardPw() {
		return cardPw;
	}

	public void setCardPw(String cardPw) {
		this.cardPw = cardPw;
	}

	public Date getRegist_day() {
		return regist_day;
	}

	public void setRegist_day(Date regist_day) {
		this.regist_day = regist_day;
	}
	
	
	
}

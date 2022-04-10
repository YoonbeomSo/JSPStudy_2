package member;

public class MemberDTO {
	 private String id;
	 private String pw;
	 private String confirmPw;
	 private String name;
	 private String email;
	 private String phone;
	 private String address;
	 
	 
	public MemberDTO(String id, String pw, String confirmPw, String name, String email, String phone, String address) {
		super();
		this.id = id;
		this.pw = pw;
		this.confirmPw = confirmPw;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}


	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getConfirmPw() {
		return confirmPw;
	}


	public void setConfirmPw(String confirmPw) {
		this.confirmPw = confirmPw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
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
	 
	
	
	 
	 
}
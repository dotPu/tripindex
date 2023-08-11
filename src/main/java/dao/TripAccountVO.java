package dao;

public class TripAccountVO {
	
	String id;
	String password;
	String name;
	String email;
	String address;//주소
	String gender;//성별
	String accountType;//계정타입 0:관리자, 1:사업자, 2:일반회원
	String birthday;
	
	public TripAccountVO() {
		// TODO Auto-generated constructor stub
	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public TripAccountVO(String id, String password, String name, String email, String address, String gender,
			String accountType, String birthday) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.address = address;
		this.gender = gender;
		this.accountType = accountType;
		this.birthday = birthday;
	}

	@Override
	public String toString() {
		return "TripAccountVO [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", address=" + address + ", gender=" + gender + ", accountType=" + accountType + ", birthday="
				+ birthday + "]";
	}
	
	
	

}

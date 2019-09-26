package src.com.ring.vo;

public class User {

	private int uid;
	private String uname;
	private String password;
	private String sex;
	private String address;
	private String phone;
	private String state;
	private int identity;
	private String IDnumber;
	public User() {}
	public User(int uid,String uname,String password,String sex,String address,String phone,String state,int identity,String IDnumber) {
		this.uid = uid;
		this.uname = uname;
		this.password = password;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
		this.state = state;
		this.identity = identity;
		this.IDnumber = IDnumber;
	}
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getIdentity() {
		return identity;
	}
	public void setIdentity(int identity) {
		this.identity = identity;
	}
	public String getIDnumber() {
		return IDnumber;
	}
	public void setIDnumber(String iDnumber) {
		IDnumber = iDnumber;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", password=" + password + ", sex=" + sex + ", address="
				+ address + ", phone=" + phone + ", state=" + state + ", identity=" + identity + ", IDnumber="
				+ IDnumber + "]";
	}
	
}

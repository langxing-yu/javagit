package src.com.ring.vo;

public class Shopcart {

	private int uid;
	private int gid;
	private int number;
	private String gname;
	private double price;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Shopcart [uid=" + uid + ", gid=" + gid + ", number=" + number + ", gname=" + gname + ", price=" + price + "]";
	}
}

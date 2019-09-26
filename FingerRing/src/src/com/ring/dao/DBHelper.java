package src.com.ring.dao;

import java.util.List;

import src.com.ring.vo.Goods;
import src.com.ring.vo.Shopcart;
import src.com.ring.vo.User;

public class DBHelper {

	//根据id查用户
	public User findUserById(int uid) {
		String sql = "select * from user where uid='" + uid + "'";
		List<User> users = DBUtils.findUser(sql);
		return users.size()==0?null:users.get(0);
	}
	
	// 根据name查用户
	public User findUserByName(String username) {
		String sql = "select * from user where uname='" + username + "'";
		List<User> users = DBUtils.findUser(sql);
		return users.size()==0?null:users.get(0);
	}
	
	//根据Forever系列查商品信息
	public List<Goods> findGoodsByName() {
		String sql = "select * from goods where gname like 'Forever%'";
		return DBUtils.findGoods(sql);
	}
	
	//根据my heart系列查商品信息
	public List<Goods> findGoodsByNameheart() {
		String sql = "select * from goods where gname like 'My%'";
		return DBUtils.findGoods(sql);
	}
	
	//根据I Swear系列查商品信息
	public List<Goods> findGoodsByNameSwear() {
		String sql = "select * from goods where gname like '%Swear%'";
		return DBUtils.findGoods(sql);
	}
	//根据Just系列查商品信息
	public List<Goods> findGoodsByNameJust() {
		String sql = "select * from goods where gname like 'Just%'";
		return DBUtils.findGoods(sql);
	}
	
	//根据True系列查商品信息
	public List<Goods> findGoodsByNameTrue() {
		String sql = "select * from goods where gname like 'True%'";
		return DBUtils.findGoods(sql);
	}
	
	
	// 根据phone,name查用户
	public User findUserByName(String phone,String username) {
		String sql = "select * from user where uname='" + username + "'and phone= '" + phone +"'";
		List<User> users = DBUtils.findUser(sql);
		return users.size()==0?null:users.get(0);
	}
	
	//添加User表
	public int insertUser(String phone,String username,String password) {
		String sql = "insert into user(phone,uname,password,identity) values ('" + phone + "','" + username + "','" + password + "','" + 1 + "')";
		return DBUtils.updateTable(sql);
	}
	
	// 全查goods表
	public List<Goods> findAllGoods(){
		String sql = "select * from goods";
		return DBUtils.findGoods(sql);
	}
	
	//根据ID修改商品传进来gid
	public int updategoodsById(int gid,String gname,String colour,String size,int rate,String num,String src) {
		String sql = "update goods set gname= '"+gname+"', colour= '"+colour+"', size= '"+size+"', rate= "+rate+", num= '"+num+"', src= '"+src+"' where gid= "+gid+";";
		System.out.println(sql);
		return DBUtils.updateTable(sql);
	}
	
	
	//根据id删除一个商品
	public int deletegoodsById(int gid) {
		String sql = "delete from goods where gid = " + gid;
		int i = DBUtils.updateTable(sql);
		return i;
	}
	
	// 根据身份证号IDnumber查
	public User findUserByIDnum(String IDnumber) {
		String sql = "select * from user where IDnumber = " + IDnumber;
		List<User> user = DBUtils.findUser(sql);
		return user.size()==0?null:user.get(0);
	}
	// 根据id查goods
	public Goods findGoodsById(int gid) {
		String sql = "select * from goods where gid=" + gid;
		List<Goods> good = DBUtils.findGoods(sql);
		return good.size()==0?null:good.get(0);
	}
	
	// 根据uid查询shopcart表
		public boolean findShopcartById(int uid) {
			String sql = "select * from shopcart where uid=" + uid;
			return DBUtils.findShopcartById(sql);
		}
	
	//如果表中没有id则给shopcart表添加一条
	public int insertShopcart1(int uid,int gid) {
		String sql = "insert into shopcart(uid,gid,number) values (" + uid +"," + gid + "," + 1+ ");"; 
		System.out.println(sql);
		return DBUtils.updateTable(sql);
	}

	// 覆盖shopcart表
	public int updateShopcart(int uid,int gid) {
		String sql = "update shopcart set gid = " + gid + " where uid = " + uid;
		return DBUtils.updateTable(sql);
	}
	

	
	// 根据uid和gid查询shopcart表
	public boolean findShopcartById(int uid,int gid) {
		String sql = "select * from shopcart where uid=" + uid + " and gid=" + gid;
		return DBUtils.findShopcartById(sql);
	}
	
	// 购物车信息查询  goods,shopcart两表联查
	public List<Shopcart> findShopcart(int uid){
		String sql = "select g.*,s.num from goods g,shopcart s where g.gid=s.gid and s.uid=" + uid;
		return DBUtils.findShopcart(sql);
	}
	
	
	public static void main(String[] args) {
		DBHelper helper = new DBHelper();
		List<Goods> goods = helper.findAllGoods();
		for(Goods good: goods) {
			System.out.println(good);
		}
	}
}


package src.com.ring.service;

import java.util.List;

import src.com.ring.dao.DBHelper;
import src.com.ring.vo.Goods;
import src.com.ring.vo.Shopcart;
import src.com.ring.vo.User;



public class GoodsService {

	DBHelper helper = new DBHelper();
	
	// 判断账号密码的正确性
	public boolean isCorrectUser(String username,String password) {
		User user = findUserByName(username);
		if(null==user || !user.getPassword().equals(password)) {
			System.out.println("用户名或者密码错误");
			return false;
		}
		return true;
	}
	
	//根据id查用户
	public User findUserById(int uid) {
		return helper.findUserById(uid);
	}
	
	// 根据name查用户
	public User findUserByName(String username) {
		return helper.findUserByName(username);
	}
	
	//根据Forever系列查询商品信息
	public List<Goods> findGoodsByName() {
		return helper.findGoodsByName();
	}
	
	//根据my heart查询商品信息
	public List<Goods> findGoodsByNameheart() {
		return helper.findGoodsByNameheart();
	}
	
	//根据I Swear系列查商品信息
	public List<Goods> findGoodsByNameSwear() {
		return helper.findGoodsByNameSwear();
	}
	
	//根据Just系列查商品信息
	public List<Goods> findGoodsByNameJust() {
		return helper.findGoodsByNameJust();
	}
	
	//根据True系列查商品信息
	public List<Goods> findGoodsByNameTrue() {
		return helper.findGoodsByNameTrue();
	}
	
	// 根据name查用户
	public boolean findUserByName(String phone,String username,String password) {
		 if(helper.findUserByName(phone,username)==null) {
			 helper.insertUser(phone, username, password);
			 return true;
		 }
		 return false;			
	}
	
	//根据IDnumber查用户
	public User findUserByIDnum(String IDnumber) {
		return helper.findUserByIDnum(IDnumber);
	}
	
	// 判断是否是管理员账号
	public boolean isAdmin(String uname) {
		User user = findUserByName(uname);
		return (null!=user && user.getIdentity()==1)?true:false;
	}
	
	// 全查Goods表
	public List<Goods> findAllGoods(){
		return helper.findAllGoods();
	}
	
	//根据gid修改商品
	public int updategoodsById(int gid,String gname,String colour,String size,int rate,String num,String src) {
		return helper.updategoodsById(gid, gname, colour, size, rate, num, src);
	}
	
	//根据id删除一个商品
	public int deletegoodsById(int gid) {
		return helper.deletegoodsById(gid);
	}
	
	// 根据id查Goods
	public Goods findGoodsById(int gid) {
		return helper.findGoodsById(gid);
	}
	
	// 更新shopcart表
	public int updateShopcart(int uid,int gid) {
		int updateRows = 0;
		if(helper.findShopcartById(uid)) {
			//购物车有这个id
			updateRows = helper.updateShopcart(uid, gid);
		}else {
			//没有这个id
			updateRows = helper.insertShopcart1(uid,gid);
		}
		return updateRows;
	}
	
	// 修改shopcart表
	public int updateShopcart1(int uid,int gid) {
		return helper.updateShopcart(uid, gid);
	}
	
	// 购物车信息查询  book,shopcart两表联查
	public List<Shopcart> findShopcart(int uid){
		return helper.findShopcart(uid);
	}
}



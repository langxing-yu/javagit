package src.com.ring.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import src.com.ring.vo.Goods;
import src.com.ring.vo.Shopcart;
import src.com.ring.vo.User;


public class DBUtils {

	// 获取数据库连接
	public static Connection getConn() {
		try {
			Class.forName(DBInfo.JDBC_DRIVER);
			Connection conn = DriverManager.getConnection(DBInfo.JDBC_URL, DBInfo.JDBC_USERNAME, DBInfo.JDBC_PASSWORD);
			return conn;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args) {
		System.out.println(DBUtils.getConn());
	}
	// 关流
	public static void close(Connection conn,PreparedStatement ps,ResultSet rs) {
		try {
			if(null != rs) {
				rs.close();
			}
			if(null != ps) {
				ps.close();
			}
			if(null != conn && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static ResultSet getResultSet(String sql) {
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtils.getConn();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	// 查询user表
	public static List<User> findUser(String sql) {
		ResultSet rs = null;
		List<User> users = new ArrayList<User>();
		try {
			rs = getResultSet(sql);
			while(rs.next()) {
				// 创建User对象
				User user = new User();
				user.setUid(rs.getInt("uid"));
				user.setUname(rs.getString("uname"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));;
				user.setState(rs.getString("state"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(null, null, rs);
		}
		return users;
	}
	
	// 查询goods表
	public static List<Goods> findGoods(String sql) {
		ResultSet rs = null;
		List<Goods> goods = new ArrayList<Goods>();
		try {
			rs = getResultSet(sql);
			while(rs.next()) {
				Goods good = new Goods();
				good.setGid(rs.getInt("gid"));
				good.setGname(rs.getString("gname"));
				good.setColour(rs.getString("colour"));
				good.setSize(rs.getString("size"));
				good.setRate(rs.getInt("rate"));
				good.setSales(rs.getInt("sales"));
				good.setNum(rs.getString("num"));
				good.setSrc(rs.getString("src"));
				
				goods.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(null, null, rs);
		}
		return goods;
	}
	
	// goods表和shopcart表两表联查
	public static List<Shopcart> findShopcart(String sql) {
		ResultSet rs = null;
		List<Shopcart> shopcarts = new ArrayList<Shopcart>();
		try {
			rs = getResultSet(sql);
			while(rs.next()) {
				Shopcart shopcart = new Shopcart();
				shopcart.setGid(rs.getInt("gid"));
				shopcart.setGname(rs.getString("gname"));
				shopcart.setNumber(rs.getInt("number"));
				shopcart.setPrice(rs.getDouble("price"));
				
				shopcarts.add(shopcart);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(null, null, rs);
		}
		return shopcarts;
	}
	
	// 根据uid和gid查询shopcart表
	public static boolean findShopcartById(String sql) {
		boolean result = false;
		ResultSet rs = null;
		try {
			rs = getResultSet(sql);
			result = rs.next();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(null, null, rs);
		}
		return result;
	}
	
	// 可以修改所有表
	public static int updateTable(String sql) {
		int updateRows = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtils.getConn();
			ps = conn.prepareStatement(sql);
			System.out.println(sql);
			updateRows = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn, ps, null);
		}
		return updateRows;
	}
}





package src.com.ring.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.ring.service.GoodsService;
import src.com.ring.vo.User;

public class UpdateShopcartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateShopcartServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("*******UpdateShopcartServlet**********");
		// 获取uid
		HttpSession session = request.getSession();
		String gidstr = request.getParameter("gid");
		System.out.println(gidstr);
		int gidg = Integer.parseInt(gidstr);
		System.out.println(gidg);
		int gid = 0;
		Object obj = session.getAttribute("USER");
		System.out.println(obj);
		if(null == obj) { // 表示未登录
			response.sendRedirect("login.jsp?gid="+gidg+"");
			return;
		}
		User user = (User)obj;
		int uid = user.getUid();
		if(null==gidstr || gidstr.equals("")) {
			response.sendRedirect("login.jsp?gid="+gidg+"");
			return;
		}
		gid = Integer.parseInt(gidstr);
		System.out.println("gggg"+gid);
		// 调用service方法修改shopcart表
		GoodsService gs = new GoodsService();
		int fl = gs.updateShopcart(uid, gid);
		System.out.println("返回boolean" + fl);
		// 跳向购物车表
		response.sendRedirect("cart.jsp?gid=" + gid);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}




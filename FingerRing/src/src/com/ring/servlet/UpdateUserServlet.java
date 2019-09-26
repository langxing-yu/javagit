package src.com.ring.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import src.com.ring.service.GoodsService;

public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateUserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("*******UpdateUserServlet**********");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		GoodsService gs = new GoodsService();
		if(gs.findUserByName(phone, username, password)) {
			//跳转
			out.println("<script>alert('恭喜您注册成功，成为我们的vip用户！！！');location.href='login.jsp';</script>");
		}
		out.println("<script>alert('不好意思，已有此用户了，请重新注册！！！');location.href='reg.jsp';</script>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

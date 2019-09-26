package src.com.ring.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.ring.service.GoodsService;
import src.com.ring.vo.User;

	public class RegServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	          
	    public RegServlet() {
	        super();
	    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("******RegServlet*******");
			// 设置编码
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			// 获取out对象
			PrintWriter out = response.getWriter();
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String rem = request.getParameter("rem");
			
			System.out.println("用户名:" + username);
			System.out.println("记住密码:" + rem);
			
			GoodsService us = new GoodsService();
			if(us.isCorrectUser(username,password)) {
				// 正确的用户
				// 1. 在session存储用户对象
				User user = us.findUserByName(username);
				HttpSession session = request.getSession();
				// 存储
				session.setAttribute("USER", user);
				System.out.println("LoginServlet:" + session.getId());
				// 2. 记住密码的处理
				Cookie ckName = null;
				Cookie ckPass = null;
				if(null != rem) { // 勾选了记住密码框
					// 创建Cookie对象
					ckName = new Cookie("USERNAME", URLEncoder.encode(username,"UTF-8"));
					ckPass = new Cookie("PASSWORD", password);
				}else {
					// 未选中记住密码框
					ckName = new Cookie("USERNAME", "");
					ckPass = new Cookie("PASSWORD", "");
				}
				// 设置有效时间
				ckName.setMaxAge(30*60*60*24);
				ckPass.setMaxAge(30*60*60*24);
				// 将Cookie写入客户端硬盘
				response.addCookie(ckName);
				response.addCookie(ckPass);
				
				// 3. 跳转
				out.println("<script>alert('登录成功！！！');location.href='index.jsp';</script>");
			}else {
				// 不正确的用户，跳回login.jsp继续登录
				out.println("<script>alert('登录失败！！！');location.href='login.jsp';</script>");
			}
			
		}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}

package src.com.ring.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.ring.service.GoodsService;

@WebServlet("/UpdateGoodsServlet")
public class UpdateGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateGoodsServlet() {
		super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("************UpdateGoodsServlet***************");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String gidstr = request.getParameter("gid");
		if(gidstr=="" || gidstr==null) {
			return;
		}
		int gid = Integer.parseInt(gidstr);
		String gname = request.getParameter("gname");
		String colour = request.getParameter("colour");
		String size = request.getParameter("size");
		
		String ratestr = request.getParameter("rate");
		int rate = Integer.parseInt(ratestr);
		
		String num = request.getParameter("num");
		String src = request.getParameter("src");
		
		GoodsService gs = new GoodsService();
		if(gs.updategoodsById(gid, gname, colour, size, rate, num, src)==1) {
			//跳转
			out.println("<script>alert('修改成功！！！');location.href='Administrator.jsp';</script>");
		}
		out.println("<script>alert('修改失败！！！');location.href='controller.jsp?gid="+gid+"';</script>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

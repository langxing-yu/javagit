package src.com.ring.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.ring.service.GoodsService;

@WebServlet("/DeleteGoodsServlet")
public class DeleteGoodsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    public DeleteGoodsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("***********DeleteGoodsServlet************");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String pageNumstr = request.getParameter("pageNum");
		String gidstr = request.getParameter("gid");
		int gid = Integer.parseInt(gidstr);
		int pageNum = Integer.parseInt(pageNumstr);
		System.out.println(pageNum);
		GoodsService gs = new GoodsService();
		if(gs.deletegoodsById(gid)==0) {
			out.println("<script>alert('删除失败！！！');location.href='Administrator.jsp?pageNum="+pageNum+"';</script>");
		}else {
			out.println("<script>alert('删除成功！！！');location.href='Administrator.jsp?pageNum="+pageNum+"';</script>");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

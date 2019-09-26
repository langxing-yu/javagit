<%@page import="src.com.ring.vo.User"%>
<%@page import="src.com.ring.service.GoodsService"%>
<%@page import="src.com.ring.vo.Goods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
 <head></head>
 <body>
  
  <link href="css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" /> 
  
  <script src="js/jquery.js" type="text/javascript"></script> 
  <script src="js/shoppcart.js" type="text/javascript"></script> 
  <title>购物车</title> 
  <iframe src="javascript:false;" style="display: none;"></iframe> 
  <form id="aspnetForm" action="/nCart/Cart.aspx" method="post" name="aspnetForm"> 
  <!--/*技术支持，小庄602842076     验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/--> 
   <!--全部背景--> 
   <div class="all-thing"> 
    <!--中间内容--> 
    <div class="tcmain"> 
     <!--头部--> 
     <div class="shop_top"> 
      <div class="shopt_left fl"> 
       <a title="Darry Ring" href="index.jsp"> <img width="186" height="42" src="images/dr.png" /> </a>
       <span>求婚钻戒领导品牌</span> 
      </div> 
      <div class="shopt_right fr"> 
       <%
			System.out.println("******************");
      		// 获取flag
			String flag = request.getParameter("flag");
			if(null != flag && flag.equals("exit")){ // 点击退出
				session.invalidate();
				session = request.getSession(true);
				// 仅仅移除登录时存储的user对象
				// session.removeAttribute("USER");
			}
			// 获取session中存的user对象
			Object obj = session.getAttribute("USER");
				if(null == obj){ // 未登录
		%>
				 	<li><a rel="nofollow" href="login.jsp">登录</a><em>|</em></li> 
       				<li><a rel="nofollow" href="reg.jsp">注册</a></li> 
       				<li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="cart.jsp">购物车</a><i>(0)</i></li> 
		<%
				}else{ // 已经登录
					User user = (User)obj;
		%>
					<span id="ctl00_ltlUname">你好！<%=user.getUname() %></span>
					<a class="my_dr" href="member_index.jsp">我的DR</a> 
					<a href="index.jsp?flag=exit">退出</a>
					<a class="help_dr" href="help.jsp">帮助中心</a> 
		<%
				}
		%> 
		
		<%
			String gidstr = request.getParameter("gid");
			 if(null == gidstr || gidstr.equals("")){
				 out.println("<script>location.href='login.jsp';</script>");
				 return;
			} 
			int gid = Integer.parseInt(gidstr);
			GoodsService service = new GoodsService();
			Goods good = service.findGoodsById(gid);
		%>
      </div> 
     </div> 
     <!--头部end--> 
     <!--导航条--> 
     <div class="shop_nav" id="ctl00_showNav"></div> 
     <!--导航条end--> 
  
     <script type="text/javascript">
    function deleteCart(cid) {
        if (confirm("确认删除？")) {
            $.get("/nAPI/Cart.aspx?action=delete&cid=" + cid, function () {
                window.location.reload();
            });
        }
    }

    function clearCart() {
        if (confirm("确认清除？")) {
            $.get("/nAPI/Cart.aspx?action=clear", function () {
                window.location.reload();
            });
        }
    }
    function toPay() {
        var nu = '1';
        
        
        window.location href = "cart_agreement.jsp";
                
        
       
    }
</script> 

     <!--内容--> 
     <div class="shop_cort"> 
      <!--左边--> 
      <div class="shop_cort-left fl"> 
       <h3>查看我的购物车</h3> 
       <!--购物车--> 
       <table cellspacing="0" cellpadding="0" border="0" class="shop_tabble"> 
        <tbody>
         <tr class="nav_tr"> 
          <td style="width:240px" class="sp_td">商品</td> 
          <td style="width:100px" class="cz_td">材质</td> 
          <td style="width:100px" class="sc_td">手寸/尺寸</td> 
          <td style="width:100px" class="kz_td">刻字</td> 
          <td class="gm_td">购买价</td> 
         </tr> 
         <tr class="cp_tr"> 
          <td class="sp_td"> <a href="/darry_ring/87.jsp" class="jx_shop"> <img width="85" height="85" src="<%=good.getSrc() %>" /> <span><%=good.getGname() %></span></a> </td> 
          <td class="cz_td">18K白金</td> 
          <td class="sc_td">7</td> 
          <td class="kz_td">素材火♥</td> 
          <td style="font-family:微软雅黑" class="gm_td">￥<%=good.getRate() %></td> 
         </tr> 
        </tbody>
       </table> 
       <!--购物车end--> 
       <!--结算--> 
       <div class="shop_js"> 
       	如需更改商品请直接点击重新选购即可→
        <a class="jx_shop" href="lists.jsp">重新选购</a> 
         <span> </span>
        <span>你购买了<i>1</i>件商品</span> 
        <span>总计：<i style="font-family:微软雅黑" class="fw_bold">￥<%=good.getRate() %></i></span> 
        <a href="cart_agreement.jsp?gid=<%=good.getGid() %>"><span onClick="toPay();" class="end_bt"><em>立即结算</em></span> </a>
       </div> 
       <!--结算end--> 
      </div> 
      <!--左边end--> 
      <!--右边--> 
      <!--右边--> 
      <div class="shop_cort-right fr"> 
       <div class="shop_right-nr"> 
        <h3>购物帮助指南</h3> 
        <div class="shop_right-zx line_bottom"> 
         <p class="shop_lx">24小时在线客服</p> 
         <p class="shop_tel">400-01-13520</p> 
        </div> 
        <div class="shop_right-zf line_bottom"> 
         <h4>支付安全保障</h4> 
         <p>安全支付系统采用SSL加密。</p> 
         <ul class="shop_right-ul"> 
          <li class="shop_cor-yl"></li> 
          <li class="shop_cor-cft"></li> 
          <li class="shop_cor-zf"></li> 
         </ul> 
        </div> 
        <div class="shop_right-ps"> 
         <h4>全球配送</h4> 
         <p class="shop_kd">支持全球配送,店铺取货</p> 
         <p class="shop_bj">全程保价 无风险</p> 
        </div> 
       </div> 
      </div> 
      <!--右边end--> 
      <!--右边end--> 
     </div> 
     <!--底部--> 
     <div class="cmain shop_foot"> 
      <p>Copyright &copy; 2006-2015 www.darryring.com 戴瑞珠宝 All Rights Reserved. 粤ICP备11012085号</p> 
      <p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p> 
      <div class="shop_foot-img"> 
       <img src="images/db.jpg" /> 
      </div> 
     </div> 
     <!--底部end--> 
    </div> 
    <!--全部背景end--> 
   </div> 
   <script type="text/javascript">
        function logout() {
            if (window.confirm('确定退出吗？')) {
                $.get("/nAPI/QuitExit.ashx", function (data) {
                    window.location.href = "/";
                });
            }
        }
</script> 
  </form> 
 
 </body>
</html>
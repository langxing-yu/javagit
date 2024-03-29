﻿<%@page import="src.com.ring.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="src.com.ring.vo.Goods"%>
<%@page import="src.com.ring.service.GoodsService"%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
 <head></head>
 <body>
 <link href="css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" /> 

  <script src="js/jquery.js" type="text/javascript"></script> 
  <script src="js/shoppcart.js" type="text/javascript"></script> 
  <title>购物车 - 真爱协议</title> 

<!--/*技术支持，小庄602842076     验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/-->
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
  <form id="aspnetForm" action="cart_order.jsp?gid=<%=good.getGid() %>" method="post" name="aspnetForm"> 
  
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
			User user = null;
			if(null == obj){ // 未登录
		%>
		 <li><a rel="nofollow" href="login.jsp">登录</a><em>|</em></li> 
        <li><a rel="nofollow" href="reg.jsp">注册</a></li> 
        <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="cart.jsp">购物车</a><i>(0)</i></li> 
		<%
			}else{ // 已经登录
				user = (User)obj;
		%>
		<span id="ctl00_ltlUname">你好！<%=user.getUname() %></span>
				<a class="my_dr" href="member_index.jsp">我的DR</a> 
				<a href="index.jsp?flag=exit">退出</a>
				<a class="help_dr" href="help.jsp">帮助中心</a> 
		<%
			}
		%> 
	
      </div> 
     </div> 
     <!--头部end--> 
     <!--导航条--> 
     <div class="shop_nav shop_nav-love" id="ctl00_showNav"></div> 
     <!--导航条end--> 
     
     <script type="text/javascript">
     

	
    function check() {
        if ($("#sirName").val() == "") {
            alert("先生姓名不能为空。");
            return false;
        }
        if ($("#ladyName").val() == "") {
            alert("女士姓名不能为空。");
            return false;
        }
        if ($("#sirCode").val() == "") {
            alert("先生身份证不能为空。");
            return false;
        }
        if (!$("#cbAgree").attr("checked")) {
            alert("必须先接受真爱协议。");
            return false;
        }
        return true;
        	
    }
    function submitAgreement() {
        var nu = '1';
        
            if (check()) {
                $("#aspnetForm").submit();
                    }
            
       
    }
    $(function () {
        $("#aspnetForm").attr("action", "cart_order.jsp?gid=<%=good.getGid() %>");
    });
   
</script> 
     <!--真爱协议中的内容--> 
     <div class="shop_agree"> 
      <div class="shop_agree-top"></div> 
      <!--边框内容--> 
      <div class="shop_agree-cort"> 
       <div class="shopagree_cort-top"> 
        <i></i> 
        <span>真爱协议</span> 
        <i></i> 
       </div> 
       <div class="shopagree_cort-center"> 
        <p>Darry Ring 真爱戒指男士凭身份证号一生仅可购买一枚，作为一生唯一真爱的最高承诺。</p> 
        <p>签署该协议则表示您已经过慎重考虑，</p> 
        <p>决定自购买之日起，将您的身份证号与Darry Ring 编码绑定，并接受亲友对购买信息的验证查询。</p> 
        <p>此购买信息将终身留存在Darry Ring 数据库中并无法更改。请用心呵护您的真爱。</p> 
       </div> 
       <div class="shopagree_cort-input"> 
        <label><i>*</i>先生姓名:</label> 
        <input type="text" value="<%=user.getUname() %>"  id="sirName" name="sirName" class="it_1" /> 
        <label><i>*</i>女士姓名:</label> 
        <input type="text" id="ladyName" name="ladyName" class="it_1" /> 
        <label><i>*</i>先生身份证号:</label> 
        <input type="text" id="sirCode" name="sirCode" class="it_2" /> 
       </div> 
       <div class="shopagree_cort-spcenter"> 
        <p>温馨提示：当您填写此资料,即默认同意本公司相关资料制作的网页放在Darry Ring专属页面。此资料将做合同永久保留。</p> 
       </div> 
       <div class="shopagree_cort-center"> 
        <p>女生会很在乎您记得这些重要的日子。不一定要送礼，一句问候或是一份惊喜都能给爱情加分。</p> 
        <p>如果有重要的节日让Darry Ring帮您提醒。</p> 
       </div> 
       <div class="shopagree_cort-input shopagree_cort-spinput"> 
        <label>她的生日：</label> 
        <input type="text" readonly="readonly" onFocus="WdatePicker({})" name="sheBirthday" id="sheBirthday" class="it_3" /> 
        <label>纪念日一：</label> 
        <input type="text" readonly="readonly" onFocus="WdatePicker({})" name="sheDate1" id="sheDate1" class="it_3" /> 
        <label>纪念日二:</label> 
        <input type="text" readonly="readonly" onFocus="WdatePicker({})" name="sheDate2" id="sheDate2" class="it_3" /> 
       </div> 
       <div class="shopagree_cort-check"> 
        <input type="checkbox" id="cbAgree" /> 
        <label for="cbAgree"> <a>我已经仔细阅读并接受该协议</a> </label> 
       </div> 
       <div onClick="submitAgreement();" class="shopagree_button"> 
        <div class="bt1">
         <span>确认提交真爱协议</span>
        </div> 
       </div> 
      </div> 
      <!--边框内容end--> 
      <div class="shop_agree-bottom"></div> 
     </div> 
     <!--真爱协议中的内容end--> 
     <!--中间内容end--> 
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
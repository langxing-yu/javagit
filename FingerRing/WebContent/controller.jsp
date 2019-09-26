<%@page import="src.com.ring.vo.User"%>
<%@page import="src.com.ring.vo.Goods"%>
<%@page import="java.util.List"%>
<%@page import="src.com.ring.service.GoodsService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
<head>
	 <title>钻戒列表</title>
	 <meta content="Darry Ring钻戒价格,Darry Ring钻戒图片" name="Keywords" />
	 <meta content="Darry Ring是求婚钻戒的第一品牌,全面的Darry Ring钻戒价格以及Darry Ring求婚戒指款式图片,定制正品求婚戒指都可以进入戴瑞珠宝官网进行查询,全国热线400-01-13520." name="Description" />
	 <meta content="format=html5; url=http://m.darryring.com/diamondring_list.aspx" name="mobile-agent" /> 
	 <style>
	 	#tp{
	 		width:300px;
	 		height:400px;
	 		position:absolute;
	 		left:250px;
	 		top:150px
	 	}
	 	#bd{
	 		width:500px;
	 		height:400px;
	 		position:absolute;
	 		left:800px;
	 		top:150px;
	 		font-size:30px;
	 	}
	 	.wbk{
	 		width:300px;
	 		height:30px;
	 	}
	 	#tj{
	 	 width:100px;
	 	 height:30px;
	 	 font-size:20px;
	 	 position:relative;
	 	 left:280px;
	 	 top:20px;
	 	 background-color:
	 	}
	 </style>
</head>
 <body bgcolor="#FFECEC">
 <!--/*技术支持，小庄602842076     验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*技术支持，小庄602842076    验证：官网技术支持*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/-->
  <link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
  <link href="css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" /> 
  <script src="js/jquery.js" type="text/javascript"></script> 
 
  
  
   <!--头部--> 
   <div class="cmain"> 
    <div class="headtop"> 
     <!--头部左边--> 
     <div class="top-left fl"> 
      <a title="Darry Ring" href="index.jsp"> <img width="187" height="42" alt="Darry Ring官网" src="images/logo.png" /> </a>
      <span style="font-weight: normal;">求婚钻戒领导品牌</span> 
     </div> 
     <!--头部左边end--> 
     <!--头部右边--> 
     <div class="top-right fr"> 
      <!--登录注册--> 
      <ul class="tright-ul fl">  
      <div id="ucheader1_pllogin1"> 
        <li>管理员你好<em>|</em></li> 
        <li><a href="index.jsp?flag=exit">退出</a></li> 
        <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="cart.jsp">购物车</a><i>(0)</i></li> 
       </div> 
      </ul> 
      <!--语言选择--> 
      <ul class="langruge-ul fr"> 
       <li><a target="_blank" href="index.jsp/en">English</a></li> 
      </ul> 
      <!--搜索框--> 
      <div style="display:none;" class="search"> 
       <input type="text" placeholder="求婚钻戒" class="txt1" /> 
       <div onClick="showSearch()" class="icon toser"> 
       </div> 
      </div> 
     </div> 
     <!--头部右边end--> 
    </div> 
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
		<div id="tp" >
			<div class="by_top">
			 		<a target="_blank" href="detail.jsp?gid=<%=good.getGid() %>" rel="nofollow"></a>
				<div style="opacity:1" class="bything-one">
					<img width="236px" height="236px" alt="<%=good.getGname() %><%=good.getColour() %>" src="<%=good.getSrc() %>" />
				</div>
				<div style="opacity:0" class="bything-two">
					<img width="236px" height="236px" src="<%=good.getSrc() %>" />
				</div>
			</div> 
	      
			<div>
			 	<a target="_blank" href="detail.jsp"><%=good.getGname() %><%=good.getColour() %></a><br>
				<span>￥<%=good.getRate() %></span>&nbsp;&nbsp;&nbsp;销量：<%=good.getSales() %>
			</div>
		</div>
		<form id="bd" action="upgoods?gid=<%=good.getGid() %>" method="post" onsubmit="return true">
			商品名:<input type="text" name="gname" class="wbk" /><br>
			颜色&nbsp;&nbsp;&nbsp;:<input type="text" name="colour" class="wbk" /><br>
			尺寸&nbsp;&nbsp;&nbsp;:<input type="text" name="size" class="wbk" /><br>
			价格&nbsp;&nbsp;&nbsp;:<input type="text" name="rate" class="wbk" /><br>
			编号&nbsp;&nbsp;&nbsp;:<input type="text" name="num" class="wbk" /><br>	
			图片&nbsp;&nbsp;&nbsp;:<input type="text" name="src" class="wbk" /><br>
			<input id="tj" type="submit" value="提交" >
		</form>


 </body>
</html>
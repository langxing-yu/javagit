<%@page import="src.com.ring.vo.Goods"%>
<%@page import="src.com.ring.service.GoodsService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html class="hb-loaded">
 <head> 
  <meta charset="utf-8" /> 
  <title>购物支付</title> 
  <meta name="Keywords" content="Darry Ring钻戒价格,Darry Ring钻戒图片" /> 
  <meta name="Description" content="Darry Ring官网会员注册登录唯一入口，Darry Ring是求婚钻戒第一品牌，想了解Darry Ring实体店、Darry Ring哪里有卖等相关Darry Ring资讯就先进入戴瑞珠宝官网注册吧！" /> 
  <meta content="26403151123072464122121676375" property="qc:admins" /> 
  <link href="css/style.css" type="text/css" rel="stylesheet" /> 
  <style>
  		#rwm{
  			width:376px;
  			height:376px;
  		}
  		#sm{
  			font-size:20px;
  		}
  </style>
 </head>
 <body>
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
  <script src="js/jquery.js" type="text/javascript"></script> 
  <script src="js/common.js" type="text/javascript"></script>   
  <div class="wrap"> 
   <!-- start of 头部导航--> 
   <div class="head_top"> 
    <div class="head clearfix"> 
     <!--头部左边--> 
     <div class="topLeft left"> 
      <a href="index.jsp" title="Darry Ring"> <img width="186" height="42" src="images/logo_01.png " /> </a> 
      <span>求婚钻戒领导品牌</span> 
     </div> 
     <!--头部左边end--> 
     <!--头部右边--> 
     <ul class="topRight right"> 
      <li>国际权威认证</li> 
      <li class="tr_2">15天无理由退换</li> 
      <li class="tr_3">终身保养</li> 
     </ul> 
     <!--头部左边end--> 
    </div> 
   </div> 
   	
   <!--end of 头部导航--> 
   <!-- starto of container --> 
   <div class="container"> 
    <!--中间内容--> 
    <div class="cmain ddd"> 
     <!--内容右边--> 
     <div class="cort-right right"> 
      <div class="r_bg"></div> 
      <!--登陆框内--> 
      
		<div><img id="rwm" alt="请扫描二维码" src="images/1wxzf.png"></div>
		<div style="font-size:20px;color:red;text-align:center;">请扫描二维码完成支付,<%=good.getRate() %>元</div>
		
      <!--登陆框内end--> 
     </div> 
     <!--内容右边end--> 
    </div> 
    <!--中间内容end--> 
   </div> 
   <!-- end of container --> 
   <!--底部end--> 
   <div class="cmain bc_yz"> 
    <div class="db_cort"> 
     <p>Copyright &copy; 2006-2015 www.darryring.com 戴瑞珠宝 All Rights Reserved. 粤ICP备11012085号</p> 
     <p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p> 
    </div> 
   </div> 
  
 
  </div> 

  <script type="text/javascript">
	$(document).ready(function() {
		$('#login span').eq(0).click(function() {
			location.href = "reg.jsp"
		});

		$('#login span').eq(1).click(function() {
                        $('.ts_wrong').remove();
                        $('.the_input').removeClass('error');
			if ($('#txtName').val() == '') {
				var notice = '<div class="ts_wrong"><span id="wrong">请输入邮箱/手机号码！</span></div>';
                                $('#txtName').parent().after(notice);
                                $('#txtName').parent().addClass('error');
                                return false;
			}

			if ($('#txtPwd').val() == '') {
				var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
                                $('#txtPwd').parent().after(notice);
                                $('#txtPwd').parent().addClass('error');
                                return false;
			}

			$('form').submit();
		});
                
               
	});
        
        $(document).keyup(function(event){
            if(event.keyCode ==13){
               $('#login span').eq(1).click();
            }
        });
</script> 
 </body>
</html>
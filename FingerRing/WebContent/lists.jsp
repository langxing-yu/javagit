﻿<%@page import="src.com.ring.vo.User"%>
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
  <link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
  <link href="css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" /> 
  <script src="js/jquery.js" type="text/javascript"></script> 
 
  <form id="form1" action="/darry_ring" method="post" name="form1"> 
  
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
			if(null == obj){ // 未登录
		%>
		 <li><a rel="nofollow" href="login.jsp">登录</a><em>|</em></li> 
        <li><a rel="nofollow" href="reg.jsp">注册</a></li> 
        <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="cart.jsp">购物车</a><i>(0)</i></li> 
			<%
				}else{ // 已经登录
					User user = (User)obj;
			%>
					<li>你好，<%=user.getUname() %></li>
					<li><a href="index.jsp?flag=exit">退出</a></li>
					<li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="cart.jsp">购物车</a><i>(0)</i></li>
			<%
				}
			%> 
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
   <!--头部end--> 
   <!--导航--> 
   <div class="nav"> 
    <div class="cmain"> 
     <!--导航的左边--> 
     <ul class="nav-ul fl"> 
      <li><a href="index.jsp">首页</a> </li> 
      <li class=""><a href="brand.jsp">品牌文化</a> </li> 
      <!--
            <li><a href="/pinkdiamond.aspx" target="_blank">高级定制</a>
                <div class="nav-div">
                    <div class="navdiv-right">
                        <p>
                            <a href="/pinkdiamond.aspx" target="_blank">稀世粉钻系列</a></p>
                    </div>
                    <div class="navdiv-left">
                        <h3>
                            NEW</h3>
                        <img src="images/02wj.jpg" width="138" height="97" />
                        <div class="more_cp">
                            <a href="/pinkdiamond.aspx" target="_blank">> 了解该系列产品</a>
                        </div>
                    </div>
                </div>
            </li>--> 
      <li class=""><a style="font-family:arial" href="lists.jsp">Darry Ring 求婚钻戒</a> 
       <div class="nav-div" style="display: none;"> 
        <div class="navdiv_top"> 
         <div class="navdiv-right"> 
          <p> <a href="lists.jsp"> 查看所有款</a></p> 
          <p> <a href="/pinkdiamond.aspx">稀世粉钻系列</a></p> 
          <p> <a href="/dr_series/12_22.jsp">Forever系列</a></p> 
          <p> <a href="/dr_series/11_20.jsp">My Heart系列</a></p> 
          <p> <a href="/dr_series/16_30.jsp">True Love系列</a></p> 
          <p> <a href="/dr_series/15_28.jsp">I Swear系列</a></p> 
          <p> <a href="/dr_series/13_24.jsp">Just you系列</a></p> 
         </div> 
         <div class="navdiv-left"> 
          <h3> NEW</h3> 
          <a href="/darry_ring/349.jsp"> <img width="138" height="97" alt="2克拉钻戒价格_E色EX切工VVS2净度_True Love系列 奢华款 _Darry Ring求婚钻戒 戴瑞珠宝官网" src="images/03wj.jpg" /></a> 
          <div class="more_cp"> 
           <a href="/darry_ring/349.jsp">&gt; 了解该系列产品</a> 
          </div> 
         </div> 
        </div> 
        <div class="navdiv_bottom"></div> 
       </div> </li> 
      <li><a style="font-family:arial" href="lists.jsp">Darry Ring 爱的礼物</a> 
       <div class="nav-div" style="display: none;"> 
        <div class="navdiv_top"> 
         <div class="navdiv-right"> 
          <p> <a href="lists.jsp">查看所有</a></p> 
          <p> <a href="/dr_phonics">对戒</a></p> 
          <p> <a href="/jewelry_2">男戒</a></p> 
          <p> <a href="/jewelry_4">吊坠</a></p> 
          <p> <a href="/jewelry_5">项链</a></p> 
          <p> <a href="/jewelry_8">手链</a></p> 
          <p> <a href="/jewelry_6">耳钉/耳环</a></p> 
         </div> 
         <div class="navdiv-right special_right noborder"> 
          <p> <a href="/j_series/22_12.jsp">Forever系列</a></p> 
          <p> <a href="/j_series/20_11.jsp">My Heart系列</a></p> 
          <p> <a href="/j_series/24_13.jsp">Just You系列</a></p> 
          <p> <a href="/j_series/30_16.jsp">True Love系列</a></p> 
          <p> <a href="/j_series/28_15.jsp">I Swear系列</a></p> 
          <div class="more_cp"> 
           <a href="lists.jsp">&gt; 查看所有款</a> 
          </div> 
         </div> 
        </div> 
        <div class="navdiv_bottom"></div> 
       </div> </li> 
      <li><a href="question.jsp">常见问题</a></li> 
     </ul> 
     <!--导航的右边--> 
     <ul class="nav-right fr"> 
      <li class="lipos"><em></em><a href="active.jsp">最新活动</a> <i class="icon"></i> 
       <div class="theright_div"> 
        <div class="navdiv_top"> 
         <div class="navright_div fl"> 
          <h3> 小时代4陆烧林萧求婚钻戒， </h3> 
          <p> Darry Ring钻戒顶级定制！</p> 
          <div class="more_cp"> 
           <a href="/xiaoshidai4.jsp">&gt; 点击了解详细</a> 
          </div> 
         </div> 
         <div class="navleft_div fl"> 
          <a href="/xiaoshidai4.jsp"> <img width="187" height="163" alt="" src="images/xsdcat.jpg" /></a> 
         </div> 
        </div> 
        <div class="navdiv_bottom"></div> 
       </div> </li> 
     </ul> 
    </div> 
   </div> 
   <!--导航end--> 
   <script type="text/javascript">
    function logout() {
        if (window.confirm('确定退出吗？')) {

            $.get("/nAPI/QuitExit.ashx", function (data) {
                window.location.href = "/";
            });
        }
    }
</script> 
   <!--钻戒页面中间--> 
   <div class="cort"> 
    <div class="cmain sp_cort fix"> 
     <!--背景图--> 
     <div class="zj_bk"> 
      <div class="zbk_top spalid"> 
       <span>您当前的位置：</span> 
       <span id="website_SiteMapPath1"><a href="#website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="index.jsp">Darry Ring</a> </span><span> <em>&gt;</em> </span><span> <span>求婚钻戒</span> </span><a id="website_SiteMapPath1_SkipLink"></a></span> 
      </div> 
      <!--banner中间内容--> 
      <div class="zbk_center"> 
       <!--banner左边--> 
       <div class="zbkc-left"> 
        <h3> 求婚钻戒领导品牌</h3> 
        <h2> 男士一生仅能定制一枚</h2> 
        <h4> 寓意：一生&middot;唯一&middot;真爱</h4> 
        <div class="button"> 
         <div id="click" class="bt2"> 
          <span>购买资格查询</span> 
         </div> 
         <div id="dzck" class="bt1"> 
          <a target="_blank" href="/help/72.jsp">购买流程说明</a> 
         </div> 
        </div> 
       </div> 
       <!--banner右边的背景图--> 
       <div class="zbkc-right"> 
        <img width="458" height="260" alt="求婚钻戒" src="images/True-Love-_ring.jpg" /> 
       </div> 
      </div> 
     </div> 
     <!--背景图end--> 
     <!--流程图--> 
     <div class="the_lct"> 
      <img src="images/lct.png" /> 
     </div> 
     <!--流程图end--> 
     <!--小导航--> 
     <div class="allchose_nav"> 
      <!--购买选项--> 
      <div class="dr_choose"> 
       <!--选项nav--> 
       <div class="drcho_top"> 
        <ul class="drchoose_ul"> 
         <a href="lists.jsp"><li class="choose_hover" id="ucser_all"><span>所有</span> </li> </a>
         <a href="Foreverlists.jsp"><li id="ucser_forever"><span>Forever 系列</span> </li> </a>
         <a href="myheartlists.jsp"><li id="ucser_myheart"><span>My Heart 系列</span> </li> </a>
         <a href="Iswearlists.jsp"><li id="ucser_swear"><span>I Swear系列</span> </li> </a>
         <a href="Justlists.jsp"><li id="ucser_justyou"><span>Just You 系列</span> </li> </a>
         <a href="Truelists.jsp"><li style="background-image:none" id="ucser_truelove"><span>True Love系列</span> </li> </a>
        </ul> 
       </div> 
       <div class="drcho_bto"></div> 
      </div> 
      <!--购买选项end--> 
      <script type="text/javascript" language="javascript">
    $(function () {
        $("#ucser_all").click(function () {
            window.location.href = "/darry_ring";
        });
        $("#ucser_forever").click(function () {
            window.location.href = "/dr_series/12_22.jsp";
        });
        $("#ucser_myheart").click(function () {
            window.location.href = "/dr_series/11_20.jsp";
        });
        $("#ucser_swear").click(function () {
            window.location.href = "/dr_series/15_28.jsp";
        });
        $("#ucser_justyou").click(function () {
            window.location.href = "/dr_series/13_24.jsp";
        });
        $("#ucser_truelove").click(function () {
            window.location.href = "/dr_series/16_30.jsp";
        });
    });
</script> 
      <!--参数选项--> 
      <div class="select_choose"> 
       <div class="thefirst_it"> 
        <div class="search2 search_other fr"> 
         <input type="text" placeholder="产品名称/关键字" class="txt2" id="txtTitle" name="txtTitle" /> 
         <div id="prosearch" class="icon toser2"></div> 
        </div> 
        <div class="fl"> 
         <span>价格：</span> 
         <select id="drpListPrice" name="drpListPrice"> <option value="-1" selected="selected">不限</option> <option value="1">5000以下</option> <option value="2">5000-10000</option> <option value="3">10000-20000</option> <option value="4">20000以上</option> </select> 
         <span>钻石：</span> 
         <select id="drplistzct" name="drplistzct"> <option value="-1" selected="selected">不限</option> <option value="1">10分以下</option> <option value="2">10分-30分</option> <option value="3">30分-50分</option> <option value="4">50分-1克拉</option> <option value="5">1克拉以上</option> </select> 
         <span>材质：</span> 
         <select id="drpListCZ" name="drpListCZ"> <option value="-1" selected="selected">不限</option> <option value="1">PT950</option> <option value="2">18K白金</option> <option value="3">18K黄金</option> <option value="4">18K玫瑰金</option> </select> 
        </div> 
        <div style="display:none" id="btncz" class="choose_cz fl"> 
         <span>重 置</span> 
        </div> 
        <div class="choose_serach fl" style="display:none"> 
         <a target="_blank" href="/diydr/"><span>高级搜索</span></a> 
        </div> 
        <span style="display:none" id="spanclick"></span> 
        <div style="display:none" class="choose-ks fr"> 
         <span id="xp"><i>新品</i> <em></em></span>
         <span id="xl"> <i>销量</i> <em></em></span>
         <span id="jg"><i>价格</i> <em></em></span> 
        </div> 
       </div> 
       <div class="thesec_it"> 
        <div class="thesec_word fr"> 
         <span>共<i>17</i>件商品</span> 
         <span> <i class="thered_color">1</i>/3 </span> 
         <em onClick="getPage('up')" class="no_paget" id="em_up">上一页</em> 
         <em class="" onClick="getPage('down')" id="em_down">下一页</em> 
         <span style="display:none" id="lbCurrent">1</span> 
         <span style="display:none" id="lbTot">5</span> 
         <input type="submit" style="display:none" id="btnUp" value="上一页" name="btnUp" /> 
         <input type="submit" style="display:none" id="btnNext" value="下一页" name="btnNext" /> 
        </div> 
        <div class="thesec_word-left fl"> 
         <span>排序：</span> 
         <b> <i id="i_rq">按人气</i> <i id="i_xl">按销量</i> <i id="i_jg">按价格</i> </b> 
        </div> 
       </div> 
      </div> 
      <!--参数选项end--> 
     </div> 
     <!--小导航end--> 
     <!--高级搜索--> 
     <!--高级搜索end--> 
     <!--购买的款式--> 
     <div class="cmain"> 
      <ul class="buyit"> 
       <!--每一个款式--> 
       
   <%
		
		int pageSize =8;// 每页显示几条
		
		int count = 0;// 共多少条
		
		int pageNum = 1;// 当前是第几页
		
		int pageCount = 0;// 共多少页
 
		GoodsService gods = new GoodsService();
   		List<Goods> goods = gods.findAllGoods();
   		
   		count = goods.size(); //17条
   		
		String pn = request.getParameter("pageNum");
		if(null == pn){	
			pn = "1";
		}
		pageNum = Integer.parseInt(pn);
		// pageCount 第几页
		pageCount = count%pageSize==0?count/pageSize:count/pageSize+1;
		
		// start 第一条
		int start = (pageNum-1)*pageSize;
		// end 一页中最后一条
		int end = pageNum==pageCount?count-1:pageNum*pageSize-1;
   		
   		for(int i=start;i<=end;i++){
   			Goods good = goods.get(i);
   			
   	%>    
   		
        <li>
         <div class="by_top">
          <a target="_blank" href="detail.jsp?gid=<%=good.getGid() %>" rel="nofollow"></a>
          <div style="opacity:1" class="bything-one">
           <img width="236px" height="236px" alt="<%=good.getGname() %><%=good.getColour() %>" src="<%=good.getSrc() %>" />
          </div>
          <div style="opacity:0" class="bything-two">
           <img width="236px" height="236px" src="<%=good.getSrc() %>" />
          </div>
         </div> 
         <div class="by_center"></div>
         <div class="by_bottom">
          <p><a target="_blank" href="detail.jsp"><%=good.getGname() %><%=good.getColour() %></a></p>
          <p> <span>￥<%=good.getRate() %></span><i>销量：<%=good.getSales() %></i></p> 
         </div></li>
      <%
   		}
      %>
      
      
      
      </ul> 
      <!--购买的款式end--> 
     </div> 
    
     <div class="paging_all" id="pageing_pagingDiv"> 
      <div class="paging_all-cort"> 
       <ul class="paging fl"> 
       <%
       		if(pageNum == 1){
       %>
       		<li class="pli pag_gray">&lt;&lt;首页</li>
       		<li class="pli pag_gray">&lt;&lt;上一页</li>
		<%		
			}else{
		%>
				<li><a href="lists.jsp?pageNum=1">首页</a></li>
				<li class="pli pag_gray">&lt;&lt;<a href="lists.jsp?pageNum=<%=pageNum-1 %>">上一页</a></li>
				
		<%		
			}
		%>
		<%
			if(pageNum==pageCount){ // 最后一页
		%>
				<li class="pli2">下一页&gt;&gt;</li>
				<li class="pli pag_gray">&lt;&lt;末页</li>
		<%		
			}else{
		%>
				<li class="pli2"><a href="lists.jsp?pageNum=<%=pageNum+1 %>">下一页</a>&gt;&gt;</li>
				<li><a href="lists.jsp?pageNum=<%=pageCount %>">末页</a></li>
		<% 
			}
		%>
        
        
       </ul> 
       <p class="pag_p fl"> <span>共<%=pageCount %>页，到第</span> <input type="text" class="pag_txt" id="pag"  />页 <input type="button" class="pag_bt" onClick="cestbon()" value="确定" /> 
      </div> 
      <script>
   		 var pag = document.getElementById("pag");
   		 function cestbon(){
   			 if(pag.value=="1"){
   				 location.href="lists.jsp?pageNum=1";
   			 }else if(pag.value=="2"){
   				location.href="lists.jsp?pageNum=2";
   			 }else if(pag.value=="3"){
   				location.href="lists.jsp?pageNum=3";
   			 }else{
   				alert("超出页数范围");
   			 }
   			console.log("page="+pag.value);
   		 }
   	
   		 
    </script>
     </div> 
     <!--分页end--> 
     <!--分页end--> 
    </div> 
   </div> 
   <!--底部--> 
   <div class="footer"> 
    <!--错误--> 
    <!--提示--> 
    <div class="loverit_word2">
     Darry Ring严格规定男士凭身份证一生仅能定制一枚，象征男人一生真爱的最高承诺。输入身份证号码即可查询购买记录。
    </div> 
    <!--提示end--> 
    <div class="loverit_wrong2">
     <p>信息填写不正确，请重新输入。</p>
    </div> 
    <!--错误end--> 
    <!--验证身份--> 
    <div class="loveit_center"> 
     <div class="love_doit2"> 
      <div class="loverit_center2"> 
       <div class="loverit_write2"> 
        <label>国家/区域:</label> 
        <select id="txtArea" style="vertical-align: middle;height:22px;"> <option value="0">中国大陆</option> <option value="1">中国香港</option> <option value="2">中国澳门</option> <option value="3">中国台湾</option> </select> 
        <label>先生姓名:</label> 
        <input type="text" class="lit_txt" id="textName2" /> 
        <label>身份证号码:</label> 
        <input type="text" class="lit_txt" id="textIDCard2" /> 
        <span id="btnsub2"></span> 
       </div> 
      </div> 
     </div> 
    </div> 
    <!--验证身份end--> 
    <div style="clear:both"></div> 
    <div class="cmain"> 
     <ul class="Service_ul"> 
      <!--每一块li--> 
      <li> 
       <div class="Service_ul-img"> 
        <a href="index.jsp/help_ab/51.jsp" rel="nofollow"></a> 
       </div> <a href="index.jsp/help_ab/51.jsp" rel="nofollow"><p>权威认证</p></a> </li> 
      <!--每一块li--> 
      <li> 
       <div class="Service_ul-img bk_2"> 
        <a href="index.jsp/help_se/81.jsp" rel="nofollow"></a> 
       </div> <a href="index.jsp/help_se/81.jsp" rel="nofollow"><p> 一钻双证</p></a> </li> 
      <!--每一块li--> 
      <li> 
       <div class="Service_ul-img bk_3"> 
        <a href="index.jsp/help_se/80.jsp" rel="nofollow"></a> 
       </div> <a href="index.jsp/help_se/80.jsp" rel="nofollow"> <p> 终生保养</p></a> </li> 
      <!--每一块li--> 
      <li> 
       <div class="Service_ul-img bk_4"> 
        <a href="index.jsp/help_se/82.jsp" rel="nofollow"></a> 
       </div> <a href="index.jsp/help_se/82.jsp" rel="nofollow"> <p> 以小换大</p></a> </li> 
      <!--每一块li--> 
      <li> 
       <div class="Service_ul-img bk_5"> 
        <a href="index.jsp/help_se/84.jsp" rel="nofollow"></a> 
       </div> <a href="index.jsp/help_se/84.jsp" rel="nofollow"> <p> 15天退换</p></a> </li> 
      <!--每一块li--> 
      <li> 
       <div class="Service_ul-img bk_6"> 
        <a href="index.jsp/help/74.jsp" rel="nofollow"></a> 
       </div> <a href="index.jsp/help/74.jsp" rel="nofollow"> <p> 全国免运费</p></a> </li> 
      <!--每一块li--> 
      <li> 
       <div class="Service_ul-img bk_7"> 
        <a href="index.jsp/help_se/83.jsp" rel="nofollow"></a> 
       </div> <a href="index.jsp/help_se/83.jsp" rel="nofollow"><p> 全程保险</p></a> </li> 
     </ul> 
     <!--服务条款--> 
     <div class="service"> 
      <!--二维码--> 
      <div class="erwei fl"> 
       <img width="90" height="90" alt="Darry Ring 官方微信" src="images/erwei.jpg" /> 
      </div> 
      <!--中间的联系方式--> 
      <div class="know_right fl"> 
       <p> 24小时全国免费服务热线</p> 
       <img width="171" height="32" src="images/tel.jpg" /> 
       <p class="theshare"> <span>关注我们：</span> <a class="wb" target="_blank" href="http://weibo.com/13520comcn" rel="nofollow"></a> <a class="rr" target="_blank" href="http://e.t.qq.com/DarryRing" rel="nofollow"></a> <a class="qzone" target="_blank" title="QQ空间" href="http://user.qzone.qq.com/2678181289/" rel="nofollow"></a> </p> 
      </div> 
      <!--左边的服务条款--> 
      <ul class="Service_know fr"> 
       <!--每一块li--> 
       <li> <h3> 关于我们</h3> <p> <a target="_blank" href="index.jsp/help_ab/66.jsp" rel="nofollow">权威认证</a></p> <p> <a target="_blank" href="index.jsp/help_ab/68.jsp" rel="nofollow">商务合作</a></p> <p> <a target="_blank" href="index.jsp/help_ab/70.jsp" rel="nofollow">加入我们</a></p> </li> 
       <!--每一块li--> 
       <li> <h3> 关于购买</h3> <p> <a target="_blank" href="index.jsp/help/72.jsp" rel="nofollow">购买流程</a></p> <p> <a target="_blank" href="index.jsp/help/73.jsp" rel="nofollow">支付方式</a></p> <p> <a target="_blank" href="index.jsp/help/74.jsp" rel="nofollow">配送流程</a></p> </li> 
       <!--每一块li--> 
       <li> <h3> 关于退换</h3> <p> <a target="_blank" href="index.jsp/help/75.jsp" rel="nofollow">退货流程</a></p> <p> <a target="_blank" href="index.jsp/help/76.jsp" rel="nofollow">办理售后</a></p> <p> <a target="_blank" href="index.jsp/help_se/84.jsp" rel="nofollow">15天退换</a></p> </li> 
       <!--每一块li--> 
       <li> <h3> 帮助中心</h3> <p> <a target="_blank" href="index.jsp/help/71.jsp" rel="nofollow">注册流程</a></p> <p> <a href="javascript:showxiaon();" rel="nofollow">联系客服</a></p> <p> <a target="_blank" href="index.jsp/help/78.jsp" rel="nofollow">网站地图</a></p> </li> 
       <!--每一块li--> 
       <li> <h3> 服务条款</h3> <p> <a target="_blank" href="index.jsp/help_se/80.jsp" rel="nofollow">终生保养</a></p> <p> <a target="_blank" href="index.jsp/help_se/85.jsp" rel="nofollow">注册协议</a></p> <p> <a target="_blank" href="index.jsp/help_se/86.jsp" rel="nofollow">隐私声明</a></p> </li> 
       <!--每一块li--> 
       <li> <h3> DR服务</h3> <p> <a target="_blank" href="/proposelist.aspx?id=18">钻石百科</a></p> <p> <a target="_blank" href="/news/index.aspx">产品百科</a></p> <p> <a target="_blank" href="/propose.aspx">求婚指南</a></p> </li> 
      </ul> 
     </div> 
     <!--条文--> 
     <div class="auto" id="Menu_Service"> 
     </div> 
     <div class="tw-foot"> 
      <div class="auto" id="Copyright"> 
       <p> Copyright &copy; 2006-2015 www.darryring.com 深圳市戴瑞珠宝有限公司 All Rights Reserved. 粤ICP备11012085号-2.ICP经营许可证粤B2-20140279 </p> 
       <p> 中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票 </p> 
      </div> 
     </div> 
    </div> 
   </div> 
   <div class="model" id="model"> 
    <div class="Prompt" id="Prompt"> 
    </div> 
    <span id="log_uid" style="display:none"></span> 
    <span id="log_uname" style="display:none"></span> 
    <span id="log_orderid" style="display:none"></span> 
    <span id="log_price" style="display:none"></span> 
   </div> 
   <script src="http://wpa.b.qq.com/cgi/wpa.php" charset="utf-8" type="text/javascript"></script> 
   <!--客服(2014年8月29日)--> 
   <div style="display:none" class="Ffloat_kf"> 
    <div class="fkf_top"> 
     <div style="cursor: pointer; display: none;" id="bridgehead"> 
     </div> 
     <div id="BizQQWPA"></div> 
     <div onClick="showModel(modelsever);" style="cursor: pointer;" class="qq_hover" id="qqTalk_head"> 
     </div> 
     <div id="BizQQWPAB" class="sh"> 
     </div> 
     <div id="bdBridge"> 
      <a href="javascript:NTKF.im_openInPageChat()"> <img width="75" height="37" src="images/zx.jpg" /></a>
     </div> 
    </div> 
    <div class="fkf_bottom"> 
     <img width="92" height="82" alt="Darry Ring 官方微信" src="images/to_erwei.jpg" /> 
     <a href="#"> <img width="92" height="26" src="images/db.jpg" /></a> 
    </div> 
   </div> 
   <!--新版右边客服start--> 
   <!--右边漂浮悬挂大的--> 
   <div class="float_big"> 
    <div class="floatbig_hide fr"></div> 
    <div class="floatbig_center"> 
     <!--客服--> 
     <div onClick="javascript:NTKF.im_openInPageChat();" id="Bearonline" class="floatbig_center-kf"></div> 
     <!--客服end--> 
     <!--定制咨询--> 
     <div id="dzzxonline" class="floatbig_center-zx"> 
      <a href="javascript:showModel(modelsever);"></a> 
     </div> 
     <!--定制咨询end--> 
     <img src="images/ew.jpg" /> 
    </div> 
   </div> 
   <!--右边漂浮悬挂大的end--> 
   <!--右边漂浮悬挂小的--> 
   <div class="float_small"> 
    <div class="floatbig_show fr"></div> 
    <div class="floatbig_center"> 
     <!--客服--> 
     <div onClick="javascript:NTKF.im_openInPageChat();" class="floatsmall_center-kf fr"></div> 
     <!--客服end--> 
     <!--定制咨询--> 
     <div class="floatsmall_center-zx fr"> 
      <a href="javascript:showModel(modelsever);"></a> 
     </div> 
     <!--定制咨询end--> 
     <!--二维码--> 
     <div class="floatsmall_erwei fr"> 
      <a href="#"></a> 
     </div> 
     <!--二维码end--> 
    </div> 
   </div> 
   <!--右边漂浮悬挂小的end--> 
   <!--返回顶部--> 
   <div class="comeback" style="display: none;"></div> 
   <!--返回顶部end--> 
   <!--新版右边客服end--> 
   <div style="position: fixed; cursor: pointer; right: 6px; top: 289px; padding-bottom: 152px; z-index: 9999; width: 19px; height: 103px; display: none;" onClick="openserver();" id="openbnt"> 
    <img width="19" height="103" src="images/server_03.jpg" />
   </div> 
   <div class="news_tc"> 
    <div class="newtc_left"> 
    </div> 
    <div class="newtc_right"> 
     <span style="cursor: pointer" class="sszs">稍后再说</span> 
     <span class="xzzx"><a onClick="showxiaon()" style="cursor: pointer" id="chatnow"> 现在咨询</a></span> 
     <div style="cursor: pointer" class="tocclose"> 
     </div> 
    </div> 
   </div> 
   <div class="mask" id="masks"> 
   </div> 
   <div style="display:none;" class="modelsever" id="modelsever"> 
    <div class="cs_top"> 
     <div class="cs_topcenter">
      <div style="width:300px; height:40px; line-height:40px; float:left; display:inline-block; ">
       顾客常见疑问
      </div> 
      <div style="width:385px; height:20px; float:left; text-align:right; padding-top:20px;"> 
       <img width="55" height="9" style="cursor: pointer;" onClick="CloseMaskser()" src="images/popup_window_btn_close.gif" /> 
      </div> 
     </div> 
    </div> 
    <div class="cs_content clear"> 
     <ul> 
      <li onClick="showbox(1)" id="li1">官网店铺</li>
      <li class="line">/</li> 
      <li onClick="showbox(2)" id="li2">真爱疑问</li>
      <li class="line">/</li> 
      <li onClick="showbox(3)" id="li3">购买限制</li>
      <li class="line">/</li> 
      <li onClick="showbox(4)" id="li4">产品疑问</li>
      <li class="line">/</li> 
      <li onClick="showbox(5)" id="li5">关于定制</li>
      <li class="line">/</li> 
      <li onClick="showbox(6)" id="li6">关于运输</li>
      <li class="line">/</li> 
      <li onClick="showbox(7)" id="li7">关于售后</li> 
     </ul> 
     <div id="box1" class="box1"> 
      <div onClick="contenttxt(1,1)" id="content_title_11" class="content_title">
       <span style="margin-top:8px;">Q：Darry Ring 是否有实体店？</span>
      </div> 
      <div id="content_title1_1" class="content_txt">
       <span style="margin-top:1px;">A：DR公司总部在香港，目前内地深圳市、北京市、重庆市、广州市、上海市、武汉市、南京市、长沙市设有实体店，支持到店订购，也支持全国在线官网订购。同时目前其他一线城市公司已在考察选址阶段，将陆续开设店面。</span>
    </div> 
     <div onClick="contenttxt(1,2)" id="content_title_12" class="content_title">
       <span style="margin-top:8px;">Q：实体店具体位置？</span> 
      </div> 
     <div id="content_title1_2" class="content_txt">
       <span style="margin-top:1px;">A：深圳实体店地址：深圳南山区世界之窗旁欧陆小镇4号楼Darry Ring （地铁罗宝线世界之窗I出口）深圳店联系方式：0755-86621782。<p></p> 北京实体店地址：北京东二环朝阳门桥银河SOHO中心B座负一层2-109 （朝阳门地铁G出口） 北京店联系方式：010-59576758。<p></p> 上海实体店地址：上海长宁区淮海西路570号红坊创意园区G-108栋(近虹桥路) 上海店联系方式：021-60934520。<p></p> 广州实体店地址：广州市天河区天河北路233号中信广场商场136单元 广州店联系方式：020-38836315。<p></p> 重庆实体店地址：重庆市渝中区解放碑步行街民族路188号环球金融中心（WFC）LG-B02A 重庆店联系方式：023-63710835。<p></p> 武汉实体店地址：武汉市洪山区光谷意大利风情街5号楼一层51021号 武汉店联系方式：027-87688895。<p></p> 南京实体店地址：南京市长江路288号1912街区17号楼一层 南京店联系方式：025-83613520。<p></p> 长沙实体店地址：长沙市开福区中山路589号万达百货商场2楼 长沙店联系方式：0731-83878575。<p></p> 全国400客服热线：400 01 13520。</span>
      </div> 
      <div onClick="contenttxt(1,3)" id="content_title_13" class="content_title">
       <span style="margin-top:8px;">Q：到店订购和官网订购的价格一致吗？</span>
      </div> 
      <div id="content_title1_3" class="content_txt">
       <span style="margin-top:1px;">A：DR的所有商品，到店订购和官网订购的时间周期，价格，质量及售后服务均一致。</span> 
      </div> 
      <div onClick="contenttxt(1,4)" id="content_title_14" class="content_title">
       <span style="margin-top:8px;">Q：价格是否有折扣优惠？</span>
      </div> 
      <div id="content_title1_4" class="content_txt">
       <span style="margin-top:1px;">A：DR的品牌寓意为一生唯一真爱，大多是用作见证彼此求婚或结婚这一神圣时刻，所以所有商品都是常年任何节假日没有折扣活动，就像彼此一生唯一真爱的承诺及永恒的爱情，永不打折。</span> 
      </div> 
      <div onClick="contenttxt(1,5)" id="content_title_15" class="content_title">
       <span style="margin-top:8px;">Q：为什么在官网上输入姓名身份证号后看不到款式？</span>
      </div> 
      <div id="content_title1_5" class="content_txt">
       <span style="margin-top:1px;">A：www.darryring.com 官网首页点击—求婚钻戒，进入页面后不需要填写任何信息，移动鼠标到最下方，就可以看到Darry Ring女戒的所有款式。</span> 
      </div> 
      <div onClick="contenttxt(1,6)" id="content_title_16" class="content_title">
       <span style="margin-top:8px;">Q：到实体店是否可以立刻拿到戒指？</span>
      </div> 
      <div id="content_title1_6" class="content_txt">
       <span style="margin-top:1px;">A：您好，DR的所有商品都是需要根据您选择的款式、手寸大小及刻字信息来定制。实体店仅提供款式体验及预订，与官网购买的定制时间是一致的，可于15-20个工作日内送到或自取。</span> 
      </div> 
     </div> 
     <div id="box2" class="box2"> 
      <div onClick="contenttxt(2,1)" id="content_title_21" class="content_title"></div> 
      <div id="content_title2_1" class="content_txt"></div> 
      <div onClick="contenttxt(2,2)" id="content_title_22" class="content_title"></div> 
      <div id="content_title2_2" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(2,3)" id="content_title_23" class="content_title"></div> 
      <div id="content_title2_3" class="content_txt"> 
      </div> 
      <!--<div class="content_title"  onclick="contenttxt(2,4)">4、Q：LES可以购买吗？</div>
<div class="content_txt" id="content_title2_4">A：真爱不分性别，只要确定了对方就是您这辈子的真爱，同时您愿意为此绑定自己的身份证信息，那
么DR不会限制您追求真爱的自由，您同样是可以购买到Darry Ring的真爱女戒。

</div>--> 
      <div onClick="contenttxt(2,4)" id="content_title_24" class="content_title"></div> 
      <div id="content_title2_4" class="content_txt"> 
      </div> 
     </div> 
     <div id="box3" class="box3"> 
      <div onClick="contenttxt(3,1)" id="content_title_31" class="content_title"></div> 
      <div id="content_title3_1" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(3,2)" id="content_title_32" class="content_title"></div> 
      <div id="content_title3_2" class="content_txt"></div> 
      <div onClick="contenttxt(3,3)" id="content_title_33" class="content_title"></div> 
      <div id="content_title3_3" class="content_txt"></div> 
      <div onClick="contenttxt(3,4)" id="content_title_34" class="content_title"></div> 
      <div id="content_title3_4" class="content_txt"></div> 
     </div> 
     <div id="box4" class="box4"> 
      <div onClick="contenttxt(4,1)" id="content_title_41" class="content_title"></div> 
      <div id="content_title4_1" class="content_txt"></div> 
      <div onClick="contenttxt(4,2)" id="content_title_42" class="content_title"></div> 
      <div id="content_title4_2" class="content_txt"></div> 
      <div onClick="contenttxt(4,3)" id="content_title_43" class="content_title"></div> 
      <div id="content_title4_3" class="content_txt"></div> 
      <div onClick="contenttxt(4,4)" id="content_title_44" class="content_title"></div> 
      <div id="content_title4_4" class="content_txt"></div> 
     </div> 
     <div id="box5" class="box5"> 
      <div onClick="contenttxt(5,1)" id="content_title_51" class="content_title"></div> 
      <div id="content_title5_1" class="content_txt"></div> 
      <div onClick="contenttxt(5,2)" id="content_title_52" class="content_title"></div> 
      <div id="content_title5_2" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(5,3)" id="content_title_53" class="content_title"></div> 
      <div id="content_title5_3" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(5,4)" id="content_title_54" class="content_title"></div> 
      <div id="content_title5_4" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(5,5)" id="content_title_55" class="content_title"></div> 
      <div id="content_title5_5" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(5,6)" id="content_title_56" class="content_title"></div> 
      <div id="content_title5_6" class="content_txt"> 
      </div> 
     </div> 
     <div id="box6" class="box6"> 
      <div onClick="contenttxt(6,1)" id="content_title_61" class="content_title"></div> 
      <div id="content_title6_1" class="content_txt"></div> 
      <div onClick="contenttxt(6,2)" id="content_title_62" class="content_title"></div> 
      <div id="content_title6_2" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(6,3)" id="content_title_63" class="content_title"></div> 
      <div id="content_title6_3" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(6,4)" id="content_title_64" class="content_title"></div> 
      <div id="content_title6_4" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(6,5)" id="content_title_65" class="content_title"></div> 
      <div id="content_title6_5" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(6,6)" id="content_title_66" class="content_title"></div> 
      <div id="content_title6_6" class="content_txt"> 
      </div> 
     </div> 
     <div id="box7" class="box7"> 
      <div onClick="contenttxt(7,1)" id="content_title_71" class="content_title"></div> 
      <div id="content_title7_1" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(7,2)" id="content_title_72" class="content_title"></div> 
      <div id="content_title7_2" class="content_txt"> 
      </div> 
      <div onClick="contenttxt(7,3)" id="content_title_73" class="content_title"></div> 
      <div id="content_title7_3" class="content_txt"> 
      </div> 
     </div> 
    </div> 
    <div id="qqku" class="cs_bottom">
      没有您关注的问题？ 
     <span onClick="javascript:window.open('http://b.qq.com/webc.htm?new=0&amp;sid=4000113520&amp;eid=218808P8z8p8P808p8R8K&amp;o=13520.com.cn&amp;q=7&amp;ref='+document.location, '_blank', 'height=10, width=10,toolbar=no,scrollbars=no,menubar=no,status=no');" style="cursor: pointer; color:#c2967e; font-size:16px; font-weight:bold;">立即联系在线客服</span> 
    </div> 
   </div> 
   <script type="text/javascript">
    function showbox(id) {
        getQeestion(id);
        for (var i = 1; i <= 8; i++) {
            if (i == id) {
                showdiv(id);
            }
            else {
                hidediv(i);
            }
        } 
    }
    function contenttxt(id, sid) {
        for (var i = 1; i <= 7; i++) {
            if (i == id) {
                showtxt(id, sid);
            }
            else {
                hidetxt(i, sid);
            }
        }


    }
    function showtxt(id, sid) {
        var objtitle = $("#content_title" + id + "_" + sid);

        if (objtitle.css("display") == "none") {
            objtitle.show("fast");
        }
        else {

            hidetxt(id, sid);
        }
        //$("#"+id).show("fast");
    }
    function hidetxt(id, sid) {
        var objtitle = $("#content_title" + id + "_" + sid);
        objtitle.hide("fast");
    }
    function hidediv(id) {
        $("#box" + id).hide("fast");

        $("#li" + id).css({ "font-size": "14px", "color": "#7d7d7d" });
    }

    function showdiv(id) {
        if ($("#box" + id).css("display") == "none") {
            $("#box" + id).show("fast");
            $("#li" + id).css({ "font-size": "18px", "color": "#000000" });
        }

    }

</script> 
   <script type="text/javascript">
    function showMask() {
        $("#masks").css("height", $(document).height());
        $("#masks").css("width", $(document).width());
        $("#masks").fadeIn();
    }
    function showModel(divName) {
        showMask();
       /* var top = ($(window).height() - $(divName).height()) / 5;
        var left = ($(window).width() - $(divName).width()) / 2;
        var scrollTop = $(document).scrollTop();
        var scrollLeft = $(document).scrollLeft();*/
        $(divName).fadeIn();
    }
    function CloseMaskser() {

        $("#modelsever").fadeOut("slow");
        $("#masks").fadeOut("slow");
        $("#mask").fadeOut("slow");
    }

</script> 
 
 </body>
</html>
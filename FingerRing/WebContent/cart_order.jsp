﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="src.com.ring.vo.User"%>
<%@page import="src.com.ring.vo.Goods"%>
<%@page import="src.com.ring.service.GoodsService"%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
 <head></head>
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
 <link href="css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" /> 
  <script src="js/jquery.js" type="text/javascript"></script> 
  <script src="js/shoppcart.js" type="text/javascript"></script> 
  <title>购物车 - 提交订单</title> 
  <iframe src="javascript:false;" style="display: none;"></iframe> 
  <form id="aspnetForm" action="inuser" method="post" name="aspnetForm"> 
   <div> 
    <input type="hidden" value="/wEPDwULLTEyMjU5Nzc3NTgPZBYCZg9kFgICAxBkZBYGZg8PFgIeBFRleHQFD+S9oOWlve+8gUtMTmdPa2RkAgEPFgIeBWNsYXNzBRRzaG9wX25hdiBzaG9wX25hdi1kZGQCAg9kFgRmDxYCHgtfIUl0ZW1Db3VudAIBFgJmD2QWAmYPFQkFNjE5MjESIGNoZWNrZWQ9ImNoZWNrZWQiG+emj+W7uuecgem+meWyqeW4gumVv+axgOWOvxLlqIPlqIPkurLliLDpnZLlspsG5byg5ZCICzEzODUxNDM1NTkzDOm7mOiupOWcsOWdgAU2MTkyMQU2MTkyMWQCAQ8WAh8CAgEWAmYPZBYCZg8VBRdGb3JldmVy57O75YiXIOe7j+WFuOasvgkxOEvnmb3ph5EBNxHntKDmnZDngasmaGVhcnRzOwYxMCw4MDBkZF0UgGn0DxQ3QCVr+e2vHjvosTt8" id="__VIEWSTATE" name="__VIEWSTATE" /> 
   </div> 
   <div> 
    <input type="hidden" value="8C541494" id="__VIEWSTATEGENERATOR" name="__VIEWSTATEGENERATOR" /> 
   </div> 
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
     <div class="shop_nav shop_nav-dd" id="ctl00_showNav"></div> 
     <!--导航条end--> 

     <script type="text/javascript">
        function addressItemSelected(control) {
            $(control).addClass("check_bk").siblings().removeClass("check_bk");
            $(control).find("input:radio").attr("checked", true);
        }
        //市数据加载事件
        
        var CityDataLoadEvent = function () { };
        var DistrictDataLoadEvent = function () { };

        $(function () {
            //绑定地址点击事件
            $(".shop_adress-top:not(:last)").each(function () {
                $(this).click(function () {
                    hideNewAddress();
                    addressItemSelected(this);
                });
            });
            //绑定新增地址事件
            $(".shop_adress-top:last").click(function () {
                //地址标题，新增还是修改
                $(".shop_adress-add h4").text("新增新地址");
                addressItemSelected(this);
                showNewAddress();
            });

            /* //省下拉框ID
            var province = "#province";
            var city = "#city";
            var district = "#district";
            //加载省信息
            //省下拉框onchange事件
            $(province).change(function () {
                var dataLoad = function (data) {
                    $(city + " option:not(:first)").remove();
                    $(data).each(function () {
                        bindDdlData(city, this);
                    });
                    CityDataLoadEvent();
                };

            });
            //市下拉框onchange事件
            $(city).change(function () {
                var dataLoad = function (data) {
                    $(district + " option:not(:first)").remove();
                    $(data).each(function () {
                        bindDdlData(district, this);
                    });
                    DistrictDataLoadEvent();
                };

            });
 */
            //保存地址按钮事件
            $(".save").click(function () {
                var data = getData();
                if (data.name == "") {
                    alert("收货人不能为空。");
                    return;
                }
              /*   if (data.province == "") {
                    alert("省份不能为空。");
                    return;
                }
                if (data.city == "") {
                    alert("城市不能为空。");
                    return;
                }
                if (data.district == "") {
                    alert("区县不能为空。");
                    return;
                } */
                if (data.street == "") {
                    alert("详细地址不能为空。");
                    return;
                }
                if (data.postcode == "") {
                    alert("邮编不能为空。");
                    return;
                }
                if (data.mobile == "" && data.telephone == "") {
                    alert("手机号/固定电话必填一个。");
                    return;
                }
                var action = "save";
                if (isNaN(data.ID)) {
                    action = "add";
                }
            });
        });

        function bindDdlData(cid,data) {
            $(cid).append($("<option value=\"" + data.code + "\">" + data.name + "</option>"));
        }

        function showAddress(id) {
            //地址标题，新增还是修改
            $(".shop_adress-add h4").text("修改地址");
            $(".shop_adress-add").show();
            $(".shop_adress-add").attr("id","address_"+id);
        }

        function showNewAddress() {
            resetNewAddress();
            $(".shop_adress-add").show();
        }
        function hideNewAddress() {
            $(".shop_adress-add").hide();
        }
        function resetNewAddress() {
            $("#addressName").val("");
            $("#province").val("-1");
            $("#city").val("-1");
            $("#space").val("-1");

            $("#street").val("");
            $("#postcode").val("");
            $("#mobile").val("");
            $("#telephone").val("");
            $("#cbDefaultAddress").attr("checked", false);

            $("#city option:not(:first)").remove();
            $("#district option:not(:first)").remove();
        }

        function getData() {
            var id = $(".shop_adress-add").attr("id");
            id = id ? id.replace("address_", "") : undefined;
            return {
            "ID":id,
            "name":$("#addressName").val(),
            "province": $("#province option:selected").val() == "-1" ? "" : $("#province option:selected").text(),
            "city": $("#city option:selected").val() == "-1" ? "": $("#city option:selected").text(),
            "district": $("#district option:selected").val() == "-1" ? "" : $("#district option:selected").text(),
            "street":$("#street").val(),
            "postcode":$("#postcode").val(),
            "mobile":$("#mobile").val(),
            "telephone":$("#telephone").val(),
            "IsDefault":$("#cbDefaultAddress").attr("checked")};
        }

        function setAddress(data) {
            $("#addressName").val(data.name);
            $("#province option").each(function () {
                if (data.city.indexOf($(this).text()) != -1) {
                    $("#province").val($(this).val());
                    $("#province").change();
                }
            });
            CityDataLoadEvent = function () {
                $("#city option").each(function () {
                    if (data.city.indexOf($(this).text()) != -1) {
                        $("#city").val($(this).val());
                        $("#city").change();
                    }
                });
            };
            DistrictDataLoadEvent = function () {
                $("#district option").each(function () {
                    if (data.city.indexOf($(this).text()) != -1) {
                        $("#district").val($(this).val());
                    }
                });
            };

            $("#street").val(data.street);
            $("#postcode").val(data.code);
            $("#mobile").val(data.mobile);
            $("#telephone").val(data.phone);
            $("#cbDefaultAddress").attr("checked", data.IsDefault);
        }
        function deleteAddress(id) {
            if (confirm("确认是否删除？")) {
            }
        }

        function submitOrder() {
            //check
            if ($(".shop_adress-top:not(:last) :radio:checked").length == 0) {
                alert("请先选择一个地址。");
                return;
            }
            var nu = '1';

            
            $("#aspnetForm").submit();

        }
        $(function () {
            $("#aspnetForm").attr("action", "cart_order_success.jsp?gid=<%=good.getGid() %>");
        });

      
    </script> 
     <!--内容--> 
     <div class="shop_cort"> 
      <!--左边--> 
      <div class="shop_cort-left fl"> 
       <h3>收货人信息</h3> 
       <!--填写地址信息--> 
       <div class="shop_cort-adress"> 
        <!--地址--> 
        <div class="shop_adress-top"> 
         <input type="radio" checked="checked" name="adress" value="61921" />
         <label><%=user.getAddress() %></label>&nbsp;&nbsp;
         <label> <%=user.getUname() %>(收)  手机号: <%=user.getPhone() %></label>
         <span>默认地址</span>
         <a href="javascript:showAddress(61921);">修改</a>
         <i>|</i>
         <a href="javascript:deleteAddress(61921);">删除</a> 
        </div> 
        <div class="shop_adress-top"> 
         <input type="radio" id="addressNew" name="adress" />
         <label class="adress_color" for="addressNew">添加新地址</label> 
        </div> 
        <!--地址end--> 
        <!--新加地址--> 
        <div style="display:none;" class="shop_adress-add"> 
         <h4>添加新地址:</h4> 
         <div class="shop_adress-Toadd"> 
          <label><i>*</i>收 货 人：</label> 
          <input type="text" class="true_name" name="realname" placeholder="请准确填写真实姓名" id="addressName" /> 
         </div> 
         <div class="shop_adress-Toadd"> 
          <label><i>*</i>所在地区：</label> 
          <select id="province"> <option value="-1">请输入省份</option> <option value="340000">陕西省</option></select> 
          <span>市：</span> 
          <select id="city"> <option value="-1">请输入城市</option><option value="710000">西安市</option> </select> 
          <span>县：</span> 
          <select id="district"> <option value="-1">请输入区县</option> </select> 
         </div> 
         <div class="shop_adress-Toadd"> 
          <label><i>*</i>详细地址：</label> 
          <input type="text" placeholder="请填写详细路名及门牌号" class="adt_1" id="street" /> 
         </div> 
         <div class="shop_adress-Toadd"> 
          <label><i>*</i>邮政编码：</label> 
          <input type="text" class="true_number" placeholder="请填写邮政编码" id="postcode" /> 
         </div> 
         <div class="shop_adress-Toadd"> 
          <label><i>*</i>手机号码：</label> 
          <input type="text" id="mobile" /> 
          <span class="oth_color">或</span> 
          <span>固定电话：</span> 
          <input type="text" id="telephone" /> 
         </div> 
         <div class="shop_adress-sp"> 
          <input type="checkbox" id="cbDefaultAddress" /> 
          <label for="cbDefaultAddress">设为默认地址</label> 
         </div> 
         <div class="shop_adress-save"> 
          <div class="bt1">
           <span class="save">保存收货人信息</span>
          </div> 
         </div> 
        </div> 
        <!--新加地址end--> 
        <div class="shop_adress-qr"> 
         <div class="shop_adressqr-top"> 
          <a class="fr" href="cart.jsp">返回修改购物车&gt;&gt;</a> 
          <span>确认订单信息</span> 
          <i>提示：专属订制产品，需要相关证书认证时间。建议尽快提交。</i> 
         </div> 
         <!--订单--> 
         <table cellspacing="0" cellpadding="0" border="0" class="shop_adressqr-of"> 
          <tbody>
           <tr class="shop_adressqr-first"> 
            <td class="shop_adress-shoop">商 品</td> 
            <td class="shop_adress-cz">材 质</td> 
            <td class="shop_adress-sc">手寸/尺寸</td> 
            <td class="shop_adress-kz">刻 字</td> 
            <td class="shop_adress-pirce">价 格</td> 
           </tr> 
           <tr class="shop_adressqr-sec"> 
            <td class="shop_adress-shoop"><%=good.getGname() %></td> 
            <td class="shop_adress-cz">18K白金</td> 
            <td class="shop_adress-sc">7</td> 
            <td class="shop_adress-kz">素材火♥</td> 
            <td class="shop_adress-pirce"><span style="font-family:微软雅黑">￥<%=good.getRate() %></span></td> 
           </tr> 
          </tbody>
         </table> 
         <!--订单end--> 
         <!--总计--> 
         <div class="shop_adress-zj"> 
          <div class="fl"> 
           <span>总计</span> 
          </div> 
          <div class="fr"> 
           <i>1</i> 
           <span>件商品</span> 
           <span>应付金额：</span> 
           <i style="font-family:微软雅黑" class="fw_bold">￥<%=good.getRate() %></i> 
          </div> 
         </div> 
         <!--总计--> 
         <!--最后一块--> 
         <div class="shop_adress-last"> 
          <div class="shop_adress-ddbz fl"> 
           <p>订单备注</p> 
           <textarea placeholder="此处请勿填写有关支付方面的信息,留言请在50字以内。" class="shop_adress-text" name="ordernote"></textarea> 
          </div> 
          <div onClick="submitOrder();" class="shop_adress-tjdd fr"> 
           <div class="bt1 fr">
            <span>立即提交订单</span>
           </div> 
          </div> 
         </div> 
         <!--最后一块end--> 
        </div> 
       </div> 
       <!--填写地址信息end--> 
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
     <!--内容end--> 
     <!--底部--> 
     <div class="cmain shop_foot"> 
      <p>Copyright &copy; 2006-2015 www.darryring.com 戴瑞珠宝 All Rights Reserved. 粤ICP备11012085号</p> 
      <p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p> 
      <div class="shop_foot-img"> 
       <img width="776" height="55" src="images/db.jpg" /> 
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
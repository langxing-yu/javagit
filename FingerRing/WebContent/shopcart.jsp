<%@page import="src.com.ring.vo.Shopcart"%>
<%@page import="java.util.List"%>
<%@page import="src.com.ring.service.GoodsService"%>
<%@page import="src.com.ring.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>购物车页面</title>
		<style>
			h1{
				text-align: center;
			}
			#user{
				font-size: 20px;
				padding-left: 30px;
			}
			table{
				font-size: 20px;
				text-align: center;
				margin: 20px auto;
			}
			td{
				width: 180px;
				height: 40px;
			}
			.number{
				width: 40px;
				text-align: center;
			}
		</style>
	</head>
	<body bgcolor="lightgreen">
		<h1>购物车</h1>
		<%
			Object obj = session.getAttribute("USER");
			if(null == obj) { // 表示未登录
				response.sendRedirect("login.jsp");
				return;
			}
			User user = (User)obj;
			// 查询当前登录用的购物车信息
			GoodsService bs = new GoodsService();
			List<Shopcart> shopcarts = bs.findShopcart(user.getUid());
		%>
		<div id="user">当前用户: <%=user.getUname() %></div>
		<hr size="5" color="green" />
		<table border="1">
			<tr>
				<td>
					<input type="checkbox" id="qx" />
					编号
				</td>
				<td>书名</td>
				<td>价格</td>
				<td>数量</td>
				<td>小计</td>
				<td>操作</td>
			</tr>
			<%
				double sum = 0;
				for(Shopcart shopcart: shopcarts){
					double subtotal = shopcart.getNumber()*shopcart.getPrice();
					sum += subtotal;
			%>	
				<tr>
					<td>
						<input type="checkbox" class="goodsid" value="<%=shopcart.getGid() %>" onclick="changeMoney(this,<%=subtotal %>);" />
						<%=shopcart.getGid() %>
					</td>
					<td><%=shopcart.getGname() %></td>
					<td><%=shopcart.getPrice() %></td>
					<td>
						<button onclick="subtract(this,<%=shopcart.getGid() %>)">-</button>
						<input type="number" class="number" value="<%=shopcart.getNumber() %>" min="1" />
						<button onclick="plus(this,<%=shopcart.getGid() %>)">+</button>
					</td>
					<td><%=subtotal %></td>
					<td>
						<a href="#">移除购物车</a>
					</td>
				</tr>
			<%		
				}
			%>
			<tr>
				<td colspan="6">
					总计: <span id="cash">0.00</span>元
					<button>生成订单</button>
				</td>
			</tr>
		</table>
		<a href="index.jsp">继续购物</a>
		<script>
			// 获取全选框
			var qx = document.getElementById("qx");
			var goodsids = document.getElementsByClassName("goodsid");
			// 获取总钱数标签
			var total_input = document.getElementById("cash");
			// 给全选框添加点击事件
			qx.onclick = function(){
				// 根据全选框的选中状态设置总钱数
				if(this.checked){ // 选中
					total_input.innerHTML = <%=sum %>;
				}else{ // 未选中
					total_input.innerHTML = "0.00";
				}
				for(var i=0;i<goodsids.length;i++){
					goodsids[i].checked = this.checked;
				}
			}
			
			// 编号框的点击事件
			function changeMoney(goods_input,subtotal){
				var gid = goods_input.value; // 2
				// 当前总钱数
				var totalstr = total_input.innerHTML.trim(); // "122.00"
				// string --> number
				var total = parseFloat(totalstr); // 122.0
				// 根据选中状态来计算最终的总钱数
				if(goods_input.checked){
					total += subtotal; // 总钱数
				}else{ // 未选中
					total -= subtotal; // 总钱数
					qx.checked = false;
				}
				
				total_input.innerHTML = total;
			}
			
			// 点击+号
			function plus(btn,bid){
				// 获取对应的数字框
				var number_input = btn.previousElementSibling;
				var numstr = number_input.value; // "4"
				// string --> number
				var num = parseInt(numstr);
				num++;
				// 将加1后的结果赋给数字框
				number_input.value = num;
				
				// 将修改后的数量传递到后台修改shopcart表
				location.href = "updateShopcart1?bid=" + bid + "&num=" + num;
			}
			
			// 点击-号
			function subtract(btn,bid){
				// 获取对应的数字框
				var number_input = btn.nextElementSibling;
				var numstr = number_input.value; // "4"
				// string --> number
				var num = parseInt(numstr);
				if(num>1){
					num--;
				}
				// 将加1后的结果赋给数字框
				number_input.value = num;
				
				// 将修改后的数量传递到后台修改shopcart表
				location.href = "updateShopcart1?bid=" + bid + "&num=" + num;
			}
		
		</script>
	</body>
</html>


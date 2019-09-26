<!--  <script>
			 			var	phone = document.getElementsByName("phone")[0];//获得框内手机号
			 			var username = document.getElementsByName("username")[0];//获得框内用户名
			 			var password = document.getElementsByName("password")[0];//获得框内密码
			 			var password1 = document.getElementsByName("password1")[0];//获得框内确认密码
			 		
				 		function dltest(){
				 			var	phonetxt = phone.value;
				 			var nametxt =username.value;
				 			var passtxt =password.value;
				 			var passtxt1 =password1.value;
				 			var j=0;//电话位数
				 			for(var i=0; i<phonetxt.length;i++){
				 				if(phonetxt[i] >='0'||phonetxt[i] <='9'){
				 					j++;
				 				}
				 			} 
				 			if(phonetxt.length!=11 || phonetxt.length!=j){
				 				out.println("<script>alert('手机号应为11位数字！！！');location.href='reg.jsp';</script>");
				 				return false;
				 			}
				 			if(nametxt.length<=2 || nametxt.length>=20){
								out.println("<script>alert('用户名应该大于2位小于20位！！！');location.href='reg.jsp';</script>");
								return false;
							}				 		
							
							if(passtxt.length<=4 || passtxt.length>=20){
								out.println("<script>alert('密码应该大于4位小于20位！！！');location.href='reg.jsp';</script>");
								return false;
							}
								var mcount = 0; 
								var qcount = 0; 
								for(var n=0; n<passtxt.length;n++){
									var ch = passtxt.charAt(n);
									if(ch >= '0' && ch <= '9'){
										mcount++;
									}else if(ch >= 'A' && ch <= 'Z' || ch >= 'a'&& ch <= 'z'){
										qcount++; 
									}
								}
								if(mcount == 0|| qcount==0){
									out.println("<script>alert('密码必须包含字母和数字！！！');location.href='reg.jsp';</script>");
									return false;
								}
								if(passtxt1!=passtxt){
									out.println("<script>alert('密码与确认密码不符！！！');location.href='reg.jsp';</script>");
									return false;
								}
							return true;
						}
			 		</script> -->
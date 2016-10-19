
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Trang Đăng Nhập</title>
      <link rel="stylesheet" type="text/css" href="Style.css">
      
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery1.12.4.min.js"></script>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>    
      <script src="lib/js/bootstrap.min.js"></script>
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
      
</head>
<body>
	<table style="height: 25px;"></table>
    <div class="container" >
    <table border="0" width="1002" cellpadding="0" cellspacing="0" align="center">
      <tr>
        <td height="24"></td>
      </tr>          
        <div class="container" align="center">
            <img  src="Image/spkt.jpg" class="img-responsive">
        </div>                   
    </table> 
      <form action="Login" method="post" id="contactForm" >     
        <div class="table-responsive" align="center">            	
        <div class="col-md-4 col-md-offset-4">
            <select  id="usertruycap" name="chucvu" >           		
           			<option type="text" value="GiangVien">Giảng viên</option>
            		<option id="check" value="TruongKhoa">Trưởng khoa</option>
            		<option id="check" value="PhongTCCB">Phòng TCCB</option>
              		<option id="check" value="TruongBoMon">Trưởng bộ môn</option>
               		<option id="check" value="HieuTruong">Ban giám hiệu</option>
                	<option id="check" value="Admin">Admin</option>
         	</select>        	     	
        </div>
            <br>

            <script>
              	$(document).ready(function(){
              		$("#InputUserName").focus(function(){
              			$(this).css("background-color","PowderBlue");            		
              		});
              		$("#InputUserName").blur(function(){
              			$(this).css("background-color","#ffffff");           		
              		});
              	});
      		</script>
      		<script>
              	$(document).ready(function(){
              		$("#InputPassword").focus(function(){
              			$(this).css("background-color","PowderBlue");            		
              		});
              		$("#InputPassword").blur(function(){
              			$(this).css("background-color","#ffffff");           		
              		});
              	});
      		</script>
      		
          	 <script>
              	$(document).ready(function(){
              		$("#btnDangNhap").mouseleave(function(){
              			$(this).css("background-color","#ffffff");            		
              		});
              		$("#btnDangNhap").mouseenter(function(){
              			$(this).css("background-color","PowderBlue");           		
              		});
              	});
      		</script>
      		
      		
           <table>
            <tr>
            <td>
            <div class="well" id="cc">
          
             <div id="11" class="form-group " >
				
                <label for="InputUserName"><span class="glyphicon glyphicon-user "></span><span id="1" > </span> Tên Tài Khoản</label>
                <input type="Text" class="form-control" id="InputUserName" name="InputUserName1" placeholder="Enter UserName">
             </div>  
             <p style="color: red;" id="kiemtrataikhoan2"></p>  
             <div id="22" class="form-group" >
             
                <label for="InputPassword"><span class="glyphicon glyphicon-lock"></span><span id="2" ></span> Mật khẩu</label>
                <input  type="password" class="form-control" id="InputPassword" name="InputPassword1" value="" placeholder="Password">
             </div>  
              <%-- <p style="color: red;" id="kiemtrataikhoan"><%= request.getAttribute("loi") %></p> --%>
              <div class="checkbox">
                <label><input type="checkbox">Nhớ tên tài khoản</label>
                
             </div>            
              <input onclick="validateForm()" id="btnDangNhap" class="btn center-block"  style="width: 20%; background-color: #ffffff;" type="submit" value="Đăng Nhập" >                                                              
              <a href="#doimatkhau" ><p align="center" style="color: black;" data-target="#doimatkhau" data-toggle="modal">Đổi mật khẩu</p></a>
           
            </div>
            </td>
            </tr>
            </table>
            </form>
            <script >
            	var x=document.getElementById("InputUserName");          		
          		var y=document.getElementById("InputPassword");
          		
          		$(document).ready(function(){
          			$('#InputPassword').on('input',function(){
          				
          					$("#22").removeClass("has-error has-feedback");
          					$("#2").removeClass("glyphicon glyphicon-remove form-control-feedback");
          				
          				
          			});
          		});
          		$(document).ready(function() {
          			$('#InputUserName').on('input',function() {
              			
              			if(x.value.length >= 6 )
                  		{                    				              				
                  			
                  			$("#11").removeClass("has-error has-feedback");
                  			$("#11").addClass("has-success has-feedback");                 			
                  			$("#1").removeClass("glyphicon glyphicon-remove form-control-feedback");
                  			$("#1").addClass("glyphicon glyphicon-ok form-control-feedback");
                  			document.getElementById("kiemtrataikhoan2").innerHTML="";
                  		}
              			else if(x.value.length==0||x.value==""||x.value==null)
              			{
              				$("#11").removeClass("has-error has-feedback");
              				$("#1").removeClass("glyphicon glyphicon-remove form-control-feedback");
              				$("#11").removeClass("has-success has-feedback");
              				$("#1").removeClass("glyphicon glyphicon-ok form-control-feedback");
              				document.getElementById("kiemtrataikhoan2").innerHTML="";
              			}
              			else
              			{
              				$("#11").removeClass("has-success has-feedback");
                  			$("#11").addClass("has-error has-feedback ");
                  			
                  			$("#1").removeClass("glyphicon glyphicon-ok form-control-feedback");
                  			$("#1").addClass("glyphicon glyphicon-remove form-control-feedback");
                  			document.getElementById("kiemtrataikhoan2").innerHTML="Tên tài khoản phải từ 6 kí tự trở lên";
              			}
              		});
          		});
            </script>
             <script>
              function validateText(id)
              {
              	if($("#"+id).val()==null || $("#"+id).val()=="")
              	{            		
              		if(id=="InputUserName")
              		{
              			var div = $("#"+id).closest("div");
                  		div.addClass("has-error has-feedback ");
              			var span=$("#"+1).closest("span");
                  		span.addClass("glyphicon glyphicon-remove form-control-feedback");
              		}
              		if(id=="InputPassword")
              		{
              			var div = $("#"+id).closest("div");
                  		div.addClass("has-error has-feedback ");
              			var span2=$("#"+2).closest("span");
              			span2.addClass("glyphicon glyphicon-remove form-control-feedback");
              		}
              		return false;
              	}
              	else
              		return true;
              }
              	$(document).ready(
              		function()
              		{
              			$("#btnDangNhap").click(function()
              			{
              				if(!validateText("InputUserName"))
              					return false;             				
              				if(!validateText("InputPassword"))
             					return false;
              				$("form#contactForm").submit();		           	             					    
              			});
              		}
              		);
              </script>
              <script >
              	function validateForm()
              	{
              		var x=document.getElementById("InputUserName").value;
              		var c=document.getElementById("usertruycap").value;
              		
              		var y=document.getElementById("InputPassword").value;
              		var text="";
              		
              		if(x==null||x==""||y==null||y=="")
              			text="Bạn chưa nhập tài khoản hoặc mật khẩu!";
              		/*
              		else
              			text="Tài khoản hoặc mật khẩu không đúng!";
              		document.getElementById("kiemtrataikhoan").innerHTML=text;*/
              		return false;
              	}
          	 </script>
              
              
              
              
              
              <br/>            
              <div class="modal" id="doimatkhau" tabindex="-1">
              <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                 <button class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Đổi mật khẩu</h4>        
                </div>
                <div class="modal-boby">
               

                <form method="post" id="contactform" action="DoiMatKhau" role="form">
                <div class="form-horizontal" >
                <div class="form-group">
                  <label for="ContactName" class="col-sm-4 control-label" >Tên tài khoản</label>
                  <div class="col-sm-8">
                  <input type="text" name="taikhoan" id="ContactName" class="form-control" placeholder="Nhập tài khoản" >
                </div>
                </div>
                <div class="form-group" >
                  <label for="ContactPass" class="col-sm-4 control-label">Mật khẩu cũ</label>
                  <div class="col-sm-8">
                  <input type="text" name="matkhaucu" id="ContactPass" class="form-control" placeholder="Nhập mật khẩu cũ" > 
                  </div>
                </div>
                <div class="form-group">
                  <label for="ContactPassNew" class="col-sm-4 control-label">Mật khẩu mới</label>
                  <div class="col-sm-8">
                  <input type="text" name="matkhaumoi" class="form-control" placeholder="Nhập mật khẩu mới" id="ContactPassNew">
                  </div>
                </div>
               
                <div class="form-group">
                  <label for="ContactPassAgain" class="col-sm-4 control-label">Nhập lại</label>
                  <div class="col-sm-8">
                  <input type="text" name="matkhaunhaplai" id="ContactPassAgain" class="form-control" placeholder="Nhập lại mật khẩu mới">
                  </div>
                </div>
                </div>                        
                <div class="modal-footer">
                <p style="color: red;" id="kiemtradoimatkhau"></p>
                           
                <div align="center">
				 <input type="submit" id="contactbtn" onclick="checktaikhoan()" class="btn btn-primary" value="Đồng ý" >
                  
                  <button class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
                </div>
              </form>              
              </div>
              </div>
              </div>                    
    </div>
    </div> 
    
    <h5 align="right"><strong>Powered and Designed by <u>Nhóm 7</u></strong></h5>         
        </div>    
      <script src="js/jquery.js"></script>
      <script src="js/jquery1.12.4.min.js"></script>
    
      <script src="js/bootstrap.min.js"></script>
      
      <script type="text/javascript" src="jquery.min.js"></script>
      <script type="text/javascript">
      function kt() {
    	  var x = new XMLHttpRequest();
    	  x.onreadystatechange = function() {
    		  if (this.readyState == 4 && this.status == 200) {
    			  document.getElementById("kiemtrataikhoan").innerHTML = this.responseText;
    		  }
    	  }
    	  x.open('POST', 'Login.java', true);
    	  x.send();
      }
      </script>
</body>
</html>
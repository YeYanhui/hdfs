<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<center>
		 <p>审核失败，请重试<font id="second" color="red">5</font>秒后返回修改资料界面</p>
  <br>
  <a href = "/hdfs/user/user_list.jsp" >点此直接返回</a>
        <% response.setHeader("refresh","5;url='/hdfs/user/ListUser?currentPage=1'");%>
	</center>
</body>
<script>
var second=5;
var timer;
function change()
{
    second--;

 if(second>-1)
 {
     document.getElementById("second").innerHTML=second;
  timer = setTimeout('change()',1000);
 }
 else
 {
     clearTimeout(timer);
 }
}
timer = setTimeout('change()',1000);
</script>
</html>
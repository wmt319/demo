<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>注册</title>
  <style>
    #a {
      width:50%;
      height:200px;
      border: 1px dashed ;
      background-color:lightyellow;
      text-align:center;
    }
    body{
      background-color:lightblue;
    }
  </style>
</head>
<body>
<form  action="doregister.jsp" method="post">
  <p>姓名:<input type="text" name="uname"></p>
  <p>密码:<input type="password" name="upwd"></p>
  <input type="reset" value="返回" onclick="javascript:location.href='login.jsp'">
  <input type="submit"  value="注册"  >
</form>
</body>
</html>
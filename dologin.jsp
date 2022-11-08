<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
  //接收login页面传递的数据
  String uname = request.getParameter("uname");
  String upwd = request.getParameter("upwd");
  // String uinfo = request.getParameter("uinfo");
  //连接数据库
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/izhao","root","030319");
  //创建对象
  PreparedStatement ps = con.prepareStatement("select * from izhao where uname=? and upwd=?");
  //给占位符赋值
  ps.setString(1, uname);
  ps.setString(2, upwd);
  //执行sql语句
  ResultSet rs = ps.executeQuery();
  //处理结果
  if(rs.next()){
    //转发
    //request.getRequestDispatcher("izhao.html").forward(request, response);
    out.print("<script>alert('登陆成功');location.href='izhao.html'</script>");
  }else{
    //失败
    out.print("<script>alert('用户名或密码错误，请重新登录');location.href='login.jsp'</script>");
  }
  //关闭连接
%>
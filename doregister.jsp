<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
  //设置编码-设置请求对象的编号
  request.setCharacterEncoding("utf-8");
  //接收注册页面传递的数据
  String uname = request.getParameter("uname");
  String upwd = request.getParameter("upwd");
 // String uinfo = request.getParameter("uinfo");
  //连接数据库
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/izhao","root","030319");
	/*
	查询到用户的最大编号
	最大编号+1，做为新添加的用户的编号
	*/

  //这里的代码是用来 得到最新编号的
  int nextId=1;//做为新用户的编号
  PreparedStatement ps = con.prepareStatement("select max(uid) from izhao");
  //执行sql语句
  ResultSet rs= ps.executeQuery();
  if(rs.next()){
    //查询到最大的编号，加1，就是新数据的编号
    nextId = rs.getInt(1)+1;
  }

  //这里的代码 开始执行添加用户操作
  ps = con.prepareStatement("insert into izhao values(?,?,?)");
  ps.setInt(1, nextId);
  ps.setString(2, uname);
  ps.setString(3, upwd);
  //ps.setString(4, uinfo);
  //执行sql语句
  int i = ps.executeUpdate();
  if(i>0){
    out.print("<script>alert('注册成功');location.href='login.jsp'</script>");
  }else{
    out.print("<script>alert('注册失败');location.href='register.jsp'</script>");
  }


%>
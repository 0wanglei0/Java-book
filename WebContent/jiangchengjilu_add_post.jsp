<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%
 

String gonghao=request.getParameter("gonghao");String xingming=request.getParameter("xingming");String jiangcheng=request.getParameter("jiangcheng");String shiyou=request.getParameter("shiyou");
//ResultSet RS_result=connDbBean.executeQuery("select * from [fdsfds] where fdsfssd='"+fdsfd+"'");

// if(RS_result.next())
//{
//out.print("<script>alert('�ð༶�Ѿ�����,�뻻�������Ƶİ༶!');window.history.go(-1);</script>");
//	}
//else{

	
  	  	String sql="insert into jiangchengjilu(gonghao,xingming,jiangcheng,shiyou) values('"+gonghao+"','"+xingming+"','"+jiangcheng+"','"+shiyou+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('���ӳɹ�!!');location.href='jiangchengjilu_add.jsp';</script>");
  	  
//	}
//RS_result.close();

 %>
  </body>
</html>

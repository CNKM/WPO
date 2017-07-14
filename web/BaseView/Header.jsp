<%@ page import="Comm.CommHelper" %><%--
  Created by IntelliJ IDEA.
  User: k
  Date: 17-7-14
  Time: 下午11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //定义获取根路径
    String RootPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
    CommHelper.setServerRootPath(RootPath);
    String UILibPath =RootPath+"UILib/AmazeUI/assets/";
%>
<script type="text/javascript" src="<%=UILibPath%>js/amazeui.js"></script>
<link rel="stylesheet" type="text/css" href="<%=UILibPath%>css/amazeui.css">
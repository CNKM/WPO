<%--
  Created by IntelliJ IDEA.
  User: k
  Date: 17-7-14
  Time: 下午10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Project Online</title>
    <jsp:include page="BaseView/Header.jsp"/>
      <style>
          .header {
              text-align: center;
          }
          .header h1 {
              font-size: 200%;
              color: #333;
              margin-top: 30px;
          }
          .header p {
              font-size: 14px;
          }
      </style>
  </head>
  <body>
  <div class="header">
    <div class="am-g">
      <h1>Project Online</h1>
      <p>计划、跟踪、协调、总结、分享</p>
    </div>
    <hr />
  </div>
  <div class="am-g" >
    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
      <h3>登录</h3>
      <form method="post" class="am-form" action="DoUserLogin">
        <label for="u">电话号码:</label>
        <input type="tel" name="u" id="u" value="">
        <br>
        <label for="p">登录密码:</label>
        <input type="password" name="p" id="p" value="">
        <br>
        <label for="remember-me">
          <input id="remember-me" type="checkbox">
          记住密码
        </label>
        <br />
        <div class="am-cf">
          <input type="submit" name="" value="登录" class="am-btn am-btn-primary am-btn-block">
        </div>
      </form>
    </div>
  </div>
  </body>
</html>

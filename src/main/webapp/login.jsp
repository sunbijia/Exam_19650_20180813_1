<%--
  Created by IntelliJ IDEA.
  User: sbj
  Date: 2018/8/13
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
    <style type="text/css">
        .center{
            text-align: center;
        }
    </style>
</head>
<body>
<div class="center">
    <h1>电影租赁系统登陆页面</h1>
    <form id="indexform" name="indexForm" action="LoginServlet" method="post">
        <table border="0" style="width: 250px;margin: 0 auto;">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username"></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="登录">
    </form>
</div>
</body>
</html>

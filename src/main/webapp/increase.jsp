<%--
  Created by IntelliJ IDEA.
  User: sbj
  Date: 2018/8/13
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>新增信息</title>
    <style type="text/css">
        .right{
            text-align: right;
        }
        .button{
            position: relative;
            color: rgba(255, 255, 255, 1);
            text-decoration: none;
            background-color: #0d9be2;
            font-weight: 700;
            font-size: 17px;
            display: block;
            margin-top: 20px;
            padding: 4px;
            border-radius: 8px;
            width: 100px;
            height:40px;
            text-align: center;
            -webkit-transition: all .1s ease;
            -moz-transition: all .1s ease;
            transition: all .1s ease;
            float:right;
            right: 50%;
            margin-right: -50px;
        }
        .button:active{
            position: relative;
            top: 6px;
        }
    </style>
</head>
<body style="text-align: center;margin-top: 20px;">
<h2>新增信息</h2>
<form action="IncreaseServlet" method="post">
    <%--<input type="hidden" name="fid" value="<%=request.getParameter("fid")%>" />--%>
    <table border="0" cellpadding:10 style="width: 250px;margin: 0 auto; font-size: 16px;">
    <tr>
        <td class="right">title：</td>
        <td><input type="text" name="title" value="" tabindex="1" id="title"/></td>
    </tr>
    <tr>
        <td class="right">description：</td>
        <td><input type="text" name="description" value="" tabindex="1" style="height:20px;"/></td>
    </tr>
    <tr>
        <td class="right">language ：</td>
        <td>
            <select name="language" id="">
                <option value="" selected>Please select a language -</option>
                <option value="English">English -</option>
                <option value="Italian">Italian -</option>
                <option value="Japanese">Japanese -</option>
                <option value="Mandarin">Mandarin -</option>
                <option value="French">French -</option>
                <option value="German">German -</option>
            </select>
        </td>
    </tr>
    </table>
    <input type="submit" class="button" value="保存" onmousedown="myFunction()" />
</form>
<script type="text/javascript">
    function myFunction(){
        var title=document.getElementById("title");
        var titlev=title.value;
        if(titlev==""){
            alert("请输入title");
        }
    }
</script>
</body>
</html>

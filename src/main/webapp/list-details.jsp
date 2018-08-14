<%--
  Created by IntelliJ IDEA.
  User: sbj
  Date: 2018/8/13
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page import="com.hand.domain.gainServlet"%>
<html>
<head>
    <title>列表详情</title>
    <style type="text/css">
        .tftable {
            font-size: 12px;
            color: #333333;
            width: 100%;
            border-width: 1px;
            border-color: #729ea5;
            border-collapse: collapse;
        }

        .tftable th {
            font-size: 12px;
            background-color: #acc8cc;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #729ea5;
            text-align: left;
        }

        .tftable tr {
            background-color: #ffffff;
        }

        .tftable td {
            font-size: 12px;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #729ea5;
        }

        .tftable tr:hover {
            background-color: #ffff99;
        }
        .button{
            position: relative;
            color: rgba(255, 255, 255, 1);
            text-decoration: none;
            background-color: #0d9be2;
            font-weight: 700;
            font-size: 12px;
            display: block;
            padding: 4px;
            border-radius: 8px;
            width: 55px;
            text-align: center;
            -webkit-transition: all .1s ease;
            -moz-transition: all .1s ease;
            transition: all .1s ease;
            float:right;
        }
        .button:active{
            position: relative;
            top: 6px;
        }
    </style>
</head>
<body>
<table class="tftable" border="1">
    <tr>
        <th>film_id</th>
        <th>title</th>
        <th>description</th>
        <th>language</th>
        <th style="width: 110px">operate</th>
    </tr>
     <%
        List<gainServlet> list=(List<gainServlet>)request.getAttribute("list");
        for(int i=0;i<list.size();i++){
            gainServlet gs=list.get(i);
//            request.setAttribute("fid",gs.getFid());

     %>
    <tr>
        <td><%=gs.getFid()%></td>
        <td><%=gs.getTitle()%></td>
        <td><%=gs.getDescription()%></td>
        <td><%=gs.getLanguage()%></td>
        <td>
            <a href="DeleteServlet?fid=<%=gs.getFid()%>"><button type="button" class="button">删除</button></a>
            <a href="edit.jsp?fid=<%=gs.getFid()%>&tit=<%=gs.getTitle()%>&dec=<%=gs.getDescription()%>&lan=<%=gs.getLanguage()%>"><button type="button" class="button">编辑</button></a>
        </td>
    </tr>
    <%} %>
<%--    <c:forEach items="${list }" var="k">
        <tr>
            <td>${k.tid }</td>
            <td>${k.title }</td>
            <td>${k.content }</td>
            <td>${k.priority }</td>
            <td>${k.creatTime }</td>
            <td>${k.updateTime }</td>
            <td>${k.comments }</td>
        </tr>
    </c:forEach>--%>
</table>
<div>
    <%--<a href="increase.jsp?uid=<%=request.getAttribute("uid")%>"><button type="button" class="button">新增</button></a>--%>
    <%--<a href=""><button type="button" class="button">更新</button></a>
    <a href=""><button type="button" class="button">删除</button></a>--%>
</div>
</body>
</html>

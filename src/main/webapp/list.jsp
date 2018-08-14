<%--
  Created by IntelliJ IDEA.
  User: sbj
  Date: 2018/8/13
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.List"%>
<%@page import="com.hand.domain.gainServlet"%>
<html>
<head>
    <title>film列表</title>
    <!--basic styles-->

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <!--ace styles-->

    <link rel="stylesheet" href="css/ace.min.css" />
    <link rel="stylesheet" href="css/ace-responsive.min.css" />
    <link rel="stylesheet" href="css/ace-skins.min.css" />
    <!--fonts-->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
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
            margin-top: 20px;
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
<div class="navbar" style="height: 45px;">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a href="#" class="brand"> <small>电影租赁系统</small>
            </a>
            <!--/.brand-->
            <ul class="nav ace-nav pull-right">
                <li class="light-blue"><span class="user-info"> <small>欢迎您,</small>
							<%=request.getAttribute("user")%>
					</span></li>
            </ul>
            <!--/.ace-nav-->
        </div>
        <!--/.container-fluid-->
    </div>
    <!--/.navbar-inner-->
</div>
<div class="main-container container-fluid">

    <div class="sidebar" id="sidebar">
        <ul class="nav nav-list mainmenu">
            <li><a href="javascript:void(0)" data-url="LookServlet"> <span class="menu-text">
							电影列表 </span>
            </a></li>
        </ul>
        <div>
            <a href="increase.jsp"><button type="button" class="button" style="right: 50%;margin-right: -22px;">新增</button></a>
        </div>
    </div>

    <div class="main-content">
        <div id="main_right" style="width: 100%;height: 10000%;">
            <iframe id="mainFrame" src="LookServlet" frameborder="0"
                    width="100%" height="100%" scrolling="no"></iframe>
        </div>
        <!--main_right结束-->
    </div>
</div>
</body>
</html>

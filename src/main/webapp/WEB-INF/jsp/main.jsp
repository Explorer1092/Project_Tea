<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/4
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style  type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            background-color:black;
        }
        .tab{
            width: 900px;
            height: auto;
            text-align: center;
            border: 1px solid seashell;
            position: absolute;
            left:60px;
        }
        .head{
            background-color: darkkhaki;
        }

        a{
            text-decoration: none;
        }
        a:link,a::after{
            color:saddlebrown;
        }
        a:hover,a:active{
            color: burlywood;
        }
        .tab tr{
            height: 60px;
        }
        .manager_main_top{
            width: 100%;
            height:40px;
        }
        .manager_main_bottom ul, .left_btn ul{
            list-style-type: none;
        }
        ul li{
            text-decoration: none;
            display: inline;
            margin: 0;
            padding: 0;
        }
        .manager_left{
            width: 200px;
            height: 87%;
            background-color:black;
            border: 5px solid rgb(48, 46, 46);
            border-radius: 5px;
        }
        .manager_right{
            width: 1100px;
            height: 87%;
            position: absolute;
            top: 40px;
            left: 210px;
            border-top: 5px solid rgb(48, 46, 46);
            border-bottom: 5px solid rgb(48, 46, 46);
            border-right: 5px solid rgb(48, 46, 46);
            background-color: white;
            border-radius: 5px;
        }
        .top_title{
            width: 200px;
            height: 40px;
            text-align: center;
            font-size: 22px;
            position: absolute;
            top: 5px;
            color: aliceblue;
        }
        .top_welcome{
            width: 200px;
            height: 40px;
            color: white;
            text-align: center;
            position: absolute;
            right: 10%;
            padding-top: 13px;
        }
    </style>
</head>
<body>
<div class="manager_main_top">
    <div class="top_title">
        茶歇后台管理
    </div>
    <div class="top_welcome">
        ${userName},欢迎您！
    </div>
</div>
<div class="manager_main_bottom">
    <ul>
        <li>
            <div class="manager_left">

                <div class="left_btn">

                </div>
            </div>>
        </li>
        <li>
            <div class="manager_right">
                <table class="tab">
                    <tr class="head">
                        <td>序号</td>
                        <td>名称</td>
                        <td>介绍</td>
                        <td>图片路径</td>
                        <td>其他</td>
                        <td>类型</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${cookies}" var="tcookie" varStatus="status">
                        <tr>
                            <td>${status.count}</td>
                            <td>${tcookie.cName}</td>
                            <td>${tcookie.cIntroduce}</td>
                            <td>${tcookie.cImagePath}</td>
                            <td>${tcookie.cOther}</td>
                            <td>${tcookie.cType}</td>
                            <td><a href="${pageContext.request.contextPath}/info/get/cookie?id=${tcookie.cId}">查看</a> <a href="${pageContext.request.contextPath}/info//get/update?id=${tcookie.cId}">修改</a> <a href="${pageContext.request.contextPath}/info/delete/cookie?id=${tcookie.cId}">删除</a></td>
                        </tr>
                    </c:forEach>

                    <a href="${pageContext.request.contextPath}/info/jump/jsp">糕点添加</a>
                </table>
            </div>
        </li>
    </ul>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 2017/6/1
  Time: 下午6:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>注册成功</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="vendor/jquerymobile/jquery.mobile.min.css"/>
    <link rel="stylesheet" href="vendor/waves/waves.min.css"/>
    <link rel="stylesheet" href="vendor/wow/animate.css"/>
    <link rel="stylesheet" href="css/nativedroid2.css"/>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


</head>
<body>

<div data-role="page" class="nd2-no-menu-swipe">

    <nd2-include data-src="left-panel.jsp"></nd2-include>

    <div data-role="header" data-position="fixed" class="wow fadeIn">
        <a href="#leftpanel2" class="ui-btn ui-btn-left wow fadeIn" data-wow-delay='0.8s'><i class="zmdi zmdi-menu"></i></a>
        <h1 class="wow fadeIn" data-wow-delay='0.4s'>注册成功</h1>
    </div>

    <div role="main" class="ui-content wow fadeIn" data-inset="false" data-wow-delay="0.2s">


        <form action="launchActivity.do" method="post" data-ajax="false" enctype="multipart/form-data">
            <%--<form action="launchActivity.do" method="post" data-ajax=“false” enctype="multipart/form-data" >--%>


            <div class="row">


                <div class="col-xs-12 col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
                    <div class="box">

                        <h3>恭喜你注册成功!🎉</h3>
                        <img src="${sessionScope.user.portraitImage}" width="50px" height="50px" alt="">
                       <span> <h2>账号:${sessionScope.user.id}</h2>（记住您的账号ID，登录时请使用这个账号）</span>
                        <h4>昵称:${sessionScope.user.name}</h4>
                        <h4>手机:${sessionScope.user.phoneNumber}</h4>
                        <h4>邮箱:${sessionScope.user.email}</h4>


                        <a href="Login.jsp" class="ui-btn ui-btn-raised clr-primary">登录去咯！</a>
                    </div>

                </div>

            </div>

        </form>


    </div>

    <div data-role="footer" data-position="fixed">
        <div data-role="navbar">
            <ul>
                <li><a href="Activity.jsp" data-icon="bars">主页</a></li>
                <li><a href="MyOrders.jsp" data-icon="mail">订单</a></li>
                <li><a href="myFavorite.jsp" data-icon="heart">喜欢</a></li>
                <li><a href="launchActivity.jsp" data-icon="user">发起</a></li>

            </ul>
        </div>
    </div>

</div>


<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>--%>
<%--<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>--%>
<%--<script src="http://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>--%>
<%--<script--%>
<%--src="https://code.jquery.com/jquery-2.2.4.js"--%>
<%--integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="--%>
<%--crossorigin="anonymous"></script>--%>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="vendor/waves/waves.min.js"></script>
<script src="vendor/wow/wow.min.js"></script>
<script src="js/nativedroid2.js"></script>
<%--<script src="nd2settings.js"></script>--%>
</body>
</html>

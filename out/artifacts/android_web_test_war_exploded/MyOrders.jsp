<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 2017/5/29
  Time: 下午6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的订单</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css"/>
    <link rel="stylesheet" href="vendor/waves/waves.min.css"/>
    <link rel="stylesheet" href="css/nativedroid2.css"/>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>
<body>

<div data-role="page">

    <nd2-include data-src="left-panel.jsp"></nd2-include>


    <div data-role="header" data-position="fixed">
        <a href="#leftpanel2" class="ui-btn ui-btn-left"><i class="zmdi zmdi-menu"></i></a>
        <h1>我的订单</h1>
    </div>

    <div role="main" class="ui-content" data-inset="false">

        <c:forEach var="order" items="${sessionScope.myOrders}">
            <div class="nd2-card card-media-right card-media-large ">


                <div class="card-media">
                    <img src="${order.image}">
                </div>

                <div class="card-title has-supporting-text">
                    <h3 class="card-primary-title">${order.activity_name}</h3>
                    <h5 class="card-subtitle">发起人:${order.launcher_name}
                        &nbsp;id:${order.launcher_id}</h5>
                </div>

                <div class="card-supporting-text has-action has-title">

                        <%--<p> 介绍:${sessionScope.createOrder.info}</p>--%>
                    <p>时间:${order.date} ${order.time}</p>
                    <p>地点:${order.location}</p>
                    <p>持续时间:${order.during_time}</p>

                    <p>发起人姓名:${order.launcher_name}</p>
                    <p>发起人联系方式:${order.launcher_phoneNumber}</p>

                    <hr>
                    <%--<p> 参加人姓名:${order.user_name}</p>--%>
                    <%--<p> 参加人预留手机号:${order.user_phoneNumber}</p>--%>
                    <%--<hr>--%>
                    <h5 class="align-right">提交订单日期:${order.addTime}</h5>
                    <h4 class="align-right">活动费:${order.cost}￥</h4>

                </div>

                <%--<div class="card-action">--%>
                    <%--<div class="row between-xs">--%>
                        <%--<div class="col-xs-12 align-right">--%>
                            <%--<div class="box">--%>
                                <%--<a href="submitOrder.do" class="ui-btn ui-btn-inline ui-btn-b ">提交订单</a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

            </div>
        </c:forEach>

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
<script src="js/nativedroid2.js"></script>
<script src="nd2settings.js"></script>


<!--<script>-->
<!--navigator.geolocation.getCurrentPosition();-->


<!--$("#location").html(position.coords.latitude.toString());-->
<!--</script>-->

</body>
</html>

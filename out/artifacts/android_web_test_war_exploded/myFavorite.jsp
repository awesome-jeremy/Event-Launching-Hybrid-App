<%@ page import="DAO.ActivityDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javabean.Activity" %><%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 2017/5/29
  Time: 下午6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的收藏夹</title>
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
        <h1>我的收藏夹</h1>
    </div>

    <div role="main" class="ui-content" data-inset="false">


        <c:forEach var="activity" items="${sessionScope.allMyFavoriteActivities}">
            <a href="order.do?activity_id=${activity.id}&user_id=${sessionScope.user.id}">
                <div class="nd2-card">


                    <div class="card-media">
                        <img src="${activity.image}">

                        <div class='card-media-overlay with-background'>

                            <div class="card-title has-supporting-text">
                                <h3 class="card-primary-title">主题: ${activity.name}</h3>
                                <h5 class="card-subtitle">时间地点: ${activity.date} ${activity.time}
                                    &nbsp;&nbsp;${activity.location}</h5>
                                    <%--<h5 class="card-subtitle">地点: ${activity.location} </h5>--%>
                                <h5 class="card-subtitle">费用: ${activity.cost}￥</h5>


                                    <%--<h4 class="card-subtitle">详情: ${activity.info}</h4>--%>
                            </div>

                            <div class="card-action">
                                    <%--<div class="row between-xs">--%>
                                <div class="col-xs-12 align-right">
                                    <div class="box">
                                        <a href="order.do?activity_id=${activity.id}" class="ui-btn ui-btn-inline ">报名</a>

                                    </div>
                                </div>
                                    <%--</div>--%>
                            </div>

                        </div>

                    </div>


                </div>
            </a>
        </c:forEach>


        <%--</c:forEach>--%>
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

<script type="text/javascript">
    var scrollstart_top, scrollstop_top, is_swipe;
    $(document).on("scrollstart", function () {
        scrollstart_top = $(document).scrollTop();
        is_swipe = false;
    });
    $(document).on("scrollstop", function () {
        if (!is_swipe && $(document).scrollTop() == 0 && $(document).scrollTop() == scrollstart_top && scrollstop_top == $(document).scrollTop()) {
            window.location.reload();
        }
        scrollstop_top = $(document).scrollTop();
    });
    $(document).on("swipe", function () {
        is_swipe = true;
    });
</script>

<!--<script>-->
<!--navigator.geolocation.getCurrentPosition();-->


<!--$("#location").html(position.coords.latitude.toString());-->
<!--</script>-->

</body>
</html>

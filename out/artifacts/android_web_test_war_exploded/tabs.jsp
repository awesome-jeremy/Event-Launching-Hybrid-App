<%@ page import="DAO.ActivityDAO" %>
<%@ page import="javabean.Activity" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 2017/5/29
  Time: 下午6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Let's Go!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <link rel="stylesheet" href="../css/font-awesome.min.css"/>
    <%--<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"/>--%>


    <link rel="stylesheet" href="../css/jquery.mobile-1.4.5.min.css"/>
    <%--<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css"/>--%>

    <link rel="stylesheet" href="../vendor/waves/waves.min.css"/>
    <link rel="stylesheet" href="../css/nativedroid2.css"/>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>
<body>

<div data-role="page">

    <nd2-include data-src="left-panel.jsp"></nd2-include>


    <div data-role="header" data-position="fixed" class="wow fadeIn">
        <a href="#leftpanel2" class="ui-btn ui-btn-left"><i class="zmdi zmdi-menu"></i></a>
        <h1 class="wow fadeIn" data-wow-delay='0.4s'>Let's Go!</h1>

        <ul data-role="nd2tabs" data-swipe="true">
            <li data-tab="index" data-tab-active="true">全部</li>
            <li data-tab="friend" >朋友</li>
            <li data-tab="makingFriend">交友</li>
            <li data-tab="sports">运动</li>
            <li data-tab="entertainment">娱乐</li>
            <li data-tab="marriage">相亲</li>
            <li data-tab="literature">文学</li>
            <li data-tab="photography">摄影</li>

        </ul>
    </div>

    <div role="main" class="ui-content wow fadeIn" data-inset="false" data-wow-delay="0.2s">
        <div class="row">


            <div class="col-xs-12 col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">

                <div data-role="nd2tab"
                     data-tab="index">


                    <%ActivityDAO activityDAO = new ActivityDAO();%>
                    <%ArrayList<Activity> allActivities = activityDAO.getAllActivities();%>


                    <!-- Simple Card with Title !-->
                    <c:forEach var="activity" items="<%=allActivities%>">
                        <%--<c:forEach var="activity" items="${sessionScope.allActivities}">--%>
                        <div class="nd2-card">

                            <div class="card-title has-avatar">
                                <img class="card-avatar" src="${activity.portraitImage}">
                                <h3 class="card-primary-title">${activity.launcher_name}</h3>
                                <h5 class="card-subtitle">发起时间: ${activity.launch_time}</h5>
                            </div>

                            <a href="#">
                                <div class="card-media">
                                    <img src="${activity.image}">
                                </div>
                            </a>


                            <div class="card-supporting-text has-action">

                                    <%--<p>活动id:${activity.id}</p>--%>
                                <p>活动主题:<strong>${activity.name}</strong> &nbsp;&nbsp;&nbsp;类型:<strong>${activity.type}</strong></p>
                                <p> 介绍:${activity.info}</p>
                                <p>时间:${activity.date}  ${activity.time}</p>

                                <p>地点:${activity.location}</p>
                                <p>持续时间:${activity.during_time}</p>
                                <p>活动费:${activity.cost}￥</p>

                            </div>


                            <div class="card-action">
                                <div class="row between-xs">
                                    <div class="col-xs-6">
                                        <div class="box">
                                            <a class="ui-btn ui-btn-inline ui-btn-fab" name="fav" href="#" id="${activity.id}"
                                               data-ajax="false"><i class='zmdi zmdi-favorite'></i></a>
                                                <%--<button class="ui-btn ui-btn-inline ui-btn-fab" onclick="addToMyFavorite(${activity.id})"--%>
                                                <%--><i class='zmdi zmdi-favorite'></i></button>--%>
                                                <%--a标签没有onclick时间 解决办法--%>
                                            <a href="#" class="ui-btn ui-btn-inline ui-btn-fab"><i
                                                    class='zmdi zmdi-mail-reply zmd-flip-horizontal'></i></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 align-right">
                                        <div class="box">
                                            <a href="order.do?activity_id=${activity.id}" class="ui-btn ui-btn-inline ui-btn-b">报名参加</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </c:forEach>


                </div>

                <div data-role="nd2tab"
                     data-tab="friend">


                    <ul data-role="listview" data-icon="false">
                        <li data-role="list-divider">
                            Work
                        </li>
                        <li>
                            <a href="#">
                                <img src="//lorempixel.com/150/150/people/6/"
                                     class="ui-thumbnail ui-thumbnail-circular"/>
                                <h2>Gale Cecil</h2>
                                <p>gale.cecil@company.com</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="//lorempixel.com/150/150/people/5/"
                                     class="ui-thumbnail ui-thumbnail-circular"/>
                                <h2>Bernard Desrosier</h2>
                                <p>bernhard.desrosier@company.com</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="//lorempixel.com/150/150/people/7/"
                                     class="ui-thumbnail ui-thumbnail-circular"/>
                                <h2>Emerita Scholl</h2>
                                <p>emerita.scholl@company.com</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="//lorempixel.com/150/150/people/8/"
                                     class="ui-thumbnail ui-thumbnail-circular"/>
                                <h2>Elmer Eyer</h2>
                                <p>elmer.eyer@company.com</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="//lorempixel.com/150/150/people/9/"
                                     class="ui-thumbnail ui-thumbnail-circular"/>
                                <h2>Shona Mckibben</h2>
                                <p>shona.mckibben@company.com</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="//lorempixel.com/150/150/people/10/"
                                     class="ui-thumbnail ui-thumbnail-circular"/>
                                <h2>Hilma Mercer</h2>
                                <p>hilma.mercer@company.com</p>
                            </a>
                        </li>
                    </ul>

                </div>

                <div data-role="nd2tab"
                     data-tab="makingFriend">


                    <%activityDAO = new ActivityDAO();%>
                    <%allActivities = activityDAO.getCertainTypeActivities("交友");%>


                    <!-- Simple Card with Title !-->
                    <c:forEach var="activity" items="<%=allActivities%>">
                        <%--<c:forEach var="activity" items="${sessionScope.allActivities}">--%>
                        <div class="nd2-card">

                            <div class="card-title has-avatar">
                                <img class="card-avatar" src="${activity.portraitImage}">
                                <h3 class="card-primary-title">${activity.launcher_name}</h3>
                                <h5 class="card-subtitle">发起时间: ${activity.launch_time}</h5>
                            </div>

                            <a href="#">
                                <div class="card-media">
                                    <img src="${activity.image}">
                                </div>
                            </a>


                            <div class="card-supporting-text has-action">

                                    <%--<p>活动id:${activity.id}</p>--%>
                                <p>活动主题:<strong>${activity.name}</strong> </strong> &nbsp;&nbsp;&nbsp;类型:<strong>${activity.type}</strong></p>
                                <p> 介绍:${activity.info}</p>
                                <p>时间:${activity.date}  ${activity.time}</p>

                                <p>地点:${activity.location}</p>
                                <p>持续时间:${activity.during_time}</p>
                                <p>活动费:${activity.cost}￥</p>

                            </div>


                            <div class="card-action">
                                <div class="row between-xs">
                                    <div class="col-xs-6">
                                        <div class="box">
                                            <a class="ui-btn ui-btn-inline ui-btn-fab" name="fav" href="#" id="${activity.id}"
                                               data-ajax="false"><i class='zmdi zmdi-favorite'></i></a>
                                                <%--<button class="ui-btn ui-btn-inline ui-btn-fab" onclick="addToMyFavorite(${activity.id})"--%>
                                                <%--><i class='zmdi zmdi-favorite'></i></button>--%>
                                                <%--a标签没有onclick时间 解决办法--%>
                                            <a href="#" class="ui-btn ui-btn-inline ui-btn-fab"><i
                                                    class='zmdi zmdi-mail-reply zmd-flip-horizontal'></i></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 align-right">
                                        <div class="box">
                                            <a href="order.do?activity_id=${activity.id}" class="ui-btn ui-btn-inline ui-btn-b">报名参加</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </c:forEach>


                </div>

                <div data-role="nd2tab"
                     data-tab="sports">


                    <%activityDAO = new ActivityDAO();%>
                    <%allActivities = activityDAO.getCertainTypeActivities("运动");%>


                    <!-- Simple Card with Title !-->
                    <c:forEach var="activity" items="<%=allActivities%>">
                        <%--<c:forEach var="activity" items="${sessionScope.allActivities}">--%>
                        <div class="nd2-card">

                            <div class="card-title has-avatar">
                                <img class="card-avatar" src="${activity.portraitImage}">
                                <h3 class="card-primary-title">${activity.launcher_name}</h3>
                                <h5 class="card-subtitle">发起时间: ${activity.launch_time}</h5>
                            </div>

                            <a href="#">
                                <div class="card-media">
                                    <img src="${activity.image}">
                                </div>
                            </a>


                            <div class="card-supporting-text has-action">

                                    <%--<p>活动id:${activity.id}</p>--%>
                                <p>活动主题:<strong>${activity.name}</strong> </strong> &nbsp;&nbsp;&nbsp;类型:<strong>${activity.type}</strong></p>
                                <p> 介绍:${activity.info}</p>
                                <p>时间:${activity.date}  ${activity.time}</p>

                                <p>地点:${activity.location}</p>
                                <p>持续时间:${activity.during_time}</p>
                                <p>活动费:${activity.cost}￥</p>

                            </div>


                            <div class="card-action">
                                <div class="row between-xs">
                                    <div class="col-xs-6">
                                        <div class="box">
                                            <a class="ui-btn ui-btn-inline ui-btn-fab" name="fav" href="#" id="${activity.id}"
                                               data-ajax="false"><i class='zmdi zmdi-favorite'></i></a>
                                                <%--<button class="ui-btn ui-btn-inline ui-btn-fab" onclick="addToMyFavorite(${activity.id})"--%>
                                                <%--><i class='zmdi zmdi-favorite'></i></button>--%>
                                                <%--a标签没有onclick时间 解决办法--%>
                                            <a href="#" class="ui-btn ui-btn-inline ui-btn-fab"><i
                                                    class='zmdi zmdi-mail-reply zmd-flip-horizontal'></i></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 align-right">
                                        <div class="box">
                                            <a href="order.do?activity_id=${activity.id}" class="ui-btn ui-btn-inline ui-btn-b">报名参加</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </c:forEach>


                </div>

                <div data-role="nd2tab"
                     data-tab="entertainment">


                    <%activityDAO = new ActivityDAO();%>
                    <%allActivities = activityDAO.getCertainTypeActivities("娱乐");%>


                    <!-- Simple Card with Title !-->
                    <c:forEach var="activity" items="<%=allActivities%>">
                        <%--<c:forEach var="activity" items="${sessionScope.allActivities}">--%>
                        <div class="nd2-card">

                            <div class="card-title has-avatar">
                                <img class="card-avatar" src="${activity.portraitImage}">
                                <h3 class="card-primary-title">${activity.launcher_name}</h3>
                                <h5 class="card-subtitle">发起时间: ${activity.launch_time}</h5>
                            </div>

                            <a href="#">
                                <div class="card-media">
                                    <img src="${activity.image}">
                                </div>
                            </a>


                            <div class="card-supporting-text has-action">

                                    <%--<p>活动id:${activity.id}</p>--%>
                                <p>活动主题:<strong>${activity.name}</strong> </strong> &nbsp;&nbsp;&nbsp;类型:<strong>${activity.type}</strong></p>
                                <p> 介绍:${activity.info}</p>
                                <p>时间:${activity.date}  ${activity.time}</p>

                                <p>地点:${activity.location}</p>
                                <p>持续时间:${activity.during_time}</p>
                                <p>活动费:${activity.cost}￥</p>

                            </div>


                            <div class="card-action">
                                <div class="row between-xs">
                                    <div class="col-xs-6">
                                        <div class="box">
                                            <a class="ui-btn ui-btn-inline ui-btn-fab" name="fav" href="#" id="${activity.id}"
                                               data-ajax="false"><i class='zmdi zmdi-favorite'></i></a>
                                                <%--<button class="ui-btn ui-btn-inline ui-btn-fab" onclick="addToMyFavorite(${activity.id})"--%>
                                                <%--><i class='zmdi zmdi-favorite'></i></button>--%>
                                                <%--a标签没有onclick时间 解决办法--%>
                                            <a href="#" class="ui-btn ui-btn-inline ui-btn-fab"><i
                                                    class='zmdi zmdi-mail-reply zmd-flip-horizontal'></i></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 align-right">
                                        <div class="box">
                                            <a href="order.do?activity_id=${activity.id}" class="ui-btn ui-btn-inline ui-btn-b">报名参加</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </c:forEach>


                </div>

                <div data-role="nd2tab"
                     data-tab="marriage">


                    <%activityDAO = new ActivityDAO();%>
                    <%allActivities = activityDAO.getCertainTypeActivities("相亲");%>


                    <!-- Simple Card with Title !-->
                    <c:forEach var="activity" items="<%=allActivities%>">
                        <%--<c:forEach var="activity" items="${sessionScope.allActivities}">--%>
                        <div class="nd2-card">

                            <div class="card-title has-avatar">
                                <img class="card-avatar" src="${activity.portraitImage}">
                                <h3 class="card-primary-title">${activity.launcher_name}</h3>
                                <h5 class="card-subtitle">发起时间: ${activity.launch_time}</h5>
                            </div>

                            <a href="#">
                                <div class="card-media">
                                    <img src="${activity.image}">
                                </div>
                            </a>


                            <div class="card-supporting-text has-action">

                                    <%--<p>活动id:${activity.id}</p>--%>
                                <p>活动主题:<strong>${activity.name}</strong> </strong> &nbsp;&nbsp;&nbsp;类型:<strong>${activity.type}</strong></p>
                                <p> 介绍:${activity.info}</p>
                                <p>时间:${activity.date}  ${activity.time}</p>

                                <p>地点:${activity.location}</p>
                                <p>持续时间:${activity.during_time}</p>
                                <p>活动费:${activity.cost}￥</p>

                            </div>


                            <div class="card-action">
                                <div class="row between-xs">
                                    <div class="col-xs-6">
                                        <div class="box">
                                            <a class="ui-btn ui-btn-inline ui-btn-fab" name="fav" href="#" id="${activity.id}"
                                               data-ajax="false"><i class='zmdi zmdi-favorite'></i></a>
                                                <%--<button class="ui-btn ui-btn-inline ui-btn-fab" onclick="addToMyFavorite(${activity.id})"--%>
                                                <%--><i class='zmdi zmdi-favorite'></i></button>--%>
                                                <%--a标签没有onclick时间 解决办法--%>
                                            <a href="#" class="ui-btn ui-btn-inline ui-btn-fab"><i
                                                    class='zmdi zmdi-mail-reply zmd-flip-horizontal'></i></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 align-right">
                                        <div class="box">
                                            <a href="order.do?activity_id=${activity.id}" class="ui-btn ui-btn-inline ui-btn-b">报名参加</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </c:forEach>


                </div>

                <div data-role="nd2tab"
                     data-tab="literature">


                    <%activityDAO = new ActivityDAO();%>
                    <%allActivities = activityDAO.getCertainTypeActivities("文学");%>


                    <!-- Simple Card with Title !-->
                    <c:forEach var="activity" items="<%=allActivities%>">
                        <%--<c:forEach var="activity" items="${sessionScope.allActivities}">--%>
                        <div class="nd2-card">

                            <div class="card-title has-avatar">
                                <img class="card-avatar" src="${activity.portraitImage}">
                                <h3 class="card-primary-title">${activity.launcher_name}</h3>
                                <h5 class="card-subtitle">发起时间: ${activity.launch_time}</h5>
                            </div>

                            <a href="#">
                                <div class="card-media">
                                    <img src="${activity.image}">
                                </div>
                            </a>


                            <div class="card-supporting-text has-action">

                                    <%--<p>活动id:${activity.id}</p>--%>
                                <p>活动主题:<strong>${activity.name}</strong> </strong> &nbsp;&nbsp;&nbsp;类型:<strong>${activity.type}</strong></p>
                                <p> 介绍:${activity.info}</p>
                                <p>时间:${activity.date}  ${activity.time}</p>

                                <p>地点:${activity.location}</p>
                                <p>持续时间:${activity.during_time}</p>
                                <p>活动费:${activity.cost}￥</p>

                            </div>


                            <div class="card-action">
                                <div class="row between-xs">
                                    <div class="col-xs-6">
                                        <div class="box">
                                            <a class="ui-btn ui-btn-inline ui-btn-fab" name="fav" href="#" id="${activity.id}"
                                               data-ajax="false"><i class='zmdi zmdi-favorite'></i></a>
                                                <%--<button class="ui-btn ui-btn-inline ui-btn-fab" onclick="addToMyFavorite(${activity.id})"--%>
                                                <%--><i class='zmdi zmdi-favorite'></i></button>--%>
                                                <%--a标签没有onclick时间 解决办法--%>
                                            <a href="#" class="ui-btn ui-btn-inline ui-btn-fab"><i
                                                    class='zmdi zmdi-mail-reply zmd-flip-horizontal'></i></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 align-right">
                                        <div class="box">
                                            <a href="order.do?activity_id=${activity.id}" class="ui-btn ui-btn-inline ui-btn-b">报名参加</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </c:forEach>


                </div>

                <div data-role="nd2tab"
                     data-tab="photography">


                    <%activityDAO = new ActivityDAO();%>
                    <%allActivities = activityDAO.getCertainTypeActivities("摄影");%>


                    <!-- Simple Card with Title !-->
                    <c:forEach var="activity" items="<%=allActivities%>">
                        <%--<c:forEach var="activity" items="${sessionScope.allActivities}">--%>
                        <div class="nd2-card">

                            <div class="card-title has-avatar">
                                <img class="card-avatar" src="${activity.portraitImage}">
                                <h3 class="card-primary-title">${activity.launcher_name}</h3>
                                <h5 class="card-subtitle">发起时间: ${activity.launch_time}</h5>
                            </div>

                            <a href="#">
                                <div class="card-media">
                                    <img src="${activity.image}">
                                </div>
                            </a>


                            <div class="card-supporting-text has-action">

                                    <%--<p>活动id:${activity.id}</p>--%>
                                <p>活动主题:<strong>${activity.name}</strong> </strong> &nbsp;&nbsp;&nbsp;类型:<strong>${activity.type}</strong></p>
                                <p> 介绍:${activity.info}</p>
                                <p>时间:${activity.date}  ${activity.time}</p>

                                <p>地点:${activity.location}</p>
                                <p>持续时间:${activity.during_time}</p>
                                <p>活动费:${activity.cost}￥</p>

                            </div>


                            <div class="card-action">
                                <div class="row between-xs">
                                    <div class="col-xs-6">
                                        <div class="box">
                                            <a class="ui-btn ui-btn-inline ui-btn-fab" name="fav" href="#" id="${activity.id}"
                                               data-ajax="false"><i class='zmdi zmdi-favorite'></i></a>
                                                <%--<button class="ui-btn ui-btn-inline ui-btn-fab" onclick="addToMyFavorite(${activity.id})"--%>
                                                <%--><i class='zmdi zmdi-favorite'></i></button>--%>
                                                <%--a标签没有onclick时间 解决办法--%>
                                            <a href="#" class="ui-btn ui-btn-inline ui-btn-fab"><i
                                                    class='zmdi zmdi-mail-reply zmd-flip-horizontal'></i></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 align-right">
                                        <div class="box">
                                            <a href="order.do?activity_id=${activity.id}" class="ui-btn ui-btn-inline ui-btn-b">报名参加</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </c:forEach>


                </div>
            </div>
        </div>

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

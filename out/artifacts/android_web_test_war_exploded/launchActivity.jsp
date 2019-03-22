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
    <title>发起活动</title>
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
        <h1 class="wow fadeIn" data-wow-delay='0.4s'>活动发起</h1>
    </div>

    <div role="main" class="ui-content wow fadeIn" data-inset="false" data-wow-delay="0.2s">


        <form action="launchActivity.do" method="post" data-ajax="false" enctype="multipart/form-data">
        <%--<form action="launchActivity.do" method="post" data-ajax=“false” enctype="multipart/form-data" >--%>


            <div class="row">


                <div class="col-xs-12 col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
                    <div class="box">

                        <label for="name">活动名称:</label>
                        <input type="text" name="name" id="name"  data-clear-btn="true" placeholder="例：一起来骑行吧！">

                        <label for="type" class="select">活动类型</label>
                        <select name="type" id="type" data-native-menu="false">
                            <option value="交友">交友</option>
                            <option value="运动">运动</option>
                            <option value="娱乐">娱乐</option>
                            <option value="相亲">相亲</option>
                            <option value="文学">文学</option>
                            <option value="摄影">摄影</option>
                        </select>


                        <label for="date">活动日期:</label>
                        <input type="date" name="date" id="date" data-clear-btn="true" placeholder="">


                        <label for="time">开始时间</label>
                        <input type="time" name="time" id="time"  data-clear-btn="true" placeholder="">

                        <label for="during_time" class="select">持续时间</label>
                        <select name="during_time" id="during_time" data-native-menu="false">
                            <option value="10分钟">10分钟</option>
                            <option value="20分钟">20分钟</option>
                            <option value="30分钟">30分钟</option>
                            <option value="1小时">1小时</option>
                            <option value="1.5小时">1.5小时</option>
                            <option value="2小时" selected>2小时</option>
                            <option value="2.5小时">2.5小时</option>
                            <option value="3小时">3小时</option>
                            <option value="3.5小时">3.5小时</option>
                            <option value="4小时">4小时</option>
                            <option value="5小时">5小时</option>
                            <option value="6小时">6小时</option>
                            <option value="7小时">7小时</option>
                            <option value="8小时">8小时</option>
                            <option value="9小时">9小时</option>
                            <option value="10小时">10小时</option>
                            <option value="11小时">11小时</option>
                            <option value="12小时">12小时</option>
                            <option value="13小时">13小时</option>
                            <option value="14小时">14小时</option>
                            <option value="15小时">15小时</option>
                            <option value="16小时">16小时</option>
                            <option value="17小时">17小时</option>
                            <option value="18小时">18小时</option>
                            <option value="19小时">19小时</option>
                            <option value="20小时">20小时</option>
                            <option value="21小时">21小时</option>
                            <option value="22小时">22小时</option>
                            <option value="23小时">23小时</option>
                            <option value="1天">1天</option>
                            <option value="2天">2天</option>
                            <option value="3天">3天</option>
                            <option value="4天">4天</option>
                            <option value="5天">5天</option>
                            <option value="6天">6天</option>
                            <option value="7天">7天</option>
                            <option value="8天">8天</option>
                            <option value="9天">9天</option>
                            <option value="10天">10天</option>
                        </select>



                        <label for="location">活动地点:</label>
                        <input type="text" name="location" id="location" value="" data-clear-btn="true"
                               placeholder="例：杨浦区军工路上海理工大学操场">

                        <label for="numberUpperLimit">人数上限: 人</label>
                        <input type="text" name="numberUpperLimit" id="numberUpperLimit"  data-clear-btn="true"
                               placeholder="例：90">

                        <label for="cost">费用: 元</label>
                        <input type="text" name="cost" id="cost"  data-clear-btn="true" placeholder="例：30">

                        <label for="info">活动介绍:</label>
                        <textarea cols="40" rows="8" name="info" id="info" placeholder="...."></textarea>

                        <label for="image">活动图片</label>
                        <input type="file" name="image" id="image" data-clear-btn="true">

                        <%--<a href="#" class="ui-btn ui-btn-raised clr-primary">发起活动吧！</a>--%>
                        <input type="submit" class="ui-btn ui-btn-raised clr-primary" value="发起活动吧！">




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

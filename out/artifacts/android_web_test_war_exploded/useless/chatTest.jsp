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
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <%--<link rel="stylesheet" href="css/font-awesome.min.css"/>--%>
    <%--<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"/>--%>


    <link rel="stylesheet" href="../css/jquery.mobile-1.4.5.min.css"/>
    <%--<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css"/>--%>

    <%--<link rel="stylesheet" href="vendor/waves/waves.min.css"/>--%>
    <%--<link rel="stylesheet" href="css/nativedroid2.css"/>--%>
    <link rel="stylesheet" href="../css/style.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>

<div data-role="page">

    <%--<nd2-include data-src="left-panel.jsp"></nd2-include>--%>


    <div data-role="header" data-position="fixed">
        <%--<a href="#leftpanel2" class="ui-btn ui-btn-left"><i class="zmdi zmdi-menu"></i></a>--%>
        <%--<h1>Let's Go!</h1>--%>
    </div>

    <div role="main" class="ui-content" data-inset="false">

        <div class="col-xs-12 col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
        <div class="chat">
            <!-- 	<div class="box_hd">
                    <div class="title-wrapper">
                        <h1 class="title">大屏手机就是小米Max群</h1>
                    </div>
                </div> -->
            <div class="box_bd scroll-wrapper">
                <div class="scroll-content J_scrollContent">
                    <div class="chatContent" id="chatContent">
                    </div>
                </div>
            </div>
            <div class="box_ft close">
                <div class="input-wrapper">
                    <p class="J_noticeInput">点击提问</p>
                    <img src="http://c1.mifile.cn/f/i/hd/2016051101/input-down.png" alt="">
                </div>

                <div class="choice-wrapper J_choiceWrapper">
                    <ul class="main-choice J_choice J_mainChoice" data-choice="0">
                        <li class="J_liNext li-3" data-target-dialog="2" data-target-choice="2_1">
                            <a href="javascript:void(0);">存储多大</a>
                        </li>
                        <li class="J_liNext li-3" data-target-dialog="3">
                            <a href="javascript:void(0);">电量多大</a>
                        </li>
                        <li class="J_liNext li-3" data-target-dialog="8">
                            <a href="javascript:void(0);">求红包</a>
                        </li>
                    </ul>

                    <ul class="J_choice" data-choice="2_1">
                        <li class="J_liNext li-3 no-border bg-trsp" data-target-dialog="2_1">

                            <a href="javascript:void(0);">
                                <img src="http://c1.mifile.cn/f/i/hd/2016051101/c-2-oscars.jpg" alt="30部奥斯卡最佳影片">
                                <p>30部奥斯卡最佳影片</p>
                            </a>
                        </li>
                        <li class="J_liNext li-3 no-border bg-trsp" data-target-dialog="2_2">

                            <a href="javascript:void(0);">
                                <img src="http://c1.mifile.cn/f/i/hd/2016051101/c-2-drama.jpg" alt="80集美剧">
                                <p>80集美剧</p>
                            </a>
                        </li>
                        <li class="J_liNext li-3 no-border bg-trsp" data-target-dialog="2_3">

                            <a href="javascript:void(0);">
                                <img src="http://c1.mifile.cn/f/i/hd/2016051101/c-2-onepiece.jpg" alt="700番海贼王">
                                <p>700番海贼王</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        <div style="display: none;" class="J_map">
            <div class="map-wrapper J_mapWrapper">
                <div class="map">
                    <div class="map-pointer"></div>
                </div>
                <p>驾驶总时长：<span class="J_tourtime">0</span> 小时</p>
            </div>
        </div>

        <script id="messageTpl" type="text/x-dot-template">
            {{~it :message:index}}
            <div class="clearfix">
                {{? message.type == 'system'}}
                <div class="message">
                    <p class="message_system">
                        <span class="content">{{=message.content}}</span>
                    </p>
                </div>
                {{??}}

                <div class="message {{? message.author.id == 'me'}}me{{??}}others{{?}}">
                    <div class="avatar" data-author-id="{{=message.author.id}}">
                        <img src="{{=message.author.avatar}}" alt="{{=message.author.name}}">
                    </div>
                    <div class="content">
                        <p class="author_name">{{=message.author.name}}</p>
                        {{? message.type == 'plain'}}
                        <div class="bubble {{? message.author.id == 'me'}} bubble_primary right{{??}} bubble_default left{{?}}">
                            <div class="bubble_cont">
                                <div class="{{=message.type}}">
                                    <pre>{{=message.content}}</pre>
                                </div>
                            </div>
                        </div>
                        {{?? message.type == 'picture'}}
                        <div class="bubble {{? message.author.id == 'me'}} right{{??}} left{{?}} bubble_image">
                            <div class="bubble_cont">
                                <div class="{{=message.type}}">
                                    {{? message.extra == 'gallery'}}
                                    <img class="J_galleryShow" data-gallery="1" src="{{=message.content}}" />
                                    {{??}}
                                    <img class="J_img" src="{{=message.content}}" />
                                    {{?}}
                                </div>
                            </div>
                        </div>
                        {{?? message.type == 'video'}}
                        <div class="bubble {{? message.author.id == 'me'}} right{{??}} left{{?}} bubble_image">
                            <div class="bubble_cont">
                                <div class="{{=message.type}}">
                                    <img class="J_fpVideo" src="{{=message.content.poster}}" data-src="{{=message.content.video}}" alt="">
                                </div>
                            </div>
                        </div>
                        {{?? message.type == 'animation'}}
                        <div class="bubble {{? message.author.id == 'me'}} right{{??}} left{{?}} bubble_image">
                            <div class="bubble_cont">
                                <div class="{{=message.type}}">
                                    {{=message.content}}
                                </div>
                            </div>
                        </div>
                        {{?}}
                    </div>
                </div>
                {{?}}

            </div>
            {{~}}
        </script>
        <script src='https://hd.mi.com/f/zt/hd/2016051101/doT.min.js'></script>
        <script src='https://hd.mi.com/f/zt/hd/2016051101/jquery.min.js'></script>

        <script src="../js/index.js"></script>



    </div>

    <div data-role="footer" data-position="fixed">
        <%--<div data-role="navbar">--%>
            <%--<ul>--%>
                <%--<li><a href="Activity.jsp" data-icon="bars">主页</a></li>--%>
                <%--<li><a href="MyOrders.jsp" data-icon="mail">订单</a></li>--%>
                <%--<li><a href="myFavorite.jsp" data-icon="heart">喜欢</a></li>--%>
                <%--<li><a href="launchActivity.jsp" data-icon="user">发起</a></li>--%>

            <%--</ul>--%>
        <%--</div>--%>
    </div>

</div>


<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>--%>
<%--<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>--%>
<%--<script src="http://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>--%>
<%--<script--%>
        <%--src="https://code.jquery.com/jquery-2.2.4.js"--%>
        <%--integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="--%>
        <%--crossorigin="anonymous"></script>--%>
<%--<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>--%>
<%--<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>--%>
<%--<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>--%>

<%--<script src="vendor/waves/waves.min.js"></script>--%>
<%--<script src="js/nativedroid2.js"></script>--%>
<%--<script src="nd2settings.js"></script>--%>
<%--<script src="js/index.js"></script>--%>


<!--<script>-->
<!--navigator.geolocation.getCurrentPosition();-->


<!--$("#location").html(position.coords.latitude.toString());-->
<!--</script>-->

</body>
</html>

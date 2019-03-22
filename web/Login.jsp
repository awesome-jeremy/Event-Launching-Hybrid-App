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
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css"/>
    <link rel="stylesheet" href="vendor/waves/waves.min.css"/>
    <link rel="stylesheet" href="css/nativedroid2.css"/>


</head>
<body>

<div data-role="page" id="Activities" >

    <%--<nd2-include data-src="examples/fragments/panel.left.html"></nd2-include>--%>


    <div data-role="header" data-position="fixed">
        <%--<a href="#leftpanel" class="ui-btn ui-btn-left"><i class="zmdi zmdi-menu"></i></a>--%>
        <h1>Login</h1>
    </div>

    <div role="main" class="ui-content" data-inset="false">

        <form action="login.do" method="post" data-ajax="false">
            <div class="row">


                <div class="col-xs-12 col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
                    <div class="box">

                        <label for="id">账号</label>
                        <input type="text" name="id" id="id" data-clear-btn="true" placeholder="account">
                        <label for="password">密码</label>
                        <input type="password" name="password" id="password" data-clear-btn="true" placeholder="password">
                    </div>

                    <input type="submit" value="登录" class="ui-btn ui-btn-inline ui-btn-b ui-corner-all" id="button1">
                    <%--<a href="useless/chatTest.jsp" class="ui-btn ui-btn-b ui-corner-all" id="chat">注册</a>--%>
                    <%--<a href="#" class="ui-btn ui-btn-raised clr-primary">Primary Button Raised</a>--%>
                    <a href="register.jsp" class="ui-btn ui-mini ui-btn-icon-block"><i class='zmdi zmdi-edit zmd-2x'></i>注册</a>

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

<script type="text/javascript">


    $(document).on("pageinit", "#Activities", function () {
        $("#addToMyFavorite").on("click", function () {
            //        $.mobile.loading("show");
            var activity_id=$("#addToMyFavorite").attr("value");
            alert(activity_id);
            $.get("addToMyFavorite.do?activity_id=" + activity_id, {}, function (data) {
                var rec = data.toString();
//                android.showToast(rec);
            });
//        $.mobile.loading("hide");
        })


    });

</script>

</body>
</html>

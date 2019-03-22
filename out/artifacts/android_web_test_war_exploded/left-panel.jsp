<%@ page import="javabean.User" %><%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 2017/6/7
  Time: 下午12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- panel left -->
<div data-role="panel" id="leftpanel2" data-display="overlay" data-position-fixed="true">


    <div class='nd2-sidepanel-profile wow fadeInDown'>
        <img class='profile-background' src="//lorempixel.com/400/200/abstract/2/"/>
        <div class="row">
            <div class='col-xs-4 center-xs'>
                <div class='box'>
                    <% if (request.getSession().getAttribute("user") == null||((User)request.getSession().getAttribute("user")).getPortraitImage()=="") {%>
                    <img class="profile-thumbnail" src="//lorempixel.com/200/200/people/9/" />
                    <% }%>
                    <% if (request.getSession().getAttribute("user") != null) {%>
                    <img class="profile-thumbnail" src="${sessionScope.user.portraitImage}" />
                    <%--<img class="card-avatar" src="${sessionScope.user.portraitImage}">--%>
                    <% }%>
                </div>
            </div>
            <div class='col-xs-8'>
                <div class='box profile-text'>
                    <strong>${sessionScope.user.name}</strong>

                    <span class='subline'>id:${sessionScope.user.id}</span>
                </div>
            </div>
        </div>
    </div>


    <%--<ul data-role="listview" data-inset="false">--%>
    <%--<li data-role="list-divider">主要功能</li>--%>
    <%--</ul>--%>
    <%--<div data-role="collapsible" data-inset="false"  data-collapsed-icon="carat-d" data-expanded-icon="carat-d" data-iconpos="right">--%>
    <%--<h3>主要功能</h3>--%>
    <%--<ul data-role="listview" data-inset="false" data-icon="false">--%>
    <%--<li><a href="/examples/elements/text.html" data-ajax='false' data-icon="false">Text Elements</a></li>--%>
    <%--<li><a href="/examples/elements/grid.html" data-ajax='false' data-icon="false">FlexboxGrid</a></li>--%>
    <%--<li><a href="/examples/elements/buttons.html" data-ajax='false' data-icon="false">Buttons</a></li>--%>
    <%--</ul>--%>
    <%--</div>--%>

    <%--<ul data-role="listview" data-inset="false">--%>
    <%--<li data-role="list-divider">附加功能</li>--%>
    <%--</ul>--%>
    <%--<div data-role="collapsible" data-inset="false" data-collapsed-icon="carat-d" data-expanded-icon="carat-d" data-iconpos="right">--%>
    <%--<h3>附加功能</h3>--%>
    <%--<ul data-role="listview" data-icon="false">--%>
    <%--<li><a href="#" class="ui-btn ui-btn-a ui-corner-all" id="getLocation">获取我的位置信息</a></li>--%>
    <%--<li><a href="/examples/pages/blogpost.html" class="ui-disabled" data-ajax='false'>Blogpost</a></li>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <%--<hr class="inset">--%>
    <%--<ul data-role="listview" data-inset="false">--%>
    <%--<li data-role="list-divider">Information</li>--%>
    <%--</ul>--%>
    <%--<div data-role="collapsible" data-inset="false" data-collapsed-icon="carat-d" data-expanded-icon="carat-d" data-iconpos="right">--%>
    <%--<h3>Nice to Know</h3>--%>
    <%--<ul data-role="listview" data-icon="false">--%>
    <%--<li><a href="/info/colors_and_styles.html" data-ajax='false'>Colors &amp; Styles</a></li>--%>
    <%--<li><a href="/info/credits.html" data-ajax='false'>Credits &amp; License</a></li>--%>
    <%--</ul>--%>
    <%--</div>--%>


    <a href="Login.jsp" class="ui-btn ui-btn-a ui-corner-all">登录</a>
</div>

<!-- /panel left -->

</body>
</html>

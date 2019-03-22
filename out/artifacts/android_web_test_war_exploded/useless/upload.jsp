<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 2017/6/1
  Time: 下午2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css">
    <script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>

<form method="post" action="#" enctype="multipart/form-data">
    <div data-role="fieldcontain">
        <label for="fullname">全名：</label>
        <input type="text" name="fullname" id="fullname">

        <label for="bday">生日：</label>
        <input type="date" name="bday" id="bday">

        <label for="email">电邮：</label>
        <input type="email" name="email" id="email" placeholder="您的邮件地址..">
    </div>
</form>
</body>
</html>

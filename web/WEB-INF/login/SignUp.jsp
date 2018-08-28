<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/6/4
  Time: 下午7:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FreeHTML5.co"/>
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive"/>

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sign/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sign/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sign/style.css">

</head>
<body>

<div class="container">
    <div class="row" style="margin-top: 50px"></div>
</div>
<div class="row">
    <div class="col-md-4 col-md-offset-4">


        <!-- Start Sign In Form -->
        <form action="${pageContext.request.contextPath}/FirstSignUp" class="fh5co-form animate-box"
              data-animate-effect="fadeIn" method="post" id="form1">
            <h2>注册</h2>
            <c:if test="${not empty signupUser}">
                <div class="form-group" id="successSignup">
                    <div class="alert alert-success" role="alert">您已经注册成功。 <a
                            href="${pageContext.request.contextPath}/SkipLoginIndexAction">点击此处登录</a></div>
                </div>
            </c:if>

            <div class="form-group">
                <label for="userName" class="sr-only">用户名</label>
                <input type="text" class="form-control" id="userName" placeholder="用户名" autocomplete="off"
                       name="userName">
            </div>
            <div class="form-group">
                <label for="password" class="sr-only">密码</label>
                <input type="password" class="form-control" id="password" placeholder="密码" autocomplete="off"
                       name="password">
            </div>
            <div class="form-group">
                <label for="password-repea" class="sr-only">再次输入密码</label>
                <input type="password" class="form-control" id="password-repea" placeholder="再次输入密码" autocomplete="off">
            </div>
            <div class="form-group">
                <label for="email" class="sr-only">邮箱</label>
                <input type="email" class="form-control" id="email" placeholder="邮箱" autocomplete="off" name="email">
            </div>
            <div class="form-group">
                <label for="phone" class="sr-only">手机号</label>
                <input type="text" class="form-control" id="phone" placeholder="手机号" autocomplete="off" name="phone">
            </div>
            <div class="form-group">
                <p>已经用户账户<a href="${pageContext.request.contextPath}/SkipLoginIndexAction">登录</a></p>
            </div>
            <div class="form-group">
                <input type="button" value="注册" class="btn btn-primary" id="btnSub">
            </div>
        </form>
        <!-- END Sign In Form -->

    </div>
</div>
<div class="row" style="padding-top: 60px; clear: both;">
    <div class="col-md-12 text-center">
        <p>
            <small>&copy; 更多信息 <a href="#" target="_blank">BLZ</a> - 类型 <a href="#" target="_blank">商店</a></small>
        </p>
    </div>
</div>
<%--代替alert的提示信息--%>
<div class="alert alert-danger alert-dismissible" role="alert"
     style="position: fixed; top: 60px; right: -300px; width: 300px; display: none">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
    </button>
    <strong id="remind_info">${orderNeed.good.goodsName}</strong>
</div>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/sign/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/js/sign/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="${pageContext.request.contextPath}/js/sign/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="${pageContext.request.contextPath}/js/sign/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="${pageContext.request.contextPath}/js/sign/main.js"></script>
<!-- Modernizr JS -->
<script src="${pageContext.request.contextPath}/js/sign/modernizr-2.6.2.min.js"></script>

<script>
    $(function () {
        // 弹出框提示信息
        var alertInfo = function (info) {
            if ($("div[role=alert]").children().length > 1) {
                $("#remind_info").text(info);
                $("div[role=alert]").css("display", "block");
                $("div[role=alert]").animate({"left": "-=300px"}, "slow");
            }

            setTimeout(function () {
                $("div[role=alert]").animate({"left": "+=300px"}, "slow");
            }, 2000);
        };

        // 点击按钮注册事件
        $("#btnSub").click(function () {
            var userNameVal = $("#userName").val();
            if ($("#userName").val() == "") {
                alertInfo("用户名不能为空");
            }

            if ($("#password").val() == "") {
                alertInfo("密码不能为空");
            } else {
                if ($("#password-repea").val() == "") {
                    alertInfo("重复密码不能为空");
                } else {
                    if ($("#password").val() == $("#password-repea").val()) {
                        $.ajax({
                            type: "POST",
                            url: "${pageContext.request.contextPath}/UserIfExist",
                            data: "userName=" + userNameVal,
                            success: function (returnData) {
                                if (returnData == "false") {
                                    alertInfo("用户名已存在");
                                } else {
                                    $("#form1").submit();
                                }
                            }
                        });
                    } else {
                        alertInfo("两次输入的密码不一样");
                    }
                }
            }
        });


        // 用户名el验证
        $("#userName").change(function () {
            var inputValue = $(this).val();
            if (!/^[a-zA-Z0-9_]{3,16}$/.test(inputValue)) {
                $(this).css("border-bottom", "1px solid red");
                $(this).css("color", "red");
                alertInfo("用户名不符合要求");
            }else {
                $(this).css("color", "black");
                $(this).css("border-bottom", "1px solid black");
            }
        });

        // 邮箱验证
        $("#email").change(function () {
            var inputValue = $(this).val();
            if (!/\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/.test(inputValue)) {
                $(this).css("border-bottom", "1px solid red");
                $(this).css("color", "red");
                alertInfo("邮箱不符合要求");
            }else {
                $(this).css("color", "black");
                $(this).css("border-bottom", "1px solid black");
            }
        });

        // 手机号验证
        $("#phone").change(function () {
            var inputValue = $(this).val();
            if (!/0?(13|14|15|17|18|19)[0-9]{9}/.test(inputValue)) {
                $(this).css("border-bottom", "1px solid red");
                $(this).css("color", "red");
                alertInfo("手机号不符合要求");
            } else {
                $(this).css("color", "black");
                $(this).css("border-bottom", "1px solid black");
            }
        });
    });
</script>
</body>
</html>

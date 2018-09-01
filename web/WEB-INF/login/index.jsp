<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/6/4
  Time: 下午6:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录</title>
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

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sign/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sign/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sign/style.css">

</head>
<body>
<div class="container">
    <div style="margin-top: 150px"></div>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">


            <!-- Start Sign In Form -->
            <form id="form1" action="${pageContext.request.contextPath}/LoginAction" class="fh5co-form animate-box"
                  data-animate-effect="fadeIn">
                <h2>登录</h2>
                <div class="form-group">
                    <label for="userName" class="sr-only">用户名</label>
                    <input type="text" class="form-control" id="userName" placeholder="用户名" autocomplete="off"
                           name="userName">
                </div>
                <div class="form-group">
                    <label for="userPass" class="sr-only">密码</label>
                    <input type="password" class="form-control" id="userPass" placeholder="密码" autocomplete="off"
                           name="userPass">
                </div>
                <div class="form-group">
                    <label for="randomCode" class="sr-only">验证码</label>
                    <input type="text" class="form-control" id="randomCode" placeholder="验证码" autocomplete="off"
                           name="randomCode" style="width: 60%; float: left">
                    <img src="${pageContext.request.contextPath}/ImageAction" id="codeImage" style="margin-left: 20px">
                </div>
                <div class="form-group">
                    <p>没有账户？<a href="${pageContext.request.contextPath}/SkipSignUpAction">注册</a> | <a href="#">忘记密码?</a>
                    </p>
                </div>
                <div class="form-group">
                    <input type="button" value="登录" class="btn btn-primary" id="sub">
                </div>
            </form>
            <!-- END Sign In Form -->
        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center">
            <p>
                <small>&copy; <a href="#" target="_blank">BLZ</a> - 类型 <a href="#" target="_blank">商店</a></small>
            </p>
        </div>
    </div>
</div>

<%--代替alert的提示信息--%>
<div class="alert alert-danger alert-dismissible" role="alert"
     style="position: fixed; top: 60px; right: -300px; width: 300px; display: none">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
    </button>
    <strong id="remind_info">${orderNeed.good.goodsName}</strong>
</div>

<p style="display: none" id="errorInfo">${errorInfo}</p>

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

<script src="${pageContext.request.contextPath}/js/sign/modernizr-2.6.2.min.js"></script>
<script>
    $(function () {
        $("#sub").click(function () {
                var name = $("#userName").val();
                var passwd = $("#userPass").val();
                if (name == "" || passwd == "") {
                    alertInfo("请输入用户名或者密码");
                } else {
                    $.ajax({
                        type: "POST",
                        url: "${pageContext.request.contextPath}/ImageCodeJudgeAction",
                        success: function (returnData) {
                            var code = returnData.code
                            if (code == $("#randomCode").val()) {
                                $("#form1").submit();
                            } else {
                                alertInfo("验证码错误!");
                            }
                        }
                    });
                }
            }
        );

        // 点击更换验证码
        $("#codeImage").click(function () {
            $("#codeImage").attr("src", "${pageContext.request.contextPath}/ImageAction?" + new Date());
        });


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

        if ($("#errorInfo").text() != "") {
            alertInfo($("#errorInfo").text());
        }
    });
</script>


<script>
    $(function () {
        //回车事件绑定
        $("#randomCode").bind('keyup', function (event) {
            if (event.keyCode == "13") {
                //回车执行查询
                $("#sub").click();
            }
        });
    });
</script>

</body>
</html>

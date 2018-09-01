<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/8/30
  Time: 7:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<h1>${getError}</h1>
<div style="margin-left: auto; margin-right: auto; width: 500px; height: 500px">
    <img src="${imageoutput}" style="margin-right: auto; margin-right: auto;"><br>
    <input id="give_btn" type="button" value="放弃支付"></input>
</div>


<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.0/jquery.min.js"></script>
<script>
    $(function () {
        setInterval(function () {
            $.ajax({
                type: "get",
                url: "${pageContext.request.contextPath}/GetPayReply",
                success: function (returnData) {
                    if (returnData == "1") {
                        window.location.href = "${pageContext.request.contextPath}/ClearCheckFinall";
                    }
                }, error: function () {
                }
            });
        }, 3000);


        $("#give_btn").click(function () {
            window.location.href = "${pageContext.request.contextPath}/SkipCheckoutAction";
        });
    });
</script>
</body>
</html>

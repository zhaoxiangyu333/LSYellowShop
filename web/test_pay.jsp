<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/8/30
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    System.out.println("测试支付宝回调，回调参数如下：");

    Enumeration enu = request.getParameterNames();
    while (enu.hasMoreElements()) {
        String paraName = (String) enu.nextElement();
        System.out.println(paraName + " : " + request.getParameter(paraName));
        if (paraName.equals("gmt_create")) {
            PrintWriter writer = response.getWriter();
            writer.print("true");
            break;
        }
    }
%>
</body>
</html>

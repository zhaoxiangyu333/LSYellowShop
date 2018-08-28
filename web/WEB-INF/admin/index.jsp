<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/6/23
  Time: 8:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>管理员首页</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
<header class="am-topbar admin-header">
    <div class="am-topbar-brand"><img src="${pageContext.request.contextPath}/i/logo.png"></div>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

            <li class="am-dropdown tognzhi" data-am-dropdown>
                <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
                <ul class="am-dropdown-content">
                    <li class="am-dropdown-header">所有消息都在这里</li>
                    <li><a href="#">未激活会员 <span class="am-badge am-badge-danger am-round">556</span></a></li>
                    <li><a href="#">未激活代理 <span class="am-badge am-badge-danger am-round">69</span></a></li>
                    <li><a href="#">未处理汇款</a></li>
                    <li><a href="#">未发放提现</a></li>
                    <li><a href="#">未发货订单</a></li>
                    <li><a href="#">低库存产品</a></li>
                    <li><a href="#">信息反馈</a></li>
                </ul>
            </li>
            <li class="kuanjie">

                <a href="#">会员管理</a>
                <a href="#">奖金管理</a>
                <a href="#">订单管理</a>
                <a href="#">产品管理</a>
                <a href="#">个人中心</a>
                <a href="#">系统设置</a>
            </li>

            <li class="soso">
                <p>
                    <select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
                        <option value="b">全部</option>
                        <option value="o">产品</option>
                        <option value="o">会员</option>
                    </select>
                </p>

                <p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="请输入关键词"/></p>
                <p>
                    <button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button>
                </p>
            </li>


            <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
        </ul>
    </div>
</header>

<div class="am-cf admin-main">

    <div class="nav-navicon admin-main admin-sidebar">


        <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：</div>
        <div class="sideMenu">
            <h3 class="am-icon-flag"><em></em> <a href="#">商品管理</a></h3>
            <ul>
                <li><a href="${pageContext.request.contextPath}/AdminGoodsTableInitAction">商品列表</a></li>
                <li>用户评论</li>
            </ul>
            <h3 class="am-icon-cart-plus"><em></em> <a href="#"> 订单管理</a></h3>
            <ul>
                <li><a href="${pageContext.request.contextPath}/AdminOrderTableInitAction">订单列表</a></li>
                <li>订单打印</li>
                <li>添加订单</li>
                <li>发货单列表</li>
                <li>换货单列表</li>
            </ul>
            <h3 class="am-icon-users on"><em></em> <a href="#">账户管理</a></h3>
            <ul>
                <li><a href="${pageContext.request.contextPath}/AdminUserInitAction">用户列表</a></li>
                <li><a href="${pageContext.request.contextPath}/AdminAdminInitAction">管理员列表</a></li>
            </ul>
            <h3 class="am-icon-volume-up"><em></em> <a href="#">信息通知</a></h3>
            <ul>
                <li>站内消息 /留言</li>
                <li>短信</li>
                <li>邮件</li>
                <li>微信</li>
                <li>客服</li>
            </ul>
            <h3 class="am-icon-gears"><em></em> <a href="#">系统设置</a></h3>
            <ul>
                <li>数据备份</li>
                <li>邮件/短信管理</li>
                <li>上传/下载</li>
                <li>权限</li>
                <li>网站设置</li>
                <li>第三方支付</li>
                <li>提现 /转账 出入账汇率</li>
                <li>平台设置</li>
                <li>声音文件</li>
            </ul>
        </div>
        <!-- sideMenu End -->
    </div>

    <div class=" admin-content">
        <div class="daohang">
            <ul>
                <li>
                    <button type="button" class="am-btn am-btn-default am-radius am-btn-xs">首页</button>
                </li>
            </ul>
        </div>


        <div class="admin">
            <div class="admin-index">
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
                    <dt class="qs"><i class="am-icon-users"></i></dt>
                    <dd>${dayLoginInfoSize}</dd>
                    <dd class="f12">今日登录人数</dd>
                </dl>
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
                    <dt class="cs"><i class="am-icon-users"></i></dt>
                    <dd>${allLoginInfoSize}</dd>
                    <dd class="f12">访问次数</dd>
                </dl>
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
                    <dt class="hs"><i class="am-icon-shopping-cart"></i></dt>
                    <dd>455</dd>
                    <dd class="f12">今日收入</dd>
                </dl>
            </div>
            <div class="admin-biaoge">
                <div class="xinxitj">登录信息概况 (单人多次登录仅算1次)</div>
                <div id="login1" style="width: 100%; height: 500px;"></div>
            </div>

            <div class="foods">
                <ul>版权所有@2018<a href="" target="_blank">BLZ</a>- 更多信息<a href="#" target="_blank">商城</a></ul>
                <dl><a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a></dl>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
<script src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>

<script type="text/javascript">
    jQuery(".sideMenu").slide({
        titCell: "h3", //鼠标触发对象
        targetCell: "ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
        effect: "slideDown", //targetCell下拉效果
        delayTime: 300, //效果时间
        triggerTime: 150, //鼠标延迟触发时间（默认150）
        defaultPlay: true,//默认是否执行效果（默认true）
        returnDefault: true //鼠标从.sideMen移走后返回默认状态（默认false）
    });
</script>
<script>
    var myChart = echarts.init(document.getElementById('login1'));
    // 指定图表的配置项和数据
    var option = {
        // title: {
        // text: '统计折线图'
        // },
        tooltip: {},
        legend: {
            data: ['人数']
        },
        xAxis: {
            data: [
                <c:forEach var="map" items="${loginMap}">
                "${map.key}",
                </c:forEach>
            ]
        },
        yAxis: {},
        series: [{
            name: '访问日期:人数',
            type: 'bar',
            data: [
                <c:forEach var="map" items="${loginMap}">
                ${map.value},
                </c:forEach>
            ]
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);

</script>
</body>
</html>

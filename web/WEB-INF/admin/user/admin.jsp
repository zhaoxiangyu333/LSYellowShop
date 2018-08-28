<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/7/11
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>管理员账号</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"/>
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

                <p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="输入关键词"/></p>
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
        <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：清风抚雪</div>
        <div class="sideMenu">
            <h3 class="am-icon-flag"><em></em> <a href="#">商品管理</a></h3>
            <ul>
                <li><a href="${pageContext.request.contextPath}/AdminGoodsTableInitAction">商品列表</a></li>
                <li>用户评论</li>
            </ul>
            <h3 class="am-icon-cart-plus"><em></em> <a href="#"> 订单管理</a></h3>
            <ul>
                <li><a href="${pageContext.request.contextPath}/AdminGoodsTableInitAction">订单列表</a></li>
                <li>订单打印</li>
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
                    <button type="button" class="am-btn am-btn-default am-radius am-btn-xs"> 首页</button>
                </li>
            </ul>
        </div>

        <div class="admin-biaogelist">
            <div class="listbiaoti am-cf">
                <ul class="am-icon-users">管理员用户管理</ul>
                <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">管理员用户管理</a></dl>
                <dl>
                    <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus" id="add_admin"> 添加管理员账户</button>
                </dl>
            </div>


            <form class="am-form am-g">
                <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
                    <thead>
                    <tr class="am-success">
                        <th class="table-id">ID</th>
                        <th class="table-title">管理员用户名</th>
                        <th class="table-author am-hide-sm-only">管理员密码</th>
                        <th width="130px" class="table-set">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${adminPage.list}" var="admin">
                        <tr>
                            <td>${admin.id}</td>
                            <td><a href="#">${admin.adminName}</a></td>
                            <td class="am-hide-sm-only">${admin.adminPasswd}</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <a class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" whc="span_update" whcId="${admin.id}"><span class="am-icon-pencil-square-o"></span></a>
                                        <a class="am-btn am-btn-default am-btn-xs am-text-danger am-round" whc="btn_delete" whcId="${admin.id}"><span class="am-icon-trash-o"></span></a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <ul class="am-pagination am-fr">
                    <li><a href="${pageContext.request.contextPath}/AdminAdminInitAction?type=previous">«上一页</a></li>
                    <li><a href="${pageContext.request.contextPath}/AdminAdminInitAction?type=next">下一页»</a></li>
                </ul>


                <hr/>
            </form>


            <div class="foods">
                <ul>
                    版权所有@2018 <a href="#" target="_blank">BLZ</a> - 更多信息<a href="#" target="_blank">商店</a>
                </ul>
                <dl>
                    <a href="#" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
                </dl>
            </div>
        </div>
    </div>
</div>

<c:forEach items="${adminPage.list}" var="admin" varStatus="status">
    <form id="${admin.id}" method="post" style="margin: 0; padding: 0">
        <div class="modal fade" whc="${admin.id}" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">管理员：${admin.adminName}</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="txt_goods_name">管理员名称</label>
                            <input type="text" name="adminName" class="form-control" id="txt_goods_name" value="${admin.adminName}">
                        </div>
                        <div class="form-group">
                            <label for="txt_goods_introduce">管理员密码</label>
                            <input type="text" name="adminPasswd" class="form-control" id="txt_goods_introduce" value="${admin.adminPasswd}">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"></span>关闭</button>
                        <button whc="btn_submit" class="btn btn-primary" data-dismiss="modal" whcId="${admin.id}"></span>保存</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</c:forEach>

<form id="add_admin_form" method="post" style="margin: 0; padding: 0" action="${pageContext.request.contextPath}/AdminAddAdmin">
    <div id="add_admin_div" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">添加管理员账户</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="txt_admin_name_add">管理员账户用户名</label>
                        <input type="text" name="adminName" class="form-control" id="txt_admin_name_add" placeholder="请输入用户名">
                    </div>
                    <div class="form-group">
                        <label for="txt_admin_passwd_add">管理员账户密码</label>
                        <input type="text" name="adminPasswd" class="form-control" id="txt_admin_passwd_add" placeholder="请输入密码">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"></span>关闭</button>
                    <a type="button" class="btn btn-primary" data-dismiss="modal" id="add_admin_btn"></span>保存</a>
                </div>
            </div>
        </div>
    </div>
</form>


<%--代替alert的提示信息--%>
<div class="alert alert-danger alert-dismissible" role="alert" style="position: fixed; top: 60px; right: -300px; width: 300px; display: none">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <strong id="remind_info">${orderNeed.good.goodsName}</strong>
</div>




<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
<script src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

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
    $(function () {
        // 进行更改管理员用户的模态框展现
        $("a[whc=span_update]").click(function () {
            var whcId = $(this).attr("whcId");
            $("div[whc=" + whcId + "]").modal();

        });

        // 更改管理员用户的提交
        $("button[whc='btn_submit']").click(function () {
            var whcId = $(this).attr("whcId");

            var $subForm = $("form[id=" + whcId + "]");
            $subForm.attr("action", "${pageContext.request.contextPath}/AdminUpdateAdminInfo?id=" + whcId);
            $subForm.submit();
        });

        // 删除管理员用户
        $("a[whc='btn_delete']").click(function () {
            var whcId = $(this).attr("whcId");
            window.location.href = "${pageContext.request.contextPath}/AdminDeleteAdmin?id=" + whcId;
        });

        // 添加管理员
        $("#add_admin").click(function () {
            $("#add_admin_div").modal();

            $("#add_admin_btn").click(function () {
                if ($("#txt_admin_name_add").val() != "") {
                    if ($("#txt_admin_passwd_add").val() != "") {
                        $("#add_admin_form").submit();
                    } else {
                        alertInfo("密码不能为空");
                    }
                } else {
                    alertInfo("用户名不能为空");
                }
            });

        });



        var alertInfo = function (info) {
            if ($("div[role=alert]").children().length > 1) {
                $("#remind_info").text(info);
                $("div[role=alert]").css("display", "block");
                $("div[role=alert]").animate({"left": "-=300px"}, "slow");
            }

            setTimeout(function () {
                $("div[role=alert]").animate({"left": "+=300px"}, "slow");
            },2000);
        };

    });
</script>
</body>
</html>

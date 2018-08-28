<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/7/9
  Time: 8:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>物品详单</title>
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
    <%--图片上传--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dist/basic.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dist/dropzone.min.css">
</head>
<body>
<header class="am-topbar admin-header">
    <div class="am-topbar-brand"><img src="${pageContext.request.contextPath}/i/logo.png"></div>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

            <li class="am-dropdown tognzhi" data-am-dropdown>
                <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o"
                        data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
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

            <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span
                    class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
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
</div>

<div class=" admin-content">
    <div class="daohang">
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/AdminInitAction" type="button"
                   class="am-btn am-btn-default am-radius am-btn-xs"> 首页</a>
            </li>
        </ul>


    </div>


    <div class="admin-biaogelist">

        <div class="listbiaoti am-cf">
            <ul class="am-icon-flag on"> 栏目名称</ul>
            <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">商品列表</a></dl>
            <dl>
                <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus" id="addGoodsBtn">
                    添加产品
                </button>
            </dl>
        </div>

        <div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
            <ul>
                <li style="margin-left: -4px;">
                    <span class="tubiao am-icon-calendar" style="margin-top: 5px"></span>
                    <input id="search_date" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar"
                           placeholder="上架日期" data-am-datepicker="{theme: 'success',}" readonly/>
                </li>

                <li><input id="search_text" type="text" class="am-form-field am-input-sm am-input-xm"
                           placeholder="关键词搜索"/></li>
                <li>
                    <button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;"
                            id="search_btn">搜索
                    </button>
                </li>
            </ul>
        </div>


        <form class="am-form am-g">
            <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped"
                   style="table-layout:fixed">
                <thead>
                <tr class="am-success">
                    <th class="table-id">ID</th>
                    <th class="table-title" style="width: 15%;">商品名称</th>
                    <th class="table-type">商品重量</th>
                    <th class="table-type">商品价格</th>
                    <th class="table-type">商品库存</th>
                    <th class="table-type">商品类别ID</th>
                    <th class="table-type">商品描述</th>
                    <th class="table-type" style="width: 27%;">商品图片</th>
                    <th class="table-date am-hide-sm-only">上架日期</th>
                    <th width="95px" class="table-set">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${goodPage.list}" var="goods" varStatus="status">
                    <tr>
                        <td>${status.count}</td>
                        <td><a href="#">${goods.goodsName}</a></td>
                        <td>${goods.goodsWeight}</td>
                        <td>${goods.goodsPrice}</td>
                        <td>${goods.goodsNumber}</td>
                        <td>${goods.prodId}</td>
                        <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${goods.goodsIntroduce}</td>
                        <td class="am-hide-sm-only" onmousedown="javascript:$('input[id=${status.count}]').click();">
                            <form>
                                    ${goods.goodsImage}
                                <input type="file" style="display: none;" id="${status.count}" class="file" name="file"
                                       whcId="${goods.goodsId}">
                            </form>
                        </td>
                        <td class="am-hide-sm-only">${goods.createTime}</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a class="am-btn am-btn-default am-btn-xs am-text-secondary am-round"
                                       whc="btn_update" whcId="${goods.goodsId}"><span
                                            class="am-icon-pencil-square-o"></span></a>
                                    <a class="am-btn am-btn-default am-btn-xs am-text-danger am-round" whc="btn_delete"
                                       whcId="${goods.goodsId}" whcNameDelete="${goods.goodsName}"><span
                                            class="am-icon-trash-o"></span></a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>

            <ul class="am-pagination am-fr">
                <li><a href="${pageContext.request.contextPath}/AdminGoodsTableInitAction?type=previous">«上一页</a></li>
                <li><a href="${pageContext.request.contextPath}/AdminGoodsTableInitAction?type=next">下一页»</a></li>
            </ul>


            <hr/>
        </form>


        <div class="foods">
            <ul>
                版权所有@2018 <a href="#" target="_blank">BLZ</a> - 更多信息<a href="#" target="_blank">商城</a>
            </ul>
            <dl>
                <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
            </dl>
        </div>
    </div>
</div>


<c:forEach items="${goodPage.list}" var="goods" varStatus="status">
    <form id="${goods.goodsId}" method="post" style="margin: 0; padding: 0">
        <div class="modal fade" whc="${goods.goodsId}" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">修改商品：${goods.goodsName}</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="txt_goods_name">商品名称</label>
                            <input type="text" name="goods_name" class="form-control" id="txt_goods_name"
                                   value="${goods.goodsName}">
                        </div>
                        <div class="form-group">
                            <label for="txt_goods_weight">商品重量</label>
                            <input type="text" name="goods_weight" class="form-control" id="txt_goods_weight"
                                   value="${goods.goodsWeight}">
                        </div>
                        <div class="form-group">
                            <label for="txt_goods_price">商品价格</label>
                            <input type="text" name="goods_price" class="form-control" id="txt_goods_price"
                                   value="${goods.goodsPrice}">
                        </div>
                        <div class="form-group">
                            <label for="txt_goods_number">商品库存</label>
                            <input type="text" name="goods_number" class="form-control" id="txt_goods_number"
                                   value="${goods.goodsNumber}">
                        </div>
                        <div class="form-group">
                            <label for="txt_prod_id">商品类别ID</label>
                            <input type="text" name="prod_id" class="form-control" id="txt_prod_id"
                                   value="${goods.prodId}">
                        </div>
                        <div class="form-group">
                            <label for="txt_goods_introduce">商品描述</label>
                            <input type="text" name="goods_introduce" class="form-control" id="txt_goods_introduce"
                                   value="${goods.goodsIntroduce}">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"></span>关闭</button>
                        <button type="button" whc="btn_submit" class="btn btn-primary" data-dismiss="modal"
                                whcID="${goods.goodsId}" whcName="${goods.goodsName}"></span>保存
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</c:forEach>


<form id="add_goods_form" method="post" style="margin: 0; padding: 0"
      action="${pageContext.request.contextPath}/AdminAddGoods">
    <div id="add_goods_div" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">修改商品</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="txt_goods_name_add">商品名称</label>
                        <input type="text" name="goods_name" class="form-control" id="txt_goods_name_add"
                               placeholder="请输入商品名称">
                    </div>
                    <div class="form-group">
                        <label for="txt_goods_weight_add">商品重量</label>
                        <input type="text" name="goods_weight" class="form-control" id="txt_goods_weight_add"
                               placeholder="请输入商品重量">
                    </div>
                    <div class="form-group">
                        <label for="txt_goods_price_add">商品价格</label>
                        <input type="text" name="goods_price" class="form-control" id="txt_goods_price_add"
                               placeholder="请输入商品价格">
                    </div>
                    <div class="form-group">
                        <label for="txt_goods_number_add">商品库存</label>
                        <input type="text" name="goods_number" class="form-control" id="txt_goods_number_add"
                               placeholder="请输入商品剩余库存">
                    </div>
                    <div class="form-group">
                        <label for="txt_prod_id_add">商品类别ID</label>
                        <input type="text" name="prod_id" class="form-control" id="txt_prod_id_add"
                               placeholder="请输入商品重量类别ID">
                    </div>
                    <div class="form-group">
                        <label for="txt_goods_introduce_add">商品描述</label>
                        <input type="text" name="goods_introduce" class="form-control" id="txt_goods_introduce_add"
                               placeholder="请输入商品描述">
                    </div>
                    <div class="form-group">
                        <label for="txt_goods_image_add">商品图片</label>
                        <input type="file" id="file2" name="goods_image" class="form-control" id="txt_goods_image_add"
                               placeholder="请选择商品图片">
                    </div>
                    <div class="form-group">
                        <label for="txt_goods_create_time_add">商品上架时间</label>
                        <input type="date" name="create_time" class="form-control" id="txt_goods_create_time_add"
                               placeholder="请选择商品上架时间">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"></span>关闭</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" id="add_goods_btn"></span>保存
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>


<%--代替alert的提示信息--%>
<div class="alert alert-success alert-dismissible" role="alert"
     style="position: fixed; top: 60px; right: -300px; width: 300px; display: none">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
    </button>
    <c:if test="${not empty whcName}">
        <strong>商品：${whcName}</strong><h6 style="color: red; display: inline;">更新成功</h6>
    </c:if>
    <c:if test="${not empty whcNameDelete}">
        <strong>商品：${whcNameDelete}</strong><h6 style="color: red; display: inline;">删除成功</h6>
    </c:if>
    <c:if test="${not empty addGoodName}">
        <strong>商品：${addGoodName}</strong><h6 style="color: red; display: inline;">添加成功</h6>
    </c:if>
    <c:if test="${not empty imageUpload}">
        <strong>${imageUpload}</strong>
    </c:if>
</div>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
<script src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dist/dropzone.min.js"></script>

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
    // 商品信息的修改和删除
    $(function () {
        $("a[whc='btn_update']").click(function () {
            var whcId = $(this).attr("whcId");
            $("div[whc=" + whcId + "]").modal();
        });

        $("button[whc='btn_submit']").click(function () {
            var whcId = $(this).attr("whcId");
            var whcName = $(this).attr("whcName");
            var $subForm = $("form[id=" + whcId + "]");
            $subForm.attr("action", "${pageContext.request.contextPath}/AdminUpdateGoods?id=" + whcId + "&whcName=" + whcName);
            $subForm.submit();
        });

        $("a[whc='btn_delete']").click(function () {
            var whcId = $(this).attr("whcId");
            var whcNameDelete = $(this).attr("whcNameDelete");
            window.location.href = "${pageContext.request.contextPath}/AdminDeleteGoods?id=" + whcId + "&whcNameDelete=" + whcNameDelete;
        });


        // 添加商品处理
        $("#addGoodsBtn").click(function () {
            $("#add_goods_div").modal();
        });

        $("#add_goods_btn").click(function () {
            var formData = new FormData();
            formData.append("file", $("#file2")[0].files[0]);

            $.ajax({
                url: "${pageContext.request.contextPath}/ImageUpLoad2",
                type: "post",
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                }
            });

            $("#add_goods_form").submit();
        });


        // 查看相似的商品
        $("#search_btn").click(function () {
            var searchTimeAndText = $("#search_date").val() + "//" + $("#search_text").val();
            window.location.href = "${pageContext.request.contextPath}/AdminGoodsTableSearch?search=" + searchTimeAndText;
        });


        //更改图片上传
        $(".file").on("change", function () {
            var whcId = $(this).attr("whcId");
            var formData = new FormData();
            formData.append("file", $(this)[0].files[0]);
            formData.append("whcId---" + whcId, "");

            $.ajax({
                url: "${pageContext.request.contextPath}/ImageUpLoad",
                type: "post",
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    setTimeout(function () {
                        window.location.href = "${pageContext.request.contextPath}/AdminGoodsTableInitAction?imageUpload=上传成功,数据同步完成"
                    }, 2000)
                }
            });
        });

        var alertInfo = function () {
            if ($("div[role=alert]").children().length > 1) {
                $("div[role=alert]").css("display", "block");
                $("div[role=alert]").animate({"left": "-=300px"}, "slow");

                setTimeout(function () {
                    $("div[role=alert]").animate({"left": "+=300px"}, "slow");
                }, 2000);
            }
        };

        alertInfo();
    });
</script>
</body>
</html>

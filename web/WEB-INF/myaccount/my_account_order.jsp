<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/6/14
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>我的订单</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/icons/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/icons/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/icons/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/icons/apple-touch-icon-57-precomposed.png"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/icons/favicon.png"/>

    <!-- BOOTSTRAP 3.3.7 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>

    <!-- SLICK v1.6.0 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick-1.6.0/slick.css"/>

    <link rel="stylesheet" href="https://cdn.bootcss.com/fancybox/2.1.5/jquery.fancybox.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/yith-woocommerce-compare/colorbox.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl-carousel/owl.carousel.min.css"/>
    <link rel="stylesheet" href="https://cdn.bootcss.com/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/js_composer/js_composer.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/woocommerce/woocommerce.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/woocommerce/woocommerce-layout.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/woocommerce/woocommerce-smallscreen.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/yith-woocommerce-wishlist/style.css"/>


    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app-orange.css" id="theme_color"/>
    <link rel="stylesheet" href="" id="rtl"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app-responsive.css"/>

</head>
<body class="page woocommerce-account woocommerce-page woocommerce-orders">
<div class="body-wrapper theme-clearfix">
    <header id="header" class="header header-style1">
        <div class="header-top clearfix">
            <div class="container">
                <div class="rows">
                    <!-- SIDEBAR TOP MENU -->
                    <div class="pull-left top1">
                        <div class="widget text-2 widget_text pull-left">
                            <div class="widget-inner">
                                <div class="textwidget">
                                    <div class="call-us"><span>致电给我们: </span>0521-400-8888</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="wrap-myacc pull-right">
                        <div class="sidebar-account pull-left">
                            <div class="account-title">欢迎:${user.userName}登录</div>
                            <div id="my-account" class="my-account">
                                <div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
                                    <div class="widget-inner">
                                        <ul id="menu-my-account" class="menu">
                                            <li class="menu-my-account">
                                                <a class="item-link" href="${pageContext.request.contextPath}/UserInitMyAccountAction">
                                                    <span class="menu-title">我的账户</span>
                                                </a>
                                            </li>

                                            <li class="menu-cart">
                                                <a class="item-link" href="${pageContext.request.contextPath}/CartInitAction">
                                                    <span class="menu-title">购物车</span>
                                                </a>
                                            </li>

                                            <li class="menu-checkout">
                                                <a class="item-link" href="${pageContext.request.contextPath}/SkipCheckoutAction">
                                                    <span class="menu-title">收银台</span>
                                                </a>
                                            </li>

                                            <li class="menu-wishlist">
                                                <a class="item-link" href="#">
                                                    <span class="menu-title">收藏</span>
                                                </a>
                                            </li>
                                            <li class="menu-wishlist">
                                                <a href="${pageContext.request.contextPath}/LoginOutAction" class="item-link">
                                                    <span>退出</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="pull-left top2">
                            <div class="widget-1 widget-first widget nav_menu-2 widget_nav_menu">
                                <div class="widget-inner">
                                    <ul id="menu-checkout" class="menu">
                                        <li class="menu-checkout">
                                            <a class="item-link" href="${pageContext.request.contextPath}/SkipCheckoutAction">
                                                <span class="menu-title">收银台</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="header-mid clearfix">
            <div class="container">
                <div class="rows">
                    <!-- LOGO -->
                    <div class="etrostore-logo pull-left">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/images/icons/logo-orange.png" alt="Shoopy">
                        </a>
                    </div>

                    <div class="mid-header pull-right">
                        <div class="widget-1 widget-first widget sw_top-2 sw_top">
                            <div class="widget-inner">
                                <div class="top-form top-search">
                                    <div class="topsearch-entry">
                                        <form method="get" action="">
                                            <div>
                                                <input type="text" value="" name="s" placeholder="输入您的关键字...">
                                                <div class="cat-wrapper">
                                                    <label class="label-search">
                                                        <select name="search_category" class="s1_option">
                                                            <option value="">所有类别</option>
                                                            <option value="8">电脑和笔记本电脑</option>
                                                            <option value="13">电脑和网络</option>
                                                            <option value="14">智能手机和平板电脑</option>
                                                            <option value="15">家居家具</option>
                                                            <option value="16">家用电器</option>
                                                            <option value="17">电子元件</option>
                                                            <option value="18">家庭用品</option>
                                                            <option value="32">家电</option>
                                                            <option value="49">饰品</option>
                                                            <option value="51">电子产品</option>
                                                            <option value="78">电视</option>
                                                            <option value="80">相机和配件</option>
                                                        </select>
                                                    </label>
                                                </div>

                                                <button type="submit" title="Search" class="fa fa-search button-search-pro form-button"></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <%--购物车--%>
                        <%--<c:if test="${not empty orderList}">--%>
                        <div class="widget sw_top-3 sw_top pull-left">
                            <div class="widget-inner">
                                <div class="top-form top-form-minicart etrostore-minicart pull-right">
                                    <div class="top-minicart-icon pull-right">
                                        <i class="fa fa-shopping-cart"></i>
                                        <a class="cart-contents" href="${pageContext.request.contextPath}/CartInitAction" title="查看您的购物车">
                                            <span class="minicart-number">${fn:length(orderList)}</span>
                                        </a>
                                    </div>

                                    <div class="wrapp-minicart">
                                        <div class="minicart-padding">
                                            <div class="number-item">
                                                这有<span>${fn:length(orderList)}</span>件商品在你的购物车
                                            </div>

                                            <ul class="minicart-content">
                                                <c:forEach var="order" items="${orderList}">
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${order.good.goodsName}" class="product-image">
                                                            <img width="100" height="100"
                                                                 src="${pageContext.request.contextPath}/${order.good.goodsImage}"
                                                                 class="attachment-100x100 size-100x100 wp-post-image" alt=""
                                                                 sizes="(max-width: 100px) 100vw, 100px"/>
                                                        </a>

                                                        <div class="detail-item">
                                                            <div class="product-details">
                                                                <h4>
                                                                    <a class="title-item"
                                                                       href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${order.good.goodsName}">${order.good.goodsName}</a>
                                                                </h4>

                                                                <div class="product-price">
																	        <span class="price">
                                                                                <span class="woocommerce-Price-amount amount">
																			        <span class="woocommerce-Price-currencySymbol">￥</span>${order.good.goodsPrice}
																		        </span>
																	        </span>
                                                                    <div class="qty">
                                                                        <span class="qty-number">${order.orderNum}</span>
                                                                    </div>
                                                                </div>

                                                                <div class="product-action clearfix">
                                                                    <a href="#" class="btn-remove" title="删除此项目">
                                                                        <span class="fa fa-trash-o"></span>
                                                                    </a>

                                                                    <a class="btn-edit" href="${pageContext.request.contextPath}/CartInitAction" title="查看您的购物车">
                                                                        <span class="fa fa-pencil"></span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                            </ul>

                                            <div class="cart-checkout">
                                                <div class="cart-links clearfix">
                                                    <div class="cart-link">
                                                        <a href="${pageContext.request.contextPath}/CartInitAction" title="Cart">查看购物车</a>
                                                    </div>

                                                    <div class="checkout-link">
                                                        <a href="#" title="Check Out">查看</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--</c:if>--%>

                        <div class="widget nav_menu-3 widget_nav_menu pull-left">
                            <div class="widget-inner">
                                <ul id="menu-wishlist" class="menu">
                                    <li class="menu-wishlist">
                                        <a class="item-link" href="#">
                                            <span class="menu-title">收藏</span>
                                        </a>
                                    </li>

                                    <li class="yith-woocompare-open menu-compare">
                                        <a class="item-link compare" href="#">
                                            <span class="menu-title">比较</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="listings-title">
        <div class="container">
            <div class="wrap-title">
                <h1>主页</h1>

                <div class="bread">
                    <div class="breadcrumbs theme-clearfix">
                        <div class="container">
                            <ul class="breadcrumb">
                                <li>
                                    <a href="${pageContext.request.contextPath}/SkipIndexAction">主页</a>
                                    <span class="go-page"></span>
                                </li>

                                <li class="active">
                                    <span>主页</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div id="contents" role="main" class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="post-6 page type-page status-publish hentry">
                    <div class="entry">
                        <div class="entry-content">
                            <header>
                                <h2 class="entry-title">我的账户</h2>
                            </header>

                            <div class="entry-content">
                                <div class="woocommerce">
                                    <nav class="woocommerce-MyAccount-navigation">
                                        <ul>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/SkipMyAccountAction">主要</a>
                                            </li>

                                            <li class="is-active">
                                                <a href="${pageContext.request.contextPath}/SkipMyAccountOrderAction">订单</a>
                                            </li>

                                            <li>
                                                <a href="${pageContext.request.contextPath}/SkipMyAccountDetailsAction">账户详情</a>
                                            </li>

                                            <li>
                                                <a href="${pageContext.request.contextPath}/LoginOutAction">退出</a>
                                            </li>
                                        </ul>
                                    </nav>

                                    <div class="woocommerce-MyAccount-content">
                                        <table class="shop_table shop_table_responsive my_account_orders account-orders-table">
                                            <thead>
                                            <tr>
                                                <th class="order-number"><span class="nobr">订单</span></th>
                                                <th class="order-date"><span class="nobr">日期</span></th>
                                                <th class="order-status"><span class="nobr">状态</span></th>
                                                <th class="order-total"><span class="nobr">全部</span></th>
                                                <th class="order-actions"><span class="nobr">&nbsp;</span></th>
                                            </tr>
                                            </thead>
                                            <c:if test="${not empty orderAllList}">
                                                <tbody>
                                                <c:forEach var="order" items="${orderAllList}">
                                                    <tr class="order">
                                                        <td class="order-number" data-title="订单号">
                                                                <a href="#">${order.orderId}</a>
                                                        </td>
                                                        <td class="order-date" data-title="订单日期">
                                                                <time datetime="2017-01-10" title="1484074846">${order.createTime}</time>
                                                        </td>
                                                        <td class="order-status" data-title="状态">
                                                                ${order.status}
                                                        </td>
                                                        <td class="order-status" data-title="订单地址">
                                                                ${order.orderAddress}
                                                        </td>
                                                        <td class="order-total" data-title="共计">
                                                                ${order.orderNum}件 -总：${order.sum}元
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </c:if>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer id="footer" class="footer default theme-clearfix">
        <!-- Content footer -->
        <div class="container">
            <div class="vc_row wpb_row vc_row-fluid">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner ">
                        <div class="wpb_wrapper">
                            <div id="sw_testimonial01" class="testimonial-slider client-wrapper-b carousel slide " data-interval="0">
                                <div class="carousel-cl nav-custom">
                                    <a class="prev-test fa fa-angle-left" href="#sw_testimonial01" role="button"
                                       data-slide="prev"><span></span></a>
                                    <a class="next-test fa fa-angle-right" href="#sw_testimonial01" role="button" data-slide="next"><span></span></a>
                                </div>
                                <div class="carousel-inner">
                                    <c:forEach varStatus="status" var="comment" items="${coomentMap}">
                                        <%--用户名：${comment.key.userName}--%>
                                        <%--用户头像：${comment.key.userImage}--%>
                                        <%--用户评价:${comment.value}(集合)--%>
                                        <c:if test="${status.count==1}">
                                            <div class="item active">
                                                <c:forEach var="com" items="${comment.value}">
                                                    <div class="item-inner">
                                                        <div class="image-client pull-left">
                                                            <a href="#" title="">
                                                                <img width="127" height="127"
                                                                     src="${pageContext.request.contextPath}/${comment.key.userImage}"
                                                                     class="attachment-thumbnail size-thumbnail wp-post-image" alt=""/>
                                                            </a>
                                                        </div>

                                                        <div class="client-say-info">
                                                            <div class="client-comment">
                                                                    ${com}
                                                            </div>

                                                            <div class="name-client">
                                                                <h2><a href="#" title="">${comment.key.userName}</a></h2>
                                                                <p>Web Developer</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </c:if>
                                        <c:if test="${status.count>1}">
                                            <div class="item ">
                                                <c:forEach var="com" items="${comment.value}">
                                                    <div class="item-inner">
                                                        <div class="image-client pull-left">
                                                            <a href="#" title="">
                                                                <img width="127" height="127"
                                                                     src="${pageContext.request.contextPath}/${comment.key.userImage}"
                                                                     class="attachment-thumbnail size-thumbnail wp-post-image" alt=""/>
                                                            </a>
                                                        </div>

                                                        <div class="client-say-info">
                                                            <div class="client-comment">
                                                                    ${com}
                                                            </div>

                                                            <div class="name-client">
                                                                <h2><a href="#" title="">${comment.key.userName}</a></h2>
                                                                <p>Web Developer</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true"
                 class="vc_row wpb_row vc_row-fluid footer-style1 vc_row-no-padding">
                <div class="container float wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner ">
                        <div class="wpb_wrapper">
                            <div class="vc_row wpb_row vc_inner vc_row-fluid footer-top">
                                <div class="wpb_column vc_column_container vc_col-sm-8">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <div class="wrap-newletter">
                                                        <h3>邮箱订阅</h3>

                                                        <form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-275" method="post" data-id="275"
                                                              data-name="">
                                                            <div class="mc4wp-form-fields">
                                                                <div class="newsletter-content">
                                                                    <input type="email" class="newsletter-email" name="EMAIL"
                                                                           placeholder="你的邮件"
                                                                           required=""/>
                                                                    <input class="newsletter-submit" type="submit" value="订阅"/>
                                                                </div>
                                                            </div>
                                                            <div class="mc4wp-response"></div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="wpb_column vc_column_container vc_col-sm-4">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="wpb_raw_code wpb_content_element wpb_raw_html">
                                                <div class="wpb_wrapper">
                                                    <div class="shop-social">
                                                        <ul>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-facebook"></i>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-twitter"></i>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-google-plus"></i>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-linkedin"></i>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-pinterest-p"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="vc_row wpb_row vc_inner vc_row-fluid footer-bottom">
                                <div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <div class="ya-logo">
                                                        <a href="#">
                                                            <img src="${pageContext.request.contextPath}/images/icons/logo-footer.png" alt="logo"/>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="wpb_raw_code wpb_content_element wpb_raw_html">
                                                <div class="wpb_wrapper">
                                                    <div class="infomation">
                                                        <p>
                                                            测试网页文字
                                                            0101 SOS
                                                            BLZ
                                                        </p>

                                                        <div class="info-support">
                                                            <ul>
                                                                <li>山东省，紫薇路路，格拉斯哥，D04 89GR。</li>
                                                                <li>(801) 2345 - 6788 / (801) 2345 - 6789</li>
                                                                <li><a href="mailto:contact@etrostore.com">支持@某商店.com</a></li>
                                                            </ul>
                                                        </div>

                                                        <div class="store">
                                                            <a href="#">
                                                                <img src="${pageContext.request.contextPath}/images/1903/app-store.png" alt="store"
                                                                     title="store"/>
                                                            </a>

                                                            <a href="#">
                                                                <img src="${pageContext.request.contextPath}/images/1903/google-store.png" alt="store"
                                                                     title="store"/>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="vc_wp_custommenu wpb_content_element">
                                                <div class="widget widget_nav_menu">
                                                    <h2 class="widgettitle">支持</h2>

                                                    <ul id="menu-support" class="menu">
                                                        <li class="menu-product-support">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">产品支持</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-pc-setup-support-services">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">PC设置和支持服务</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-extended-service-plans">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">扩展的服务计划</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-community">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">社区</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-product-manuals">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">产品手册</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-product-registration">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">产品注册</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="vc_wp_custommenu wpb_content_element">
                                                <div class="widget widget_nav_menu">
                                                    <h2 class="widgettitle">您的链接</h2>

                                                    <ul id="menu-your-links" class="menu">
                                                        <li class="menu-my-account">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/SkipMyAccountAction">
                                                                <span class="menu-title">我的账户</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-order-tracking">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/SkipMyAccountOrderAction">
                                                                <span class="menu-title">订单跟踪</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-watch-list">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">查看列表</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-customer-service">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">客户服务</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-returns-exchanges">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/SkipMyAccountOrderAction">
                                                                <span class="menu-title">退货/换货</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-faqs">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">常见问题解答</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-financing">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">融资</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-card">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">信用卡</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="wpb_raw_code wpb_content_element wpb_raw_html">
                                                <div class="wpb_wrapper">
                                                    <div class="sp-map">
                                                        <div class="title">
                                                            <h2>找到一家商店</h2>
                                                        </div>

                                                        <img src="${pageContext.request.contextPath}/images/1903/map.jpg" alt="map" title="map"/>

                                                        <a href="#" class="link-map">商店位置</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="vc_wp_custommenu wpb_content_element wrap-cus">
                                <div class="widget widget_nav_menu">
                                    <ul id="menu-infomation" class="menu">
                                        <li class="menu-about-us">
                                            <a class="item-link" href="#">
                                                <span class="menu-title">关于我们</span>
                                            </a>
                                        </li>

                                        <li class="menu-customer-service">
                                            <a class="item-link" href="#">
                                                <span class="menu-title">客户服务</span>
                                            </a>
                                        </li>

                                        <li class="menu-privacy-policy">
                                            <a class="item-link" href="#">
                                                <span class="menu-title">隐私政策</span>
                                            </a>
                                        </li>

                                        <li class="menu-site-map">
                                            <a class="item-link" href="#">
                                                <span class="menu-title">网站地图</span>
                                            </a>
                                        </li>

                                        <li class="menu-orders-and-returns">
                                            <a class="item-link" href="#">
                                                <span class="menu-title">订单和退货</span>
                                            </a>
                                        </li>

                                        <li class="menu-contact-us">
                                            <a class="item-link" href="#">
                                                <span class="menu-title">联系我们</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="vc_row-full-width vc_clearfix"></div>
        </div>

        <div class="footer-copyright style1">
            <div class="container">
                <!-- Copyright text -->
                <div class="copyright-text pull-left">
                    <p>版权和复制; 公司名称保留所有权利。<a target="_blank" href="#"></a>
                    </p>
                </div>

                <div class="sidebar-copyright pull-right">
                    <div class="widget-1 widget-first widget text-4 widget_text">
                        <div class="widget-inner">
                            <div class="textwidget">
                                <div class="payment">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/images/1903/paypal.png" alt="payment" title="payment"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<!-- DIALOGS -->
<div class="modal fade" id="login_form" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog block-popup-login">
        <a href="javascript:void(0)" title="Close" class="close close-login" data-dismiss="modal">Close</a>

        <div class="tt_popup_login">
            <strong>Sign in Or Register</strong>
        </div>

        <div class="block-content">
            <div class="col-reg registered-account">
                <div class="email-input">
                    <input type="text" class="form-control input-text username" name="username" id="username" placeholder="Username"/>
                </div>

                <div class="pass-input">
                    <input class="form-control input-text password" type="password" placeholder="Password" name="password" id="password"/>
                </div>

                <div class="ft-link-p">
                    <a href="#" title="Forgot your password">Forgot your password?</a>
                </div>

                <div class="actions">
                    <div class="submit-login">
                        <input type="submit" class="button btn-submit-login" name="login" value="Login"/>
                    </div>
                </div>
            </div>

            <div class="col-reg login-customer">
                <h2>NEW HERE?</h2>

                <p class="note-reg">Registration is free and easy!</p>

                <ul class="list-log">
                    <li>Faster checkout</li>

                    <li>Save multiple shipping addresses</li>

                    <li>View and track orders and more</li>
                </ul>

                <a href="#" title="Register" class="btn-reg-popup">Create an account</a>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

<a id="etrostore-totop" href="#"></a>

<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/js.cookie.min.js"></script>

<!-- OPEN LIBS JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/owl-carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/slick-1.6.0/slick.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sw_woocommerce/category-ajax.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sw_woocommerce/jquery.countdown.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js_composer/js_composer_front.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/megamenu.min.js"></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.min.js"></script>--%>

<script type="text/javascript">

    $(document).ready(function () {
        $(".show-dropdown").each(function () {
            $(this).on("click", function () {
                $(this).toggleClass("show");
                var $element = $(this).parent().find("> ul");
                $element.toggle(300);
            });
        });
    });
</script>

</body>
</html>

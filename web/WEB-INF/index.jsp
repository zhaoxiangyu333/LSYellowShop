<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/6/10
  Time: 7:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>盗版购物，就来XX</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/yith-woocommerce-wishlist/style.css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/yith-woocommerce-wishlist/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app-orange.css" id="theme_color"/>
    <link rel="stylesheet" href="" id="rtl"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app-responsive.css"/>
</head>
<body>
<div class="page page-id-6 home-style1">
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

                        <c:choose>
                            <c:when test="${empty user}">
                                <div class="wrap-myacc pull-right">
                                    <div class="sidebar-account pull-left">
                                        <div class="account-title">我的账户</div>
                                        <div id="my-account" class="my-account">
                                            <div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
                                                <div class="widget-inner">
                                                    <ul id="menu-my-account" class="menu">
                                                        <li class="menu-my-account">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/UserInitMyAccountAction">
                                                                <span class="menu-title">我的账户</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-cart">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/CartInitAction">
                                                                <span class="menu-title">购物车</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-checkout">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/SkipCheckoutAction">
                                                                <span class="menu-title">收银台</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-wishlist">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">收藏</span>
                                                            </a>
                                                        </li>
                                                        <li class="menu-wishlist">
                                                            <a href="${pageContext.request.contextPath}/SkipLoginIndexAction"
                                                               class="item-link">
                                                                <span>登录</span>
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
                                                        <a class="item-link"
                                                           href="${pageContext.request.contextPath}/SkipCheckoutAction">
                                                            <span class="menu-title">收银台</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="wrap-myacc pull-right">
                                    <div class="sidebar-account pull-left">
                                        <div class="account-title">欢迎:${user.userName}登录</div>

                                        <div id="my-account" class="my-account">
                                            <div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
                                                <div class="widget-inner">
                                                    <ul id="menu-my-account" class="menu">
                                                        <li class="menu-my-account">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/UserInitMyAccountAction">
                                                                <span class="menu-title">我的账户</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-cart">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/CartInitAction">
                                                                <span class="menu-title">购物车</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-checkout">
                                                            <a class="item-link"
                                                               href="${pageContext.request.contextPath}/SkipCheckoutAction">
                                                                <span class="menu-title">收银台</span>
                                                            </a>
                                                        </li>

                                                        <li class="menu-wishlist">
                                                            <a class="item-link" href="#">
                                                                <span class="menu-title">收藏</span>
                                                            </a>
                                                        </li>
                                                        <li class="menu-wishlist">
                                                            <a href="${pageContext.request.contextPath}/LoginOutAction"
                                                               class="item-link">
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
                                                        <a class="item-link"
                                                           href="${pageContext.request.contextPath}/SkipCheckoutAction">
                                                            <span class="menu-title">收银台</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>

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

                                            <form method="get"
                                                  action="${pageContext.request.contextPath}/QueryGoodsAction">
                                                <div>
                                                    <input type="text" value="" name="queryinfo"
                                                           placeholder="输入您的关键字...">
                                                    <div class="cat-wrapper">
                                                        <label class="label-search">
                                                            <select name="search_category" class="s1_option">
                                                                <option value="">所有类别</option>
                                                                <c:forEach var="pro" items="${pros}">
                                                                    <option value="${pro.proId}">${pro.proName}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </label>
                                                    </div>
                                                    <button type="submit" title="Search"
                                                            class="fa fa-search button-search-pro form-button"></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%--购物车--%>
                            <c:if test="${empty user}">
                                <div class="widget sw_top-3 sw_top pull-left">
                                    <div class="widget-inner">
                                        <div class="top-form top-form-minicart etrostore-minicart pull-right">
                                            <div class="top-minicart-icon pull-right">
                                                <i class="fa fa-shopping-cart"></i>
                                            </div>

                                            <div class="wrapp-minicart">
                                                <div class="minicart-padding">
                                                    <div class="number-item">
                                                        <span><a
                                                                href="${pageContext.request.contextPath}/WEB-INF/login/index.jsp">请登录查看购物车</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>

                            <c:if test="${not empty user}">
                                <div class="widget sw_top-3 sw_top pull-left">
                                    <div class="widget-inner">
                                        <div class="top-form top-form-minicart etrostore-minicart pull-right">
                                            <div class="top-minicart-icon pull-right">
                                                <i class="fa fa-shopping-cart"></i>
                                                <a class="cart-contents"
                                                   href="${pageContext.request.contextPath}/CartInitAction"
                                                   title="查看您的购物车">
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
                                                                <a
                                                                        href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${order.good.goodsName}"
                                                                        class="product-image">
                                                                    <img width="100" height="100"
                                                                         src="${pageContext.request.contextPath}/${order.good.goodsImage}"
                                                                         class="attachment-100x100 size-100x100 wp-post-image"
                                                                         alt=""
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
                                                                            <a href="#" class="btn-remove"
                                                                               title="删除此项目">
                                                                                <span class="fa fa-trash-o"></span>
                                                                            </a>

                                                                            <a class="btn-edit"
                                                                               href="${pageContext.request.contextPath}/CartInitAction"
                                                                               title="查看您的购物车">
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
                                                                <a href="${pageContext.request.contextPath}/CartInitAction"
                                                                   title="Cart">查看购物车</a>
                                                            </div>

                                                            <div class="checkout-link">
                                                                <a href="#">查看</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>

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
                        <div class="entry-content">
                            <div class="entry-summary">
                                <div data-vc-full-width="true" data-vc-full-width-init="false"
                                     data-vc-stretch-content="true"
                                     class="vc_row wpb_row vc_row-fluid bg-wrap vc_custom_1487642348040 vc_row-no-padding">
                                    <div class="container float wpb_column vc_column_container vc_col-sm-12">
                                        <div class="vc_column-inner ">
                                            <div class="wpb_wrapper">
                                                <div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1481518924466">
                                                    <div class="wrap-vertical wpb_column vc_column_container vc_col-sm-2">
                                                        <div class="vc_column-inner vc_custom_1481518234612">
                                                            <div class="wpb_wrapper">
                                                                <div class="vc_wp_custommenu wpb_content_element wrap-title">
                                                                    <div class="mega-left-title">
                                                                        <strong>分类</strong>
                                                                    </div>

                                                                    <div class="wrapper_vertical_menu vertical_megamenu">
                                                                        <div class="resmenu-container">
                                                                            <button class="navbar-toggle" type="button"
                                                                                    data-toggle="collapse"
                                                                                    data-target="#ResMenuvertical_menu">
                                                                                <span class="sr-only">分类</span>
                                                                                <span class="icon-bar"></span>
                                                                                <span class="icon-bar"></span>
                                                                                <span class="icon-bar"></span>
                                                                            </button>
                                                                        </div>

                                                                        <ul id="menu-vertical-menu-1"
                                                                            class="nav vertical-megamenu etrostore-mega etrostore-menures">

                                                                            <c:forEach var="pro" items="${pros}">
                                                                                <li class=" etrostore-menu-custom level1">
                                                                                    <a href="${pageContext.request.contextPath}/ShopPage?typeCat=${pro.proId}"
                                                                                       class="item-link">
																					<span class="have-title">
																						<span class="menu-color"
                                                                                              data-color="orange"></span>

																						<span class="menu-title">${pro.proName}</span>
																					</span>
                                                                                    </a>
                                                                                </li>
                                                                            </c:forEach>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="wrap-slider wpb_column vc_column_container vc_col-sm-8">
                                                        <div class="vc_column-inner vc_custom_1483000674370">
                                                            <div class="wpb_wrapper">
                                                                <!-- OWL SLIDER -->
                                                                <div class="wpb_revslider_element wpb_content_element no-margin">
                                                                    <div class="vc_column-inner ">
                                                                        <div class="wpb_wrapper">
                                                                            <div class="wpb_revslider_element wpb_content_element">
                                                                                <div id="main-slider"
                                                                                     class="fullwidthbanner-container"
                                                                                     style="position:relative; width:100%; height:auto; margin-top:0px; margin-bottom:0px">
                                                                                    <div class="module slideshow no-margin">
                                                                                        <div class="item">
                                                                                            <a href="javascript:void(0)"><img
                                                                                                    src="${pageContext.request.contextPath}/images/1903/slider2.jpg"
                                                                                                    alt="slider1"
                                                                                                    class="img-responsive"
                                                                                                    height="559"></a>
                                                                                        </div>
                                                                                        <div class="item">
                                                                                            <a href="javascript:void(0)"><img
                                                                                                    src="${pageContext.request.contextPath}/images/1903/01_index_v1.jpg"
                                                                                                    alt="slider2"
                                                                                                    class="img-responsive"
                                                                                                    height="559"></a>
                                                                                        </div>
                                                                                        <div class="item">
                                                                                            <a href="javascript:void(0)"><img
                                                                                                    src="${pageContext.request.contextPath}/images/1903/slider3.jpg"
                                                                                                    alt="slider3"
                                                                                                    class="img-responsive"
                                                                                                    height="559"></a>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="loadeding"></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--  动画滑条 -->

                                                                <div class="wpb_raw_code wpb_content_element wpb_raw_html">
                                                                    <div class="wpb_wrapper">
                                                                        <div class="banner">
                                                                            <a href="#" class="banner1">
                                                                                <img src="${pageContext.request.contextPath}/images/1903/banner3.jpg"
                                                                                     alt="banner" title="banner"/>
                                                                            </a>

                                                                            <a href="#" class="banner2">
                                                                                <img src="${pageContext.request.contextPath}/images/1903/banner4.jpg"
                                                                                     alt="banner" title="banner"/>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="wrap-banner wpb_column vc_column_container vc_col-sm-2">
                                                        <div class="vc_column-inner vc_custom_1483000922579">
                                                            <div class="wpb_wrapper">
                                                                <div class="wpb_single_image wpb_content_element vc_align_center vc_custom_1481518385054">
                                                                    <figure class="wpb_wrapper vc_figure">
                                                                        <a href="#" target="_self"
                                                                           class="vc_single_image-wrapper vc_box_border_grey">
                                                                            <img class="vc_single_image-img"
                                                                                 src="${pageContext.request.contextPath}/images/1903/banner1.jpg"
                                                                                 width="193"
                                                                                 height="352" alt="banner1"
                                                                                 title="banner1"/>
                                                                        </a>
                                                                    </figure>
                                                                </div>

                                                                <div class="wpb_single_image wpb_content_element vc_align_center">
                                                                    <figure class="wpb_wrapper vc_figure">
                                                                        <a href="#" target="_self"
                                                                           class="vc_single_image-wrapper vc_box_border_grey">
                                                                            <img class="vc_single_image-img"
                                                                                 src="${pageContext.request.contextPath}/images/1903/banner2.jpg"
                                                                                 width="193"
                                                                                 height="175" alt="banner2"
                                                                                 title="banner2"/>
                                                                        </a>
                                                                    </figure>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="wpb_raw_code wpb_content_element wpb_raw_html">
                                                    <div class="wpb_wrapper">
                                                        <div class="wrap-transport">
                                                            <div class="row">
                                                                <div class="item item-1 col-lg-3 col-md-3 col-sm-6">
                                                                    <a href="#" class="wrap">
                                                                        <div class="icon">
                                                                            <i class="fa fa-paper-plane"></i>
                                                                        </div>

                                                                        <div class="content">
                                                                            <h3>退款保证</h3>
                                                                            <p>30天退款k</p>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                                <div class="item item-2 col-lg-3 col-md-3 col-sm-6">
                                                                    <a href="#" class="wrap">
                                                                        <div class="icon">
                                                                            <i class="fa fa-map-marker"></i>
                                                                        </div>

                                                                        <div class="content">
                                                                            <h3>全球免运费</h3>
                                                                            <p>订单超过100美元</p>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                                <div class="item item-3 col-lg-3 col-md-3 col-sm-6">
                                                                    <a href="#" class="wrap">
                                                                        <div class="icon">
                                                                            <i class="fa fa-tag"></i>
                                                                        </div>

                                                                        <div class="content">
                                                                            <h3>会员折扣</h3>
                                                                            <p>高达70％的折扣</p>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                                <div class="item item-4 col-lg-3 col-md-3 col-sm-6">
                                                                    <a href="#" class="wrap">
                                                                        <div class="icon">
                                                                            <i class="fa fa-life-ring"></i>
                                                                        </div>

                                                                        <div class="content">
                                                                            <h3>24/7在线支持</h3>
                                                                            <p>技术支持24/7</p>
                                                                        </div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="vc_row-full-width vc_clearfix"></div>
                                <%--折扣专区--%>
                                <div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
                                    <div class="wpb_column vc_column_container vc_col-sm-12">
                                        <div class="vc_column-inner ">
                                            <div class="wpb_wrapper">
                                                <div id="_sw_countdown_01"
                                                     class="sw-woo-container-slider responsive-slider countdown-slider"
                                                     data-lg="5"
                                                     data-md="4" data-sm="2" data-xs="1" data-mobile="1"
                                                     data-speed="1000" data-scroll="1"
                                                     data-interval="5000" data-autoplay="false" data-circle="false">
                                                    <div class="resp-slider-container">
                                                        <div class="box-title clearfix">
                                                            <h3>近日折扣</h3>
                                                            <a href="javascript:void(0)">查看全部</a>
                                                        </div>

                                                        <div class="banner-content clearfix">
                                                            <img width="195" height="354"
                                                                 src="${pageContext.request.contextPath}/images/1903/image-cd.jpg"
                                                                 class="attachment-larges size-larges" alt=""
                                                                 srcset="${pageContext.request.contextPath}/images/1903/image-cd.jpg 195w, images/1903/image-cd-165x300.jpg 165w"
                                                                 sizes="(max-width: 195px) 100vw, 195px"/>
                                                        </div>


                                                        <%--折扣商品专区初始化后加载信息--%>
                                                        <div class="slider responsive">
                                                            <c:forEach var="discountitem" items="${discountList}">
                                                                <div class="item-countdown product "
                                                                     id="product_sw_countdown_02">
                                                                    <div class="item-wrap">
                                                                        <div class="item-detail">
                                                                            <div class="item-content">
                                                                                <!-- rating  -->
                                                                                <div class="reviews-content">
                                                                                    <div class="star">
                                                                                        <span style="width:35px"></span>
                                                                                    </div>

                                                                                    <div class="item-number-rating">
                                                                                        2个评论
                                                                                    </div>
                                                                                </div>
                                                                                <!-- end rating  -->

                                                                                <h4>
                                                                                    <a href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${discountitem.goodsName}"
                                                                                       title="veniam
                                                                                    dolore">${discountitem.goodsName}</a>
                                                                                </h4>

                                                                                <!-- Price -->
                                                                                <div class="item-price">
																				<span>
																					<del>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">￥
                                                                                            </span>${discountitem.goodsPrice}
																						</span>
																					</del>

																					<ins>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">￥</span>${discountitem.goodsPrice}
																						</span>
																					</ins>
																				</span>
                                                                                </div>

                                                                                <div class="sale-off">-24%</div>

                                                                                <div class="product-countdown"
                                                                                     data-date="1519776000"
                                                                                     data-price="$250"
                                                                                     data-starttime="1483747200"
                                                                                     data-cdtime="1519776000"
                                                                                     data-id="product_sw_countdown_02"></div>
                                                                            </div>

                                                                            <div class="item-image-countdown">
                                                                                <a href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${discountitem.goodsName}">
                                                                                    <div class="product-thumb-hover">
                                                                                        <img width="150" height="150"
                                                                                             src="${pageContext.request.contextPath}/${discountitem.goodsImage}"
                                                                                             class="attachment-shop_catalog size-shop_catalog wp-post-image"
                                                                                             sizes="(max-width: 150px) 100vw, 150px"/>
                                                                                    </div>
                                                                                </a>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--折扣专区END--%>

                                <%--电子产品--%>
                                <div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
                                    <div class="wpb_column vc_column_container vc_col-sm-12">
                                        <div class="vc_column-inner ">
                                            <div class="wpb_wrapper">
                                                <div id="slider_sw_woo_slider_widget_1"
                                                     class="responsive-slider woo-slider-default sw-child-cat clearfix"
                                                     data-lg="3" data-md="3" data-sm="2" data-xs="2" data-mobile="1"
                                                     data-speed="1000" data-scroll="1"
                                                     data-interval="5000" data-autoplay="false"
                                                     style="height: 560px; overflow: hidden">
                                                    <div class="child-top clearfix" data-color="#7ac143">
                                                        <div class="box-title pull-left">
                                                            <h3>电子产品</h3>

                                                            <button class="navbar-toggle" type="button"
                                                                    data-toggle="collapse"
                                                                    data-target="#child_sw_woo_slider_widget_1"
                                                                    aria-expanded="false">
                                                                <span class="icon-bar"></span>
                                                                <span class="icon-bar"></span>
                                                                <span class="icon-bar"></span>
                                                            </button>
                                                        </div>

                                                        <div class="box-title-right clearfix">
                                                            <div class="childcat-content pull-left"
                                                                 id="child_sw_woo_slider_widget_1">
                                                                <ul>
                                                                    <li><a id="bclick_tv">电视</a></li>
                                                                    <li><a id="bclick_water">家用电器</a></li>
                                                                    <li><a id="bclick_computer">笔记本电脑</a></li>
                                                                    <li><a id="bclick_pad">平板电脑</a></li>
                                                                    <li><a id="bclick_ear">耳机</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <%--<FIXME>ajax异步刷新</FIXME>--%>
                                                    <%--<FIXME>ajax异步刷新</FIXME>--%>
                                                    <%--<FIXME>ajax异步刷新</FIXME>--%>
                                                    <%--<FIXME>ajax异步刷新</FIXME>--%>

                                                    <%--异步刷新**********************************--%>
                                                    <div class="content-slider" id="b_tv">
                                                        <div class="childcat-slider-content clearfix">
                                                            <!-- 品牌标志 -->
                                                            <div class="child-cat-brand pull-left">
                                                                <c:forEach var="brand" items="${brandList}"
                                                                           varStatus="status">
                                                                    <div class="item-brand">
                                                                        <a href="#">
                                                                            <img width="170" height="87"
                                                                                 src="${pageContext.request.contextPath}/${brand.brandImage}"
                                                                                 class="attachment-170x90 size-170x90"
                                                                                 alt="${brand.brandName}"/>
                                                                        </a>
                                                                    </div>
                                                                </c:forEach>
                                                            </div>

                                                            <!-- 详细物品区域 -->
                                                            <div class="resp-slider-container">
                                                                <div class="slider responsive" id="ajaxR">
                                                                    <c:forEach var="good" items="${tvList}"
                                                                               varStatus="status">
                                                                        <div class="item product"
                                                                             style="height: 900px;">
                                                                            <div class="item-wrap">
                                                                                <div class="item-detail">
                                                                                    <div class="item-content">
                                                                                        <!-- 评分  -->
                                                                                        <div class="reviews-content">
                                                                                            <div class="star"></div>
                                                                                            <div class="item-number-rating">
                                                                                                0 Review(s)
                                                                                            </div>
                                                                                        </div>
                                                                                        <!-- 最终评级  -->

                                                                                        <h4>
                                                                                            <a href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${good.goodsName}"
                                                                                               title="voluptate ipsum">${good.goodsName}</a>
                                                                                        </h4>

                                                                                        <!-- 价格 -->
                                                                                        <div class="item-price">
																						<span>
																							<span class="woocommerce-Price-amount amount">
																								<span class="woocommerce-Price-currencySymbol">￥
                                                                                                </span>${good.goodsPrice}
																							</span>
																						</span>
                                                                                        </div>
                                                                                    </div>

                                                                                    <div class="item-img products-thumb">
                                                                                        <a href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${good.goodsName}">
                                                                                            <div class="product-thumb-hover">
                                                                                                <img width="250px"
                                                                                                     height="150px"
                                                                                                     src="${pageContext.request.contextPath}/${good.goodsImage}"
                                                                                                     class="attachment-shop_catalog size-shop_catalog wp-post-image"
                                                                                                     alt="${good.goodsName}"
                                                                                                     sizes="(max-width: 100px) 100vw, 100px"/>
                                                                                            </div>
                                                                                        </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </c:forEach>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="best-seller-product">
                                                            <div class="box-slider-title">
                                                                <h2 class="page-title-slider">Best sellers</h2>
                                                            </div>

                                                            <%--右侧商品栏目--%>
                                                            <div class="wrap-content">

                                                                <c:forEach items="${discountList}" var="item"
                                                                           varStatus="status">
                                                                    <div class="item">
                                                                        <div class="item-inner">
                                                                            <div class="item-img">
                                                                                <a href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${item.goodsName}"
                                                                                   title="${item.goodsName}">
                                                                                    <img width="180" height="180"
                                                                                         src="${pageContext.request.contextPath}/${item.goodsImage}"
                                                                                         class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                                         sizes="(max-width: 180px) 100vw, 180px"/>
                                                                                </a>
                                                                            </div>

                                                                            <div class="item-sl pull-left">${status.count}</div>

                                                                            <div class="item-content">
                                                                                <!-- rating  -->
                                                                                <div class="reviews-content">
                                                                                    <div class="star"></div>
                                                                                    <div class="item-number-rating">0
                                                                                        Review(s)
                                                                                    </div>
                                                                                </div>
                                                                                <!-- end rating  -->

                                                                                <h4>
                                                                                    <a href="${pageContext.request.contextPath}/QueryGoodAction?goodName=${item.goodsName}"
                                                                                       title="${item.goodsName}">${item.goodsName}</a>
                                                                                </h4>

                                                                                <div class="item-price">
																				<span class="woocommerce-Price-amount amount">
																					<span class="woocommerce-Price-currencySymbol">￥</span>${item.goodsPrice}
																				</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:forEach>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <%--电子产品END--%>


                                <%--中间产品图片--%>
                                <div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
                                    <div class="wpb_column vc_column_container vc_col-sm-6">
                                        <div class="vc_column-inner ">
                                            <div class="wpb_wrapper">
                                                <div class="wpb_single_image wpb_content_element vc_align_center">
                                                    <figure class="wpb_wrapper vc_figure">
                                                        <a href="#" target="_self"
                                                           class="vc_single_image-wrapper vc_box_border_grey">
                                                            <img class="vc_single_image-img"
                                                                 src="${pageContext.request.contextPath}/images/1903/banner6-1.jpg"
                                                                 width="570" height="220"
                                                                 alt="banner6" title="banner6"/>
                                                        </a>
                                                    </figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="wpb_column vc_column_container vc_col-sm-6">
                                        <div class="vc_column-inner ">
                                            <div class="wpb_wrapper">
                                                <div class="wpb_single_image wpb_content_element vc_align_center banner-none">
                                                    <figure class="wpb_wrapper vc_figure">
                                                        <a href="#" target="_self"
                                                           class="vc_single_image-wrapper vc_box_border_grey">
                                                            <img class="vc_single_image-img"
                                                                 src="${pageContext.request.contextPath}/images/1903/banner7-1.jpg"
                                                                 width="570" height="220"
                                                                 alt="banner7" title="banner7"/>
                                                        </a>
                                                    </figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--中间产品图片END--%>


                                <div class="vc_row wpb_row vc_row-fluid">
                                    <div class="wpb_column vc_column_container vc_col-sm-12">
                                        <div class="vc_column-inner ">
                                            <div class="wpb_wrapper"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>
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
                                <div id="sw_testimonial01" class="testimonial-slider client-wrapper-b carousel slide "
                                     data-interval="0">
                                    <div class="carousel-cl nav-custom">
                                        <a class="prev-test fa fa-angle-left" href="#sw_testimonial01" role="button"
                                           data-slide="prev"><span></span></a>
                                        <a class="next-test fa fa-angle-right" href="#sw_testimonial01" role="button"
                                           data-slide="next"><span></span></a>
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
                                                                         class="attachment-thumbnail size-thumbnail wp-post-image"
                                                                         alt=""/>
                                                                </a>
                                                            </div>

                                                            <div class="client-say-info">
                                                                <div class="client-comment">
                                                                        ${com}
                                                                </div>

                                                                <div class="name-client">
                                                                    <h2><a href="#" title="">${comment.key.userName}</a>
                                                                    </h2>
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
                                                                         class="attachment-thumbnail size-thumbnail wp-post-image"
                                                                         alt=""/>
                                                                </a>
                                                            </div>

                                                            <div class="client-say-info">
                                                                <div class="client-comment">
                                                                        ${com}
                                                                </div>

                                                                <div class="name-client">
                                                                    <h2><a href="#" title="">${comment.key.userName}</a>
                                                                    </h2>
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

                                                            <form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-275"
                                                                  method="post" data-id="275"
                                                                  data-name="">
                                                                <div class="mc4wp-form-fields">
                                                                    <div class="newsletter-content">
                                                                        <input type="email" class="newsletter-email"
                                                                               name="EMAIL"
                                                                               placeholder="你的邮件"
                                                                               required=""/>
                                                                        <input class="newsletter-submit" type="submit"
                                                                               value="订阅"/>
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
                                                                <img src="${pageContext.request.contextPath}/images/icons/logo-footer.png"
                                                                     alt="logo"/>
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
                                                                    <li><a href="mailto:contact@etrostore.com">支持@某商店.com</a>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                            <div class="store">
                                                                <a href="#">
                                                                    <img src="${pageContext.request.contextPath}/images/1903/app-store.png"
                                                                         alt="store"
                                                                         title="store"/>
                                                                </a>

                                                                <a href="#">
                                                                    <img src="${pageContext.request.contextPath}/images/1903/google-store.png"
                                                                         alt="store"
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
                                                        <%--web-inf下jsp无法跳转到jsp，所以404--%>
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
                                                            <img src="${pageContext.request.contextPath}/images/1903/map.jpg"
                                                                 alt="map" title="map"/>
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
                                                <a class="item-link" href="javascript:void(0)">
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
                                                <a class="item-link" href="javascript:void(0)">
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
                                            <img src="${pageContext.request.contextPath}/images/1903/paypal.png"
                                                 alt="payment" title="payment"/>
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
</div>


<!-- DIALOGS -->
<div class="modal fade" id="search_form" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog block-popup-search-form">
        <form role="search" method="get" class="form-search searchform" action="">
            <input type="text" value="" name="s" class="search-query" placeholder="Enter your keyword..."/>

            <button type="submit" class="fa fa-search button-search-pro form-button"></button>

            <a href="javascript:void(0)" title="Close" class="close close-search" data-dismiss="modal">X</a>
        </form>
    </div>
</div>
<a id="etrostore-totop" href="#"></a>
<div id="subscribe_popup" class="subscribe-popup"
     style="background: url(${pageContext.request.contextPath}/images/icons/bg_newsletter.jpg)">
    <div class="subscribe-popup-container">
        <h2>Join our newsletter</h2>
        <div class="description">Subscribe now to get 40% of on any product!</div>
        <div class="subscribe-form">
            <form id="mc4wp-form-2" class="mc4wp-form mc4wp-form-275" method="post" data-id="275" data-name="">
                <div class="mc4wp-form-fields">
                    <div class="newsletter-content">
                        <input type="email" class="newsletter-email" name="EMAIL" placeholder="Your email" required=""/>
                        <input class="newsletter-submit" type="submit" value="Subscribe"/>
                    </div>
                </div>
                <div class="mc4wp-response"></div>
            </form>
        </div>

        <div class="subscribe-checkbox">
            <label for="popup_check">
                <input id="popup_check" name="popup_check" type="checkbox"/>
                <span>Don't show this popup again!</span>
            </label>
        </div>

        <div class="subscribe-social">
            <div class="subscribe-social-inner">
                <a href="#" class="social-fb">
                    <span class="fa fa-facebook"></span>
                </a>

                <a href="#" class="social-tw">
                    <span class="fa fa-twitter"></span>
                </a>

                <a href="#" class="social-gplus">
                    <span class="fa fa-google-plus"></span>
                </a>

                <a href="#" class="social-pin">
                    <span class="fa fa-instagram"></span>
                </a>

                <a href="#" class="social-linkedin">
                    <span class="fa fa-pinterest-p"></span>
                </a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery-migrate/1.4.1/jquery-migrate.min.js"></script>
<script type="text/javascript" src="https://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/js.cookie.min.js"></script>

<!-- OPEN LIBS JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/owl-carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/slick-1.6.0/slick.min.js"></script>

<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sw_core/isotope.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sw_core/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sw_woocommerce/category-ajax.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/sw_woocommerce/jquery.countdown.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/js_composer/js_composer_front.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/megamenu.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.min.js"></script>


<script>
    <%--标签页切换--%>
    var changeTag = function (returnData) {
        var allDatas = returnData.split("\n");

        var arrayObj = new Array();


        for (var i = 0; i < allDatas.length; i++) {
            var myList = new Object();
            myList.name = allDatas[i].split("\t")[0];
            myList.price = allDatas[i].split("\t")[1];
            myList.imageUrl = allDatas[i].split("\t")[2];
            arrayObj.push(myList);
        }


        var changeContent = "";

        for (var i = 0; i < arrayObj.length; i++) {
            changeContent = changeContent +
                "<div class='item product' style='height: 500px; float:left; margin-right: 30px; margin-left: 10px'><div class='item-wrap'><div class='item-detail'>" +
                "<div class='item-content'><div class='reviews-content'><div class='star'></div><div class='item-number-rating'>0个评价</div>" +
                "</div><h4><a href='${pageContext.request.contextPath}/QueryGoodAction?goodName=" + arrayObj[i].name + "' title='voluptate ipsum'>" + arrayObj[i].name + "</a></h4><div class='item-price'><span>" +
                "<span class='woocommerce-Price-amount amount'><span class='woocommerce-Price-currencySymbol'>￥</span>" + arrayObj[i].price + "</span>" +
                "</span></div></div><div class='item-img products-thumb'><a href='${pageContext.request.contextPath}/QueryGoodAction?goodName=" + arrayObj[i].name + "'><img width='200px' height='100px'" + "src='${pageContext.request.contextPath}/" + arrayObj[i].imageUrl +
                "' class='attachment-shop_catalog size-shop_catalog wp-post-image'" + "sizes='(max-width: 100px) 100vw, 100px'/></div></a></div></div></div></div>";
        }
        $("#ajaxR").html(changeContent);
    }


    $(function () {
        $("#bclick_tv").click(function () {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/RefreshTag",
                data: "type=电视",
                success: function (returnData) {
                    // 名字  价钱  图片
                    // 名字  价钱  图片
                    changeTag(returnData);

                }
            });
        });


        $("#bclick_water").click(function () {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/RefreshTag",
                data: "type=家用电器",
                success: function (returnData) {
                    // 名字  价钱  图片
                    // 名字  价钱  图片
                    changeTag(returnData);

                }
            });
        });

        $("#bclick_computer").click(function () {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/RefreshTag",
                data: "type=电脑",
                success: function (returnData) {
                    // 名字  价钱  图片
                    // 名字  价钱  图片
                    changeTag(returnData);
                }
            });
        });


        $("#bclick_pad").click(function () {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/RefreshTag",
                data: "type=平板电脑",
                success: function (returnData) {
                    // 名字  价钱  图片
                    // 名字  价钱  图片
                    changeTag(returnData);
                }
            });
        });


        $("#bclick_ear").click(function () {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/RefreshTag",
                data: "type=耳机",
                success: function (returnData) {
                    // 名字  价钱  图片
                    // 名字  价钱  图片
                    changeTag(returnData);
                }
            });
        });
    });
</script>

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

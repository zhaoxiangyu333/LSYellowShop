<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2018/6/15
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>购物车</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/woocommerce/woocommerce-layout.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/woocommerce/woocommerce-smallscreen.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/yith-woocommerce-wishlist/style.css"/>


    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app-orange.css" id="theme_color"/>
    <link rel="stylesheet" href="" id="rtl"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app-responsive.css"/>
</head>
<body class="page woocommerce-cart woocommerce-page">

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
            <div id="contents" role="main" class="main-page col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="page type-page status-publish hentry">
                    <div class="entry-content">
                        <div class="entry-summary">
                            <div class="woocommerce">
                                <form action="" method="post">
                                    <table class="shop_table shop_table_responsive cart" cellspacing="0"
                                           id="order_table_red">
                                        <thead>
                                        <tr>
                                            <th class="product-remove">&nbsp;</th>
                                            <th class="product-name">&nbsp;</th>
                                            <th class="product-name">产品</th>
                                            <th class="product-price">价格</th>
                                            <th class="product-quantity">个数</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <%--每个商品--%>
                                        <c:forEach var="userordergoods" items="${orderList}">
                                            <tr class="cart_item" id="oneOrderGoods"
                                                whcName="${userordergoods.good.goodsName}">
                                                <td class="product-remove">
                                                    <a href="#" class="remove" title="Remove this item"
                                                       removeId="${userordergoods.id}"><i
                                                            class="fa fa-times" aria-hidden="true"></i></a>
                                                </td>

                                                <td class="product-thumbnail">
                                                    <a href="#">
                                                        <img width="100" height="100"
                                                             src="${pageContext.request.contextPath}/${userordergoods.good.goodsImage}"
                                                             class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                             sizes="(max-width: 120px) 100vw, 120px">
                                                    </a>
                                                </td>

                                                <td class="product-name" data-title="产品">
                                                    <a href="#">${userordergoods.good.goodsName}</a>
                                                </td>

                                                <td class="product-price" data-title="价格">
                                        		<span class="woocommerce-Price-amount amount" whc="orderItemPrice"><span
                                                        class="woocommerce-Price-currencySymbol">￥</span>${userordergoods.good.goodsPrice}</span>
                                                </td>

                                                <td class="product-quantity" data-title="个数">
                                                    <div class="quantity">
                                                        <input type="number" step="1" min="0" max="" name=""
                                                               value="${userordergoods.orderNum}" title="Qty"
                                                               class="input-text qty text"
                                                               size="4" pattern="[0-9]*" inputmode="numeric"
                                                               whc="orderItemNumber" whcId="${userordergoods.id}">
                                                    </div>
                                                </td>

                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </form>
                                <%--购物车总计--%>
                                <div class="cart-collaterals">
                                    <div class="products-wrapper">
                                        <div class="cart_totals ">
                                            <%--FIXME:此处写一个js 根据上面的table获取总价--%>
                                            <h2>购物车总计</h2>
                                            <table cellspacing="0" class="shop_table shop_table_responsive">
                                                <tbody>
                                                <tr class="order-total">
                                                    <th>总计</th>
                                                    <td data-title="总计">
                                                        <strong><span class="woocommerce-Price-amount amount"
                                                                      id="sumSpan"><span
                                                                class="woocommerce-Price-currencySymbol">￥</span>300.00</span></strong>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>

                                            <div class="wc-proceed-to-checkout">
                                                <a href="${pageContext.request.contextPath}/SkipCheckoutAction"
                                                   class="checkout-button button alt wc-forward">进行结算</a>
                                            </div>
                                        </div>
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
                                                                <li>
                                                                    <a href="mailto:contact@etrostore.com">支持@某商店.com</a>
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

<div class="modal fade" id="login_form" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog block-popup-login">
        <a href="javascript:void(0)" title="Close" class="close close-login" data-dismiss="modal">Close</a>

        <div class="tt_popup_login">
            <strong>Sign in Or Register</strong>
        </div>

        <form action="" method="post" class="login">
            <div class="block-content">
                <div class="col-reg registered-account">
                    <div class="email-input">
                        <input type="text" class="form-control input-text username" name="username" id="username"
                               placeholder="Username"/>
                    </div>

                    <div class="pass-input">
                        <input class="form-control input-text password" type="password" placeholder="Password"
                               name="password" id="password"/>
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
        </form>
        <div class="clear"></div>
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

<%--加载不够的商品,隐藏域--%>
<div class="alert alert-danger alert-dismissible" role="alert"
     style="position: fixed; top: 60px; right: -300px; width: 300px; display: none">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
    </button>
    <c:forEach var="orderNeed" items="${needList}">
        <strong>${orderNeed.good.goodsName}</strong> 库存不足
    </c:forEach>
</div>


<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/wc-quantity-increment.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/woocommerce/cart.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/js_composer/js_composer_front.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/megamenu.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.min.js"></script>

<script>

    // 页面计算购车车总额
    var updataSum = function () {
        var $inputPrices = $("span[whc=orderItemPrice]");
        var $inputNumbers = $("input[whc=orderItemNumber]");
        var sum = 0;
        for (var i = 0; i < $inputPrices.length; i++) {
            var orderSum = parseFloat($($inputPrices[i]).text().split("￥")[1]) * parseInt($($inputNumbers[i]).val());
            sum = sum + orderSum;
        }
        return sum;
    };

    var alertNeedList = function () {
        var goodName = "";
        if ($("div[role=alert]").children().length > 1) {
            $("div[role=alert]").css("display", "block");
            $("div[role=alert]").animate({"left": "-=300px"}, "slow");


            var myorder = new Array();
            var $strongs = $("div[role=alert]").children("strong");
            for (var i = 0; i < $strongs.length; i++) {
                myorder[i] = $($strongs[i]).text();
            }

            var $order_table_red_trs = $("#order_table_red tr");
            for (var i = 0; i < myorder.length; i++) {
                for (var j = 0; j < $order_table_red_trs.length; j++) {
                    if ($.trim(myorder[i]) == $.trim($($order_table_red_trs[j]).attr("whcName"))) {
                        $($order_table_red_trs[j]).css({'background-color': '#f4524d26'});
                    }
                }
            }
        }
    };


    $(function () {
        // js 更新价格
        var sum = updataSum();
        $("#sumSpan").html("<span class=\"woocommerce-Price-currencySymbol\">￥</span>" + sum);


        $("input[whc=orderItemNumber]").change(function () {
            var sum = updataSum();
            $("#sumSpan").html("<span class=\"woocommerce-Price-currencySymbol\">￥</span>" + sum);

            // 同步更新到数据库
            var $input = $(this);
            var whcId = $input.attr("whcId");
            var newNum = $input.val();
            var $tr = $input.parent().parent().parent().children('td').eq(3).children().text();
            $tr = $tr.split("￥")[1];
            var newSum = parseFloat($tr) * parseInt(newNum);

            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/UserUpdateOrderAction",
                data: "whcId=" + whcId + "&newNum=" + newNum + "&newSum=" + newSum,
                success: function (returnData) {
                }
            });

        });

        // 缺少的货物弹出提醒
        alertNeedList();

        // TODO:删除货物操作
        var $removes = $(".remove");
        for (var i = 0; i < $removes.length; i++) {
            $($removes[i]).click(function () {
                var $remove = $(this);
                var removeId = $remove.attr("removeId");
                window.location.href = "${pageContext.request.contextPath}/DeleteGoodsFromOrder?removeId="+removeId;
            });
        }


    });
</script>
<!--<![endif]-->
</body>
</html>

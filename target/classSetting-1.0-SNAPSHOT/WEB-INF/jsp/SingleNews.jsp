<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${news.name}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>新闻界面</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    ul {
        list-style: none;
    }

    header li {
        text-align: center;
    }

    a {
        text-decoration: none;
        display: block;
    }

    /* ----------- 上导航 ---------------- */
    header {
        background-image: url("/img/school2.jpg");
        background-repeat: no-repeat;
        background-size: 100% 100%;
        height: 370px;
    }

    header div {
        display: inline-block;
    }

    #headphoto {
        float: left;
        height: 50px;
        padding: 0 20px;
        margin-top: 10px;
        margin-bottom: 10px;
    }

    #login {
        float: right;
        height: 30px;
        width: 60px;
        padding: 0px;
        text-align: center;
        font-size: medium;
        margin: 12px 30px;
        background: none;
    }

    .headnav {
        float: right;
        display: flex;
        align-items: center;
    }

    nav a {
        color: white;
        display: block;
        padding: 15px 15px;
        width: 100px;
    }

    nav a:hover {
        background-color: #006030;
        transform: scale(1.1);
    }

    .headerHide {
        display: inline-block;
        text-align: center;
    }

    .headerHide ul {
        display: none;
        width: 64px;
    }

    .headerHide:hover ul { /*点击显示下拉*/
        display: block;
        padding: 5px;
        width: 110px;
        position: absolute;
        background-color: #24998d;
    }

    nav > ul > ul {
        padding: 10px 20px;
        width: 160px;
    }

    nav > ul > ul li {
        vertical-align: middle;
    }
    /*------------------第二部分--------------*/
    .secondphoto {
        background-image: url("/img/test4.JPG");
        height: 500px;
        width: 100%;
        background-size: 100% 100%;
        padding: 20px;
        background-repeat: no-repeat;
        /*filter: blur(5px);*/
    }

    .second3 {
        margin: 0 140px;
        background-size: 100%;
        padding: 10px 93px;
        height: 100%;
    }
    .tit1 {
        height: 45px;
        line-height: 43px;
    }

    .tit1 h2 {
        font-size: 24px;
        font-weight: 700;
        float: left;
        padding-right: 15px;
        text-align: center;
    }

    .tit1 h2 span {
        font-size: 12px;
    }

</style>
    <!--  icon引入  -->
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">

</head>
<body>

<header>
    <nav>
        <ul>
            <img id="headphoto"
                 src="img/logo.gif"
                 alt="软件工程logo"/>
            <input id="login" type="button" value="登录" onclick="location.href='admin.html'">
            <div class="headnav">
                <div class="headerHide">
                    <li><a href="main">主页</a></li>
                </div>
                <div class="headerHide">
                    <li><a href="zhuanyejieshao.html">专业介绍</a></li>
                    <ul>
                        <li><a href="zhuanyejianjie.html">专业简介</a></li>
                        <li><a href="fangxiangjianjie.html">方向简介</a></li>
                    </ul>
                </div>
                <div class="headerHide">
                    <li><a href="shiyanshi.html">实验室</a></li>
                    <ul style="width: 175px;">
                        <li><a style="width: 175px" href="shiyanshi1.html">923创新实验室</a></li>
                        <li><a style="width: 175px" href="shiyanshi2.html">925移动开发实验室</a></li>
                        <li><a style="width: 175px" href="shiyanshi3.html">927实验室</a></li>
                    </ul>
                </div>
                <div class="headerHide">
                    <li><a href="jiaoshiduiwu.html">教师队伍</a></li>
                    <ul>
                        <li><a href="jiaoshou.html">教授</a></li>
                        <li><a href="fujiaoshou.html">副教授</a></li>
                        <li><a href="jiangshi.html">讲师</a></li>
                    </ul>
                </div>
                <div class="headerHide">
                    <li><a href="jiuyezhinan.html">就业指南</a></li>
                    <ul>
                        <li><a href="jiuyeqianjing.html">就业前景</a></li>
                        <li><a href="qianjingfenxi.html">前景分析</a></li>
                    </ul>
                </div>
            </div>
        </ul>
    </nav>
</header>

<div class=secondphoto>  <!--最底层-->
    <div class=second3> <!--白色底层-->
        <div class="tit1"><!--标题-->
            <h2>${news.name}</h2>
            <br>
            &nbsp;&nbsp;<fmt:formatDate value="${news.showTime}" pattern="yyyy-MM-dd"/>
            <div style="text-indent: 2em;font-size: 16px;">
                <pr>
                    ${news.content}
                </pr>
            </div>
        </div>
    </div>
</div>

<div id="footer" style="background-color:beige;clear:both;text-align:center;">
    版权 © yang
</div>
</body>
</html>
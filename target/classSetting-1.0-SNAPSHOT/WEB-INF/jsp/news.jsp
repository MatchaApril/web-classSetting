<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理员界面</title>
    <style>
        table, th, td {
            padding: 10px;
            border: 1px solid blueviolet;
        }

        h1 {
            padding: 10px;
        }
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

        /*-------------------第二部分-------------------*/
        .secondphoto {
            background-image: url("/img/test4.JPG");
            height: 800px;
            width: 100%;
            background-size: 100% 100%;
            padding: 50px;

            background-repeat: no-repeat;
            /*filter: blur(5px);*/
        }

        .second3 {
            margin: 0 0px 0 100px;
            background-size: 100%;
            padding: 0px 20px;
            height: 100%;
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

        <h1>管理员界面</h1>
        <a href="/add" style="margin-left: 20px">
            <button>新增新闻</button>
        </a>
        <br>
        <%--添加的隐藏的form表单--%>
        <form action="" method="post">
            <input type="hidden" name="flag" value="">
            <input type="hidden" name="id" value="">
        </form>
        <table>
            <tr>
                <td style="text-align: center">新闻ID</td>
                <td style="text-align: center">新闻标题</td>
                <td style="text-align: center">新闻插入的时间</td>
                <td style="text-align: center">新闻显示的时间</td>
                <td style="text-align: center">操作</td>
            </tr>
            <tbody>
            <c:forEach items="${news }" var="u" varStatus="v">
            <tr>
                <td style="text-align: center">${u.id}</td>
                <td><a href="/info?flag=find&id=${u.id}">${u.name}</a></td>
                <td>${u.insertTime}</td>
                <td>${u.showTime}</td>
                <td>
                    <form action="/info" method="post">
                        <input type="hidden" name="id" value="${u.id}">
                            <%--                <a href="/info?flag=delete&id=${u.id}">--%>
                        <button name="flag" value="delete" type="submit">删除</button>
                            <%--                </a>--%>
                            <%--                <a href="/info?flag=find&id=${u.id}">--%>
                        <button name="flag" value="find" type="submit">查看</button>
                            <%--                </a>--%>
                            <%--                <a href="/info?flag=update&id=${u.id}">--%>
                        <button name="flag" type="submit" value="update">修改</button>
                            <%--                </a>--%>
                    </form>
                </td>
                </c:forEach>
            </tbody>
            </ul>
        </table>


    </div>
</div>




<div id="footer" style="background-color:beige;clear:both;text-align:center;">
    版权 © yang
</div>
</body>
</html>

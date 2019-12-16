<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/11/25
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻上传</title>

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
        h1{
            margin: 20px 20px;
        }
        form{
            margin: 0 20px;
        }

        /*-------------------第二部分-------------------*/
        .secondphoto {
            background-image: url("/img/test4.JPG");
            height: 800px;
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




        .login {
            position: absolute;   /* 绝对定位居中 */
            top: 85%;
            left: 50%;
            margin: -150px 0 0 -150px;
            width:300px;
            height:300px;
        }

        .login h1 {
            color:#555555;
            text-shadow: 0px 10px 8px #CDC673; /*设置文字阴影*/
            letter-spacing:2px;  /*设置字符间距*/
            text-align:center;
            margin-bottom:20px;
        }

        input{
            padding:10px;
            width:100%;
            margin-bottom:10px;
            background-color:white;
            border: 1px solid black;  /*设置边框线粗细以及颜色*/
            border-radius:4px;     /*设置边框的圆角角度*/
            letter-spacing:2px;
        }

        form button{
            width:100%;
            padding:10px;
            background-color:#999999;
            border:1px solid black;
            border-radius:4px;
            cursor:pointer;   /* 鼠标移到按钮上面时变成小手形状 */
        }

    </style>
</head>
<body>

<header>
    <nav>
        <ul>
            <img id="headphoto"
                 src="/img/logo.gif"
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
        <div class="login">
            <h1>新闻上传</h1>
            <form action="/addNews" method="post">
                <input name="name" required type="text" value="${news.name}" placeholder="请输入文章标题">
                <input name="editor" required type="text" value="${news.editor}" placeholder="请输入作者">
                <input name="showtime" id="show_time" required type="datetime-local" class="form-control">
                <input id="content" name="content" required value="${news.content}"  rows="10">
                <button type="submit">上传</button>
            </form>
        </div>
        <div style="display: none">
            <div>
                <span>文章ID</span>
            </div>
            <input name="id" type="text"value="${news.id}">
        </div>
    </div>
</div>


<%--<div id="footer" style="background-color:beige;clear:both;text-align:center;">--%>
<%--    版权 © yang--%>
<%--</div>--%>
</body>

<script>
    //自动给时间块填入当前时间
    let date = new Date();
    let Day = date.getDate();
    if (Day<10) Day ='0'+Day;
    console.log(Day);
    let times = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + Day + "T" + date.toLocaleTimeString('chinese', {hour12: false});
    times = times.slice(0, 16).toString();
    document.getElementById("show_time").value = times;
    console.log(times);
</script>
</html>
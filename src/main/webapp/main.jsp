<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Yang</title>
    <style>
        .wrap{
            height:170px;
            width:100%;
            margin: 12px 0;
            overflow: hidden;
            position: relative;

        }
        .wrap ul{
            position:absolute;
        }
        .wrap ul li{
            height:170px;
        }
        .wrap ol{
            position:absolute;
            right:5px;
            bottom:10px;
        }
        .wrap ol li{
            height:20px; width: 20px;
            background:#ccc;
            border:solid 1px #666;
            margin-left:5px;
            color:#000;
            float:left;
            line-height: 100px;
            text-align:center;
            cursor:pointer;}
        .wrap ol .on{
            background-color: beige;
            color:#fff;
        }
    </style>
    <script type="text/javascript">
        window.onload=function(){
            var wrap=document.getElementById('wrap'),
                pic=document.getElementById('pic').getElementsByTagName("li"),
                list=document.getElementById('list').getElementsByTagName('li'),
                index=0,
                timer=null;

            // 定义并调用自动播放函数
            timer = setInterval(autoPlay, 2000);

            // 鼠标划过整个容器时停止自动播放
            wrap.onmouseover = function () {
                clearInterval(timer);
            }

            // 鼠标离开整个容器时继续播放至下一张
            wrap.onmouseout = function () {
                timer = setInterval(autoPlay, 2000);
            }
            // 遍历所有数字导航实现划过切换至对应的图片
            for (var i = 0; i < list.length; i++) {
                list[i].onmouseover = function () {
                    clearInterval(timer);
                    index = this.innerText - 1;
                    changePic(index);
                };
            };

            function autoPlay () {
                if (++index >= pic.length) index = 0;
                changePic(index);
            }

            // 定义图片切换函数
            function changePic (curIndex) {
                for (var i = 0; i < pic.length; ++i) {
                    pic[i].style.display = "none";
                    list[i].className = "";
                }
                pic[curIndex].style.display = "block";
                list[curIndex].className = "on";
            }

        };

    </script>
</head>
<link rel="stylesheet" type="text/css" href="cs.css"/>

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
    <div class=second> <!--白色底层-->
        <div class="secondd" style="float: left">  <!--左侧栏-->
            <div class="tit1">
                <h2>
                    专业简介
                    <span>&nbsp;&nbsp;ZHUAN YE JIAN JIE</span>
                </h2>
                <a href="zhuanyejianjie.html" style="float: right">+更多</a>
            </div>
            <div class="test1">
                软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业顶岗实习），在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，同时以大学生创新实践活动、科技大赛为补充，突出工程化培养。<br>教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，其中6人具有国外留学或访学经历，此外,专业还从国内外知名软件企业、高校聘请兼职教师承担部分教学工作作为补充。专业教师主持或参加了多项国家、省、部、市及学校的纵向、横向科研和教研项目。获得省优秀教育科研成果奖一等奖、省优秀高等教育科学研究成果二等奖、省科技进步二等奖、三等奖、省高等学校优秀多媒体教学软件三等奖、市科技进步一等奖、省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利10余项，软件著作权10余项。专业教师累计主编和参编出版教材13部，发表论文70余篇，其中EI及ISTP检索论文40余篇。
            </div>
        </div>
        <div class="secondd">
            <div class="tit1">
                <h2>
                    学院风光
                    <span>&nbsp;&nbsp;XUE YUAN FENG GUANG</span>
                </h2>
            </div>
            <div class="test1">
                <div class="wrap" id="wrap">
                    <ul id="pic">
                        <li><img src="/img/school1.jpg" alt="" style="width: 100%;height: 100%"></li>
                        <li><img src="/img/chengdong.jpg" alt="" style="width: 100%;height: 100%"></li>
                        <li><img src="/img/school3.jpg" alt="" style="width: 100%;height: 100%"></li>
                        <li><img src="/img/zhiyuan.jpg" alt="" style="width: 100%;height: 100%"></li>
                        <li><img src="/img/school2.jpg" alt="" style="width: 100%;height: 100%"></li>
                    </ul>
                    <ol id="list">
                        <li class="on">1</li>
                        <li class="on">2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<div class=secondphoto>  <!--最底层-->
    <div class=second> <!--白色底层-->
        <div class="secondd" style="float: left">  <!--左侧栏-->
            <div class="tit1">
                <h2>
                    通知公告
                    <span>&nbsp;&nbsp;TONG ZHI GONG GAO</span>
                </h2>
                <%--                    <a href="#" style="float: right">+更多</a>--%>
            </div>
            <div class="list1">
                <ul>
                    <c:forEach items="${news}" var="u" varStatus="v" begin="0" end="4">
                        <li>
                                <span>
                                    <fmt:formatDate value="${u.showTime}" pattern="yyyy-MM-dd"/>
                                </span>
                            <a href="/news?flag=find&id=${u.id}">${u.name}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="secondd">
            <div class="tit1">
                <h2>
                    新闻中心
                    <span>&nbsp;&nbsp;XIN WEN ZHONG XIN</span>
                </h2>
            </div>
            <div class="list1">
                <ul>
                    <c:forEach items="${news}" var="u" varStatus="v" begin="5" end="9">
                        <li>
                                <span>
                                    <fmt:formatDate value="${u.showTime}" pattern="yyyy-MM-dd"/>
                                </span>
                                <%--                                <a href="#">信息与计算机年研究生招生专业目录和划”学术报告</a>--%>
                            <a href="/news?flag=find&id=${u.id}">${u.name}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>


<div class=secondphoto>  <!--最底层-->
    <div class=second3> <!--白色底层-->
        <div class="tit1"><!--标题-->
            <h2>
                快速链接
                <span>&nbsp;&nbsp;KUAI SU LIAN JIE</span>
            </h2>
        </div>
        <div class="lianjiekuai" id="lian1" style="background-image: url('img/链接1.JPG')">
            <div class="lianjietu">
                <br> <a href="main" style="color: midnightblue">回到<br>主页</a>
            </div>
        </div>
        <div class="lianjiekuai" id="lian2" style="background-image: url('img/链接2.JPG')">
            <div class="lianjietu">
                <br> <a href="zhuanyejianjie.html" style="color: midnightblue">专业<br>简介</a>
            </div>
        </div>
        <div class="lianjiekuai" id="lian3" style="background-image: url('img/链接3.JPG')">
            <div class="lianjietu">
                <br> <a href="teacher_lili.html" style="color: midnightblue">李莉<br>老师</a>
            </div>
        </div>
        <div class="lianjiekuai" id="lian4" style="background-image: url('img/链接4.JPG')">
            <div class="lianjietu">
                <br> <a href="fangxiangjianjie.html" style="color: midnightblue">方向<br>简介</a>
            </div>
        </div>
        <div class="lianjiekuai" id="lian5" style="background-image: url('img/链接5.png')">
            <div class="lianjietu">
                <br> <a href="teacher_wangbo.html" style="color: midnightblue">王波<br>老师</a>
            </div>
        </div>
    </div>
</div>

<div id="footer" style="background-color:beige;clear:both;text-align:center;">
    版权 © yang
</div>
</body>

</html>

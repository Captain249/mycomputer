<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="gb2312">
    <title>爬墙模拟装机</title>
    <base  target="_blank"/>
    <link href="//s.zol-img.com.cn/d/Diy/Diy_DiyZj.css?v=38813" rel="stylesheet" />
    <script src="//icon.zol-img.com.cn/growingio/vds.js"></script>
    <style>
        #wxzj{position: fixed;right: 10px;top:300px;width: 80px;text-align: center;_position:absolute;font:14px/18px 'Microsoft YaHei';color: #333;}
        #wxzj p{margin-top: 5px;text-indent: 20px;background: url(https://icon.zol-img.com.cn/zj/qr-icon2017.gif) 8px 0 no-repeat;}
        #wxzj .wxzj-close{float: right;width: 13px;height: 13px;background: #fff url(https://icon.zol-img.com.cn/zj/icons2017.gif) no-repeat;cursor:pointer;border:1px solid #CBCBCB;}
        #wxzj .wxzj-close:hover{background-position:0 -14px;border:1px solid #008DE1;}
        .pub-element{ position:fixed; bottom:10px; right:10px; _position:absolute; _bottom:auto; _top: expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-277));}
        .pub-element a{ display:block; margin:1px 0 0; width:60px; height:60px; opacity:0.6; filter:alpha(opacity=60); background-color:#3382d5;}
        .pub-element a:hover{ opacity:1; filter:alpha(opacity=100); color:#fff; text-decoration:none;}
        .pub-element .pub-scrolltop{ background:url(https://icon.zol-img.com.cn/mouse/140716/top-btn-ico.png) no-repeat; background-color:#3382d5; text-indent:-9999em; overflow:hidden;}
        .pub-element .pub-feedback{ padding:13px 10px 0 16px; width:34px; height:47px; font:14px/16px "Microsoft YaHei","\5FAE\8F6F\96C5\9ED1"; color:#fff;}
        .header-links i.icon-made{background: url('https://icon.zol-img.com.cn/channel/ico-made.png') no-repeat;margin: 4px 3px 0 0;}
        td {
            padding-left: 10px;
            height: 20px;
        }
        .bluetd{
            text-align:right;
            background: gainsboro;
            text-align: center;
        }
    </style>
    <script src="https://service.zol.com.cn/user/js/login2014/md5.js"></script>
    <script type="text/javascript" src="https://icon.zol-img.com.cn/getcook.js?2015"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        var editContent = "";
        var EditDiy = {
            "mainId" : 0,
            "EditdataUserId" : 0,
            "EditdataNikeName" : 0}
        var activeInfoObj = '';
        var detailFromInfo = '';
    </script>

</head>
<body>
<!--顶部-->
<div class="nav">
    <div class="nav-box">
        <ul class="navul" style="min-width: 800px">
            <li   id="menu_nav_index"><a target="_self" href="<%=path %>/user/myDiy">模拟攒机</a></li>
            <li id="menu_nav_myplan"><a target="_self" href="<%=path %>/user/myComputer">我的方案</a></li>
            <li id="menu_nav_ProTop"><a target="_self" href="<%=path %>/user/tuijian">推荐配置</a></li>
        </ul>
    </div>
</div>
<div align="center" >
    <div align="center">
        <br>
        <c:if test="${sessionScope.tuijian.size()==0}">配置单为空</c:if>
        <c:forEach items="${sessionScope.tuijian}" var="computer">
            <table border="1" width="500px">
                <tr><td colspan="3" class="bluetd"><c:if test="${computer.id==1}">家用学习型</c:if><c:if test="${computer.id==4}">豪华发烧型</c:if><c:if test="${computer.id==3}">商务办公型</c:if><c:if test="${computer.id==2}">经济实惠型</c:if></td></tr>
                <tr><td class="bluetd">cpu:</td><td>${computer.cpu}</td><td>￥${computer.cpuPrice}</td></tr>
                <tr><td class="bluetd">电源:</td><td>${computer.dy}</td><td>￥${computer.dyPrice}</td></tr>
                <tr><td class="bluetd">内存:</td><td>${computer.nc}</td><td>￥${computer.ncPrice}</td></tr>
                <tr><td class="bluetd">显卡:</td><td>${computer.xk}</td><td>￥${computer.xkPrice}</td></tr>
                <tr><td class="bluetd">显示器:</td><td>${computer.xsq}</td><td>￥${computer.xsqPrice}</td></tr>
                <tr><td class="bluetd">硬盘:</td><td>${computer.yp}</td><td>￥${computer.ypPrice}</td></tr>
                <tr><td class="bluetd">主板:</td><td>${computer.zb}</td><td>￥${computer.zbPrice}</td></tr>
                <tr><td class="bluetd">价格:</td><td colspan="2" style="text-align: center">￥${computer.price}</td></tr>
                <tr><td colspan="3" class="bluetd"><input type="button" value="保存至我的配置单" onclick="savemy(${computer.id})"></td></tr>
            </table>
            <br>
        </c:forEach>
    </div>
</div>
</body>
<script>
    function savemy (id) {
        $.ajax({
            type : "POST",
            url : "<%=path %>/user/savemy",
            data : {
                id : id
            },
            success:function(result){
                alert("已保存进我的配置单！");
            }
        })
    }
</script>
</html>
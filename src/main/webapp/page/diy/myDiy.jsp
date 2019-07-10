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
    <link href="//s.zol-img.com.cn/d/Diy/Diy_DiyZj.css?v=38813" rel="stylesheet"    />
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
    </style>
    <script>
        var __publicNavWidth=1200;
    </script>
    <script src="https://service.zol.com.cn/user/js/login2014/md5.js"></script>
    <script type="text/javascript" src="https://icon.zol-img.com.cn/getcook.js?2015"></script>

    <meta http-equiv="mobile-agent" content="format=xhtml; url=http://m.zol.com.cn/zj/?j=simple&via=index"><meta http-equiv="mobile-agent" content="format=html5; url=http://m.zol.com.cn/zj/?via=index"><script type="text/javascript">
    if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){
        if(window.location.href.indexOf("?via=")<0){
            try{
                if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){
                    window.location.href="http://m.zol.com.cn/zj/";
                }else if(/iPad/i.test(navigator.userAgent)){
                }else{
                    window.location.href="http://m.zol.com.cn/zj/?j=simple&via=index"
                }
            }catch(e){}
        }
    }
</script>
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
<input type="text" id="nowZJ" hidden="hidden">
<!--顶部-->
<div class="nav">
    <div class="nav-box">
        <ul class="navul" style="min-width: 800px">
            <li   id="menu_nav_index"><a class="active">模拟攒机</a></li>
            <li id="menu_nav_myplan"><a target="_self" href="<%=path %>/user/myComputer">我的方案</a></li>
            <li id="menu_nav_ProTop"><a target="_self" href="<%=path %>/user/tuijian">推荐配置</a></li>
        </ul>
    </div>
</div>


<div class="parts wrapper">
    <div class="parts-head"><h3>请选择配件</h3> </div>
    <ul class="parts-list clearfix">
        <li id="topSubSel_28" rel="28" relnum="2"><span>CPU</span>
        </li>
        <li id="topSubSel_5" rel="5" class="cur" relnum="1"><span>主板</span></li>
        <li id="topSubSel_3" rel="3" relnum="8"><span>内存</span></li>
        <li id="topSubSel_2" rel="2" relnum="4"><span>硬盘</span></li>
        <li id="topSubSel_6" rel="6" relnum="4"><span>显卡</span></li>
        <li id="topSubSel_35" rel="35" relnum="1"><span>电源</span></li>
        <li id="topSubSel_84" rel="84" relnum="4"><span>显示器</span></li>
    </ul>

</div>
<div class="wrapper clearfix">
    <div class="zj-parts" style="height: 800px"> <!-- zj-parts have -->
        <div class="zj-parts-head">装机配置单</div>
        <ul>
            <li id="leftSubSel_28" rel="28">
                <h3>CPU</h3>
                <span class="pic"></span>
                <c:if test="${sessionScope.mycpu==null}"><div class="zj-parts-con" name="mycpu">请选择商品</div></c:if>
                <c:if test="${sessionScope.mycpu!=null}"><div class="zj-parts-con"><c:out value="${sessionScope.mycpu.name}" /></div></c:if>
                <span class="delete"></span>
            </li>
            <li id="leftSubSel_5" rel="5">
                <h3>主板</h3>
                <span class="pic"></span>
                <c:if test="${sessionScope.myzb==null}"><div class="zj-parts-con" name="myzb">请选择商品</div></c:if>
                <c:if test="${sessionScope.myzb!=null}"><div class="zj-parts-con"><c:out value="${sessionScope.myzb.name}" /></div></c:if>
                <span class="delete"></span>
            </li>
            <li id="leftSubSel_3" rel="3">
                <h3>内存</h3>
                <span class="pic"></span>
                <c:if test="${sessionScope.mync==null}"><div class="zj-parts-con" name="mync">请选择商品</div></c:if>
                <c:if test="${sessionScope.mync!=null}"><div class="zj-parts-con"><c:out value="${sessionScope.mync.name}" /></div></c:if>
                <span class="delete"></span>
            </li>
            <li id="leftSubSel_2" rel="2">
                <h3>硬盘</h3>
                <span class="pic"></span>
                <c:if test="${sessionScope.myyp==null}"><div class="zj-parts-con" name="myyp">请选择商品</div></c:if>
                <c:if test="${sessionScope.myyp!=null}"><div class="zj-parts-con"><c:out value="${sessionScope.myyp.name}" /></div></c:if>
                <span class="delete"></span>
            </li>
            <li id="leftSubSel_6" rel="6">
                <h3>显卡</h3>
                <span class="pic"></span>
                <c:if test="${sessionScope.myxk==null}"><div class="zj-parts-con" name="myxk">请选择商品</div></c:if>
                <c:if test="${sessionScope.myxk!=null}"><div class="zj-parts-con"><c:out value="${sessionScope.myxk.name}" /></div></c:if>
                <span class="delete"></span>
            </li>
            <li id="leftSubSel_35"  rel="35">
                <h3>电源</h3>
                <span class="pic"></span>
                <c:if test="${sessionScope.mydy==null}"><div class="zj-parts-con" name="mydy">请选择商品</div></c:if>
                <c:if test="${sessionScope.mydy!=null}"><div class="zj-parts-con"><c:out value="${sessionScope.mydy.name}" /></div></c:if>
                <span class="delete"></span>
            </li>
            <li id="leftSubSel_84" rel="84">
                <h3>显示器</h3>
                <span class="pic"></span>
                <c:if test="${sessionScope.myxsq==null}"><div class="zj-parts-con" name="myxsq">请选择商品</div></c:if>
                <c:if test="${sessionScope.myxsq!=null}"><div class="zj-parts-con"><c:out value="${sessionScope.myxsq.name}" /></div></c:if>
                <span class="delete"></span>
            </li>
            <li class="total">
                <span>合计 <em>&yen;${sessionScope.mycpu.price+sessionScope.myzb.price+sessionScope.mydy.price+sessionScope.mync.price+sessionScope.myxk.price+sessionScope.myxsq.price+sessionScope.myyp.price}</em></span>
            </li>
        </ul>
        <div class="btn-box">
            <a href="javascript:savecomputer();" target="_self" class="publish" style="color: #1E9FFF">保存配置单</a><a href="javascript:clearcomputer();" target="_self" class="empty">清空</a>
        </div>
        <div class="zj-parts-head" style="height: 100px"></div>
    </div>
    <div class="zj-lists" id="ifm">

    </div>
</div>

<div id="v3CompareBox" class="v3-compare-box" style="display:none;">
    <div class="v3-compare-box-header">
        <span id="v3CompareClose" class="v3-compare-box-close">关闭</span>
        <h4 class="v3-compare-box-title">[<span id="v3CompareNum">1</span>/4] 对比框</h4>
    </div>
    <ul id="v3CompareItems" class="v3-compare-box-list">

    </ul>
    <div class="v3-compare-box-buttons" id="compare-box">
        <form id="v3CompareButtons" method="post" action="" target="_blank">
            <a type="button" hidefocus="true" class="v3-compare-box-button" id="v3CompareParamBtn">对比</a>
        </form>
        <em id="v3CompareDelAll" class="v3-compare-box-clear">清空对比栏</em>
    </div>
</div>
<!--对比框 end-->
<div class="mc"></div>
<!--预览 start-->
<div class="sconfig-preview">
    <h3 class="title">配置单预览<span class="close"></span></h3>
    <p class="tit"></p>
    <div class="sp-nav">
        <span rel="config-list" class="nav-curr">配置清单</span>
    </div>
    <div class="parameters" id="previewShow">
    </div><!--parameters end-->
    <div class="btn-box">
        <span class="subm">发表配置单</span>
        <span class="edite">返回修改</span>
    </div>
</div>
<!--foot start-->
<!--foot end-->


<script>numlimit=3;</script>
<script src="//s.zol-img.com.cn/d/Diy/Diy_DiyZj.js?v=38813"></script>
<script type="text/javascript" src="https://icon.zol-img.com.cn/public/js/global-sitenav-footer.js?20141106" ></script>

<script type="text/javascript" src="https://icon.zol-img.com.cn/cms/js/switch.js"></script>
<script language="JavaScript" src="https://icon.zol-img.com.cn/cms/js/backtop.js?201503"></script>
<script type="text/javascript">
    var liList = document.getElementsByTagName("li");
    var content ="";
    for(i=0;i<liList.length;i++){
        liList[i].onclick = function(){
            if(this.id=="leftSubSel_28"||this.id=="topSubSel_28"){
                $("#nowZJ").val("cpu");
            }else if(this.id=="leftSubSel_5"||this.id=="topSubSel_5"){
                $("#nowZJ").val("zb");
            }else if(this.id=="leftSubSel_3"||this.id=="topSubSel_3"){
                $("#nowZJ").val("nc");
            }else if(this.id=="leftSubSel_2"||this.id=="topSubSel_2"){
                $("#nowZJ").val("yp");
            }else if(this.id=="leftSubSel_6"||this.id=="topSubSel_6"){
                $("#nowZJ").val("xk");
            }else if(this.id=="leftSubSel_35"||this.id=="topSubSel_35"){
                $("#nowZJ").val("dy");
            }else if(this.id=="leftSubSel_84"||this.id=="topSubSel_84"){
                $("#nowZJ").val("xsq");
            }
            var nowzj=document.getElementById("nowZJ").value;
            $("#ifmval").remove();
            $("#ifm").append("<iframe id=\"ifmval\" name=\"ifmname\" src=\"<%=path %>/"+nowzj+"/go_"+nowzj+"_diy\" frameborder=\"0\" scrolling=\"no\" width=\"680\" height=\"800\"></iframe>");
        }
    }
    function savecomputer(){
        $.ajax({
            type : "GET",
            url : "<%=path %>/user/savecomputer",
            success:function(result){
                alert(result.msg);
                location.reload();
            }
        })
    }
    function clearcomputer(){
        $.ajax({
            type : "GET",
            url : "<%=path %>/user/clearcomputer",
            success:function(result){
                location.reload();
            }
        })
    }
</script>
<script>
    $().ready(function () {

    });
</script>
</body>
</html>
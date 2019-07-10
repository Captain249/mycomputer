<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en"><head>
    <meta charset="gbk">
    <title>Document</title>
    <link href="//s.zol-img.com.cn/d/Diy/Diy_ProList.css?v=38835" rel="stylesheet">
    <script type="text/javascript" async="" src="http://assets.growingio.com/vds.js"></script><script src="//icon.zol-img.com.cn/growingio/vds.js"></script>
    <style>

    </style>
    <base target="_blank">
    <style>
        .buy-zj{float:left;margin:8px 0 0px 33px;}
        .buy-ico{color: #f80034;font-size: 16px;height: 18px;line-height: 18px;display: inline-block;margin: 10px 0 5px;}
        .buy-ico img{display:inline-block;vertical-align: top;}
    </style>
    <script src="//zdw.w8.com.cn/p.ht?h=&amp;t=1526644&amp;c=78eI5v7yj7QuODA5MTQ1LjE1MTMzMDMwMjY=" type="text/javascript"></script><img border="0" width="1" height="1" src="//pv.zol.com.cn/images/pvhit0001.gif?t=1526644613469701&amp;subcat=0&amp;vuserid=&amp;http://zj.zol.com.cn/&amp;ip_ck=78eI5v7yj7QuODA5MTQ1LjE1MTMzMDMwMjY=&amp;lv=1526644576&amp;vn=6&amp;sr=1440x900&amp;sc=24&amp;fl=Not enabled&amp;ti=Document&amp;se=5889e0b3e04c8d0daf5938e698cee3d8&amp;uv=36.22.61.46&amp;cv=&amp;zmac=0&amp;manuid=0&amp;ldt=485&amp;mzcv=&amp;mztext=&amp;third_ip_ck=4cSE7vr/j7QuNjM1OTA4LjE1MjY2NDQ2MTI=&amp;posid=" style="display: none;"></head>
<body>
<div class="conditions">
    <div class="list-title">
        <div id="J_CityArea" class="list-title-inner clearfix" rel-sid="28">
            <h3>请选择<font>硬盘</font></h3>
        </div>
    </div><!--list-title end-->
    <div id="J_ParamFilter" class="param-filter" style="height: 39px;">
        <form action="<%=path %>/yp/go_yp_diy3" method="post" target="ifmname">
            型号:<input type="text" name="name" style="width: 80px" value="${sessionScope.likeyp.name}"/>
            容量:<input type="text" name="rl" style="width: 80px" value="${sessionScope.likeyp.rl}"/>
            接口类型:<input type="text" name="jklx" style="width: 80px" value="${sessionScope.likeyp.jklx}"/>
            转速:<input type="text" name="zs" style="width: 80px" value="${sessionScope.likeyp.zs}"/>
            缓存:<input type="text" name="hc" style="width: 80px" value="${sessionScope.likeyp.hc}"/>
            尺寸:<input type="text" name="cc" style="width: 80px" value="${sessionScope.likeyp.cc}"/>
            <input type="submit" value="查询" />
        </form>
    </div>
    <div class="sort-box clearfix">
        <div class="small-page">
            <c:if test="${sessionScope.currentPage==1}"><input type="button" value="上一页" name="last" disabled="disabled"/></c:if>
            <c:if test="${sessionScope.currentPage!=1}"><input type="button" value="上一页" name="last" onclick="lastPage()"/></c:if>
            <input type="text" name="currentPage" value="${sessionScope.currentPage}" style="width: 20px" readonly="readonly"/>
            <c:if test="${sessionScope.allPage!=sessionScope.currentPage}"><input type="button" name="next" value="下一页" onclick="nextPage()"/></c:if>
            <c:if test="${sessionScope.allPage==sessionScope.currentPage}"><input type="button" name="next" value="下一页" disabled="disabled"/></c:if>
        </div>
        <span class="total totalNum">共 <b>${sessionScope.total}</b> 款硬盘*</span>
    </div>
    <div class="loading" style="display: none;">内容加载中，请稍候…</div>

    <div class="list-box" style="display: block;">
        <div class="page-box">
            <%--迭代对象--%>
            <c:forEach items="${sessionScope.allyp}" var="yp">
                <div class="pitem clearfix s_1177026 p_1177026" reldate="1177026" relmanu="125">
                    <div class="pic">
                            <img src="https://2f.zol-img.com.cn/product/109_120x90/197/cegporVtoCK.jpg">
                    </div>
                    <div class="price-box">
                        <span class="price">￥${yp.price}</span>
                        <a href="javascript:addyp(${yp.id});" target="_self" class="add"><i></i>加入配置单</a>
                    </div>
                    <div class="pro-intro">
                        <div class="paramet">
                            <span>型号：<em> ${yp.name} </em></span>
                            <span>容量：<em> ${yp.rl} </em></span>
                            <span>接口类型：<em> ${yp.jklx} </em></span>
                            <span>转速：<em> ${yp.zs} </em></span>
                            <span>缓存：<em> ${yp.hc} </em></span>
                            <span>尺寸：<em> ${yp.cc} </em></span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <!--list-box end-->
</div>
<script src="//s.zol-img.com.cn/d/Diy/Diy_DiyZjList.js?v=38835"></script>

<script type="text/javascript" src="https://icon.zol-img.com.cn/public/js/web_foot.js"></script><script async="" src="//js.zol.com.cn/pvn/z.pv"></script><script type="text/javascript" id="pv_d" src="//zdw.w8.com.cn/p.ht?h=&amp;t=1526644&amp;c=78eI5v7yj7QuODA5MTQ1LjE1MTMzMDMwMjY="></script><img style="display:none" id="dot_pvm" border="0" width="1" height="1" src="//pvm.zol.com.cn/images/pvhit0001.gif?t=1526644613469701&amp;subcat=0&amp;vuserid=&amp;http://zj.zol.com.cn/&amp;ip_ck=78eI5v7yj7QuODA5MTQ1LjE1MTMzMDMwMjY=&amp;lv=1526644576&amp;vn=6&amp;sr=1440x900&amp;sc=24&amp;fl=Not enabled&amp;ti=Document&amp;se=5889e0b3e04c8d0daf5938e698cee3d8&amp;uv=36.22.61.46&amp;cv=&amp;zmac=0&amp;manuid=0&amp;ldt=485&amp;mzcv=&amp;mztext=&amp;third_ip_ck=4cSE7vr/j7QuNjM1OTA4LjE1MjY2NDQ2MTI=&amp;posid="><img style="display:none" border="0" width="1" height="1" src="//pv.zol.com.cn/images/pvhit0001.gif?t=1526644613209278&amp;subcat=0&amp;vuserid=&amp;http://zj.zol.com.cn/&amp;ip_ck=78eI5v7yj7QuODA5MTQ1LjE1MTMzMDMwMjY=&amp;lv=1526644576&amp;vn=6&amp;sr=1440x900&amp;sc=24&amp;fl=Not enabled&amp;ti=Document&amp;se=5889e0b3e04c8d0daf5938e698cee3d8&amp;uv=36.22.61.46&amp;cv=&amp;zmac=0&amp;manuid=0&amp;ldt=241&amp;mzcv=&amp;mztext=&amp;third_ip_ck=4cSE7vr/j7QuNjM1OTA4LjE1MjY2NDQ2MTI=&amp;posid="><script src="//stat.zol.com.cn/adrs/cg_gmine.js" type="text/javascript"></script><img id="gmine" width="1px" height="0px" style="display:none;"><div style="width:1px;height:0px;overflow:hidden;"> <script src=" http://hm.baidu.com/h.js?ae5edc2bc4fc71370807f6187f0a2dd0" type="text/javascript"></script></div><script type="text/javascript" id="adstat_js" src="//stat.zol.com.cn/adrs/ol.js"></script><script type="text/javascript" src="//stat.zol.com.cn/adrs/bms_tag.php?0.36930948291880505"></script><div style="width:1px;height:0px;overflow:hidden;"><iframe src="//stat.zol.com.cn/cgrs.html?adrs=aHR0cDovL3YuYWRtYXN0ZXIuY29tLmNuL2kvYTEwNjc5OSxiMjUwNjY4NixjMzY3LGkwLG0yMDIsOGEyLDhiMyxoe1h9Ly9tb2JpbGUuem9sLmNvbS5jbi82ODkvNjg5MTY2Mi5odG1se1h9em9se1h9MHtYfXR0&amp;mr=436426397" marginheight="0" marginwidth="1" frameborder="0" scrolling="no" width="1" height="0"></iframe><img width="0" height="0" border="0" src="//ca.zol.com.cn/pv?s=zol&amp;on=zol&amp;id=128440&amp;tmp=1962472034"><iframe src="//stat.zol.com.cn/cgrs.html?adrs=aHR0cDovL3YuYWRtYXN0ZXIuY29tLmNuL2kvYTEwNTg3NyxiMjQzNTE5NCxjMzY3LGkwLG0yMDIsOGExLDhiMixoe1h9Ly80Zy56b2wuY29tLmNue1h9em9se1h9MHtYfXR0&amp;mr=386572503" marginheight="0" marginwidth="1" frameborder="0" scrolling="no" width="1" height="0"></iframe><img width="0" height="0" border="0" src="//ca.zol.com.cn/pv?s=zol&amp;on=zol&amp;id=128702&amp;tmp=1787524489"><iframe src="http://trk.mct01.com/p?ev=type:ai&amp;acid=andc&amp;on=cpid:4000137;cid:3000838&amp;at=aid:3040727;mdm:display;pubid:19220" marginheight="0" marginwidth="1" frameborder="0" scrolling="no" width="1" height="0"></iframe><img width="0" height="0" border="0" src="//ca.zol.com.cn/pv?s=zol&amp;on=zol&amp;id=127986&amp;tmp=491728373"><iframe src="//stat.zol.com.cn/cgrs.html?adrs=aHR0cDovL3YuYWRtYXN0ZXIuY29tLmNuL2kvYTEwNTg3NyxiMjQzNTE4OSxjMzY3LGkwLG0yMDIsOGExLDhiMixoe1h9Ly9tb2JpbGUuem9sLmNvbS5jbi82ODkvNjg5MTMzNi5odG1se1h9em9se1h9MHtYfXR0&amp;mr=140016655" marginheight="0" marginwidth="1" frameborder="0" scrolling="no" width="1" height="0"></iframe><img width="0" height="0" border="0" src="//ca.zol.com.cn/pv?s=zol&amp;on=zol&amp;id=128700&amp;tmp=339210759"><iframe src="//stat.zol.com.cn/cgrs.html?adrs=aHR0cDovL3YuYWRtYXN0ZXIuY29tLmNuL2kvYTEwNTg3NyxiMjQzNTE5MCxjMzY3LGkwLG0yMDIsOGExLDhiMixoe1h9Ly9tb2JpbGUuem9sLmNvbS5jbi97WH16b2x7WH0we1h9dHQ=&amp;mr=712881297" marginheight="0" marginwidth="1" frameborder="0" scrolling="no" width="1" height="0"></iframe><img width="0" height="0" border="0" src="//ca.zol.com.cn/pv?s=zol&amp;on=zol&amp;id=128704&amp;tmp=749091692"><iframe src="//stat.zol.com.cn/cgrs.html?adrs=aHR0cDovL2d4YnIuY256ei5jb20vdF9pbWcucGhwP3NpPWVfMzQ5Njl7WH0vL21vYmlsZS56b2wuY29tLmNuL3tYfXpvbHtYfTA=&amp;mr=723272454" marginheight="0" marginwidth="1" frameborder="0" scrolling="no" width="1" height="0"></iframe><img width="0" height="0" border="0" src="//ca.zol.com.cn/pv?s=zol&amp;on=zol&amp;id=128758&amp;tmp=2106535779"><iframe src="http://ad.doubleclick.net/ddm/trackimp/N5840.138759.1630371114421/B20789008.217623187;dc_trk_aid=416396611;dc_trk_cid=99535975;ord=1526646172?" marginheight="0" marginwidth="1" frameborder="0" scrolling="no" width="1" height="0"></iframe><img width="0" height="0" border="0" src="//ca.zol.com.cn/pv?s=zol&amp;on=zol&amp;id=128127&amp;tmp=794294886"><iframe src="//stat.zol.com.cn/cgrs.html?adrs=aHR0cDovL3YuYWRtYXN0ZXIuY29tLmNuL2kvYTEwNTg3NyxiMjQzNTE5MyxjMzY3LGkwLG0yMDIsOGExLDhiMixoe1h9Ly80Zy56b2wuY29tLmNuLzY4OC82ODg5MzM4Lmh0bWx7WH16b2x7WH0we1h9dHQ=&amp;mr=1081982456" marginheight="0" marginwidth="1" frameborder="0" scrolling="no" width="1" height="0"></iframe><img width="0" height="0" border="0" src="//ca.zol.com.cn/pv?s=zol&amp;on=zol&amp;id=128703&amp;tmp=1945708769"></div>
<script>
    /* 统计 */
    function zol_niux_tongji(event,url) {
        var ip_ck = '';
        if(typeof(readck) != "undefined"){
            ip_ck = readck("ip_ck");
        }else if(typeof(get_cookie) != "undefined"){
            ip_ck = get_cookie("ip_ck");
        }
        var pv_stat_src = "http://pvtest.zol.com.cn/images/pvevents.gif?t=" + new Date().getTime() + "&event=" + event + "&ip_ck=" + ip_ck + "&url=" + url;
        var imgObj = new Image();
        imgObj.src = pv_stat_src;
    }
    $('.buy-zj-all').click(function() {
        zol_niux_tongji('pc_cuanji_shuang','http://zj.zol.com.cn/');
    });

    $('.buy-ico-tmall').click(function() {
        zol_niux_tongji('pc_cuanji_shuang_tmall','http://zj.zol.com.cn/');
    });
    $('.buy-ico-jd').click(function() {
        zol_niux_tongji('pc_cuanji_shuang_jd','http://zj.zol.com.cn/');
    });
    function nextPage() {
        window.location.href="<%=path %>/yp/go_yp_diy2?currentPage=${sessionScope.currentPage+1}"
    }
    function lastPage() {
        window.location.href="<%=path %>/yp/go_yp_diy2?currentPage=${sessionScope.currentPage-1}"
    }
    function addyp(id){
        $.ajax({
            type : "GET",  //提交方式
            url : "<%=path %>/yp/addyp",//路径
            data:{
                "id":id
            },
            success:function(result){
                parent.location.reload();
            }
        });
    }
</script>

</body></html>
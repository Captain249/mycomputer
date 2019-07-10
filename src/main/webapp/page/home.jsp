<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%--<base href="<%=basePath%>">--%>

    <title>爬墙组机后台管理系统</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link rel="stylesheet" href="<%=path %>/js/jquery-easyui-1.5.3/themes/default/easyui.css">
    <link rel="stylesheet" href="<%=path %>/js/jquery-easyui-1.5.3/themes/icon.css">
    <script type="text/javascript" src="<%=path %>/js/jquery-easyui-1.5.3/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
    <script src="<%=path %>/js/artTemplate-3.0/template.js" type="text/javascript"></script>
    <script type="text/javascript">
        $().ready(function () {

        });
    </script>
</head>
<body class="easyui-layout">
//上
<div region="north" style="height: 78px;background-color: #ffff">
    <table width="100%">
        <tr>
            <td width="50%">
            </td>
            <%--<td valign="bottom"--%>
                <%--style="font-size: 20px;color:#8B8B8B; font-family: '楷体';"--%>
                <%--align="right" width="50%">&nbsp;&nbsp;<a>重新登录</a>--%>
            <%--</td>--%>
        </tr>
    </table>
</div>
//左
<div region="west" style="width: 200px;height:500px;" title="导航菜单" split="true">
    <div class="easyui-accordion">
        <div title="组件管理"
             data-options="selected:true,iconCls:''"
             style="padding: 10px;">
            <a
                    href="javascript:openTab(' CPU管理','cpu/go_center_cpu','')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:''"
                    style="width: 150px;">CPU管理</a>
            <a
                    href="javascript:openTab(' 主板管理','zb/go_center_zb','')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:''"
                    style="width: 150px;">主板管理</a>
            <a
                    href="javascript:openTab(' 内存管理','nc/go_center_nc','')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:''"
                    style="width: 150px;">内存管理</a>
            <a
                    href="javascript:openTab(' 硬盘管理','yp/go_center_yp','')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:''"
                    style="width: 150px;">硬盘管理</a>
            <a
                    href="javascript:openTab(' 显卡管理','xk/go_center_xk','')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:''"
                    style="width: 150px;">显卡管理</a>
            <a
                    href="javascript:openTab(' 电源管理','dy/go_center_dy','')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:''"
                    style="width: 150px;">电源管理</a>
            <a
                    href="javascript:openTab(' 显示器管理','xsq/go_center_xsq','')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:''"
                    style="width: 150px;">显示器管理</a>
        </div>
        <div title="用户管理" data-options="iconCls:''"
             style="padding:10px">
            <a
                    href="javascript:openTab('用户管理','pictureManage.jsp?type=1&grade=1','')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:''"
                    style="width: 150px;"> 用户管理</a>
        </div>
        <div title="系统管理" data-options="iconCls:''"
             style="padding:10px;border:none;">
           <a href="javascript:logout()"
                            class="easyui-linkbutton"
                            data-options="plain:true,iconCls:''"
                            style="width: 150px;">
            安全退出</a>
        </div>
    </div>
</div>
//中(右)
<div region="center">
    <div class="easyui-tabs" fit="true" border="false" id="tabs">
        <div title=" CPU管理" data-options="iconCls:'',closable:true">
            <iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src="<%=path %>/cpu/go_center_cpu"></iframe>
        </div>
    </div>
</div>

</body>
<script type="text/javascript">
    var url = '';

    function logout(){
        window.location.href="<%=path %>/user/tologin";
    }

    function openTab(text, url, iconCls) {
        if ($("#tabs").tabs("exists", text)) {
            $("#tabs").tabs("close", text);
            addTab(url, text, iconCls);
            $("#tabs").tabs("select", text);
        } else {
            addTab(url, text, iconCls);
        }
    }

    function addTab(url, text, iconCls) {
        var content = "<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='${pageContext.request.contextPath}/"
            + url + "'></iframe>";
        //打开选项卡
        $("#tabs").tabs("add", {
            title: text,
            iconCls: iconCls,
            closable: true,
            content: content
        });
    }
</script>

</html>

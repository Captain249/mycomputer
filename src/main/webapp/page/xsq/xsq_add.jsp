<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <link rel="stylesheet" href="<%=path %>/js/jquery-easyui-1.5.3/themes/default/easyui.css">
    <link rel="stylesheet" href="<%=path %>/js/jquery-easyui-1.5.3/themes/icon.css">
    <script type="text/javascript" src="<%=path %>/js/jquery-easyui-1.5.3/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
</head>
<body>
<div>


    <form id="xsq_form" method="post" class="easyui-form">
        <table cellpadding="5">
            <tr>
                <td>型号:</td>
                <td><input class="easyui-textbox" type="text" name="name"></input></td>
            </tr>
            <tr>
                <td>价格:</td>
                <td><input class="easyui-textbox" type="text" name="price" validType="number"></input></td>
            </tr>
            <tr>
                <td>屏幕尺寸:</td>
                <td><input class="easyui-textbox" type="text" name="pmcc"></input></td>
            </tr>
            <tr>
                <td>产品类型:</td>
                <td><input class="easyui-textbox" type="text" name="cplx"></input></td>
            </tr>
            <tr>
                <td>视频接口:</td>
                <td><input class="easyui-textbox" type="text" name="spjk"></input></td>
            </tr>
            <tr>
                <td>面板类型:</td>
                <td><input class="easyui-textbox" type="text" name="mblx"></input></td>
            </tr>
            <tr>
                <td>最佳分辨率:</td>
                <td><input class="easyui-textbox" type="text" name="zjfbl"></input></td>
            </tr>
            <tr>
                <td>描述:</td>
                <td><input class="easyui-textbox" name="ms" data-options="multiline:true"
                           style="width:200px;height:60px"></input></td>
            </tr>

        </table>
    </form>

</div>
</body>
</html>

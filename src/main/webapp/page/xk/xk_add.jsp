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


    <form id="xk_form" method="post" class="easyui-form">
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
                <td>芯片厂商:</td>
                <td><input class="easyui-textbox" type="text" name="xpcs"></input></td>
            </tr>
            <tr>
                <td>显卡芯片:</td>
                <td><input class="easyui-textbox" type="text" name="xkxp"></input></td>
            </tr>
            <tr>
                <td>显存容量:</td>
                <td><input class="easyui-textbox" type="text" name="xcrl"></input></td>
            </tr>
            <tr>
                <td>显存位宽:</td>
                <td><input class="easyui-textbox" type="text" name="xcwk"></input></td>
            </tr>
            <tr>
                <td>接口:</td>
                <td><input class="easyui-textbox" type="text" name="jk"></input></td>
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

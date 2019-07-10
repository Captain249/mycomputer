<%--
  Created by IntelliJ IDEA.
  User: captain
  Date: 2018/3/13
  Time: 下午2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<form id="xk_form" method="post" class="easyui-form">
    <input type="text" name="id" id="id" hidden="hidden"/>
    <table cellpadding="5">
        <tr>
            <td>型号:</td>
            <td><input class="easyui-textbox" type="text" id="name" name="name"></input></td>
        </tr>
        <tr>
            <td>价格:</td>
            <td><input class="easyui-textbox" type="text" id="price" name="price" validType="number"></input></td>
        </tr>
        <tr>
            <td>芯片厂商:</td>
            <td><input class="easyui-textbox" type="text" id="xpcs" name="xpcs"></input></td>
        </tr>
        <tr>
            <td>显卡芯片:</td>
            <td><input class="easyui-textbox" type="text" id="xkxp" name="xkxp"></input></td>
        </tr>
        <tr>
            <td>显存容量:</td>
            <td><input class="easyui-textbox" type="text" id="xcrl" name="xcrl"></input></td>
        </tr>
        <tr>
            <td>显存位宽:</td>
            <td><input class="easyui-textbox" type="text" id="xcwk" name="xcwk"></input></td>
        </tr>
        <tr>
            <td>接口:</td>
            <td><input class="easyui-textbox" type="text" id="jk" name="jk"></input></td>
        </tr>
        <tr>
            <td>描述:</td>
            <td><input class="easyui-textbox" id="ms" name="ms" data-options="multiline:true"
                       style="width:200px;height:60px"></input></td>
        </tr>

    </table>
</form>
</body>
</html>

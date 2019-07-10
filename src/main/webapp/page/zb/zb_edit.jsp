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
<form id="zb_form" method="post" class="easyui-form">
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
            <td>主芯片组:</td>
            <td><input class="easyui-textbox" type="text" id="zxpz" name="zxpz"></input></td>
        </tr>
        <tr>
            <td>插槽:</td>
            <td><input class="easyui-textbox" type="text" id="cc" name="cc"></input></td>
        </tr>
        <tr>
            <td>板型:</td>
            <td><input class="easyui-textbox" type="text" id="bx" name="bx"></input></td>
        </tr>
        <tr>
            <td>集成芯片:</td>
            <td><input class="easyui-textbox" type="text" id="jcxp" name="jcxp"></input></td>
        </tr>
        <tr>
            <td>内存类型:</td>
            <td><input class="easyui-textbox" type="text" id="nclx" name="nclx"></input></td>
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

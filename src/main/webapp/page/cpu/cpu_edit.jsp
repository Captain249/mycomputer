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
<form id="cpu_form" method="post" class="easyui-form">
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
            <td>插槽类型:</td>
            <td><input class="easyui-textbox" type="text" id="cc" name="cc"></input></td>
        </tr>
        <tr>
            <td>CPU主频:</td>
            <td><input class="easyui-textbox" type="text" id="zp" name="zp"></input></td>
        </tr>
        <tr>
            <td>动态加速频率:</td>
            <td><input class="easyui-textbox" type="text" id="dtjspl" name="dtjspl"></input></td>
        </tr>
        <tr>
            <td>三级缓存:</td>
            <td><input class="easyui-textbox" type="text" id="sjhc" name="sjhc"></input></td>
        </tr>
        <tr>
            <td>核心数量:</td>
            <td><input class="easyui-textbox" type="text" id="hxsl" name="hxsl"></input></td>
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

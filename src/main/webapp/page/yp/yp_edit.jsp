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
<form id="yp_form" method="post" class="easyui-form">
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
            <td>容量:</td>
            <td><input class="easyui-textbox" type="text" id="rl" name="rl"></input></td>
        </tr>
        <tr>
            <td>接口类型:</td>
            <td><input class="easyui-textbox" type="text" id="jklx" name="jklx"></input></td>
        </tr>
        <tr>
            <td>转速:</td>
            <td><input class="easyui-textbox" type="text" id="zs" name="zs"></input></td>
        </tr>
        <tr>
            <td>缓存:</td>
            <td><input class="easyui-textbox" type="text" id="hc" name="hc"></input></td>
        </tr>
        <tr>
            <td>尺寸:</td>
            <td><input class="easyui-textbox" type="text" id="cc" name="cc"></input></td>
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

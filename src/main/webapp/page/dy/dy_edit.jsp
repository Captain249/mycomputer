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
<form id="dy_form" method="post" class="easyui-form">
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
            <td>额定功率:</td>
            <td><input class="easyui-textbox" type="text" id="edgl" name="edgl"></input></td>
        </tr>
        <tr>
            <td>PFC类型:</td>
            <td><input class="easyui-textbox" type="text" id="pfclx" name="pfclx"></input></td>
        </tr>
        <tr>
            <td>电源类型:</td>
            <td><input class="easyui-textbox" type="text" id="dylx" name="dylx"></input></td>
        </tr>
        <tr>
            <td>风扇描述:</td>
            <td><input class="easyui-textbox" type="text" id="fsms" name="fsms"></input></td>
        </tr>
        <tr>
            <td>其他特点:</td>
            <td><input class="easyui-textbox" type="text" id="qttd" name="qttd"></input></td>
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

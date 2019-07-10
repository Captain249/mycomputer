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
<form id="nc_form" method="post" class="easyui-form">
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
            <td>容量描述:</td>
            <td><input class="easyui-textbox" type="text" id="rlms" name="rlms"></input></td>
        </tr>
        <tr>
            <td>主频:</td>
            <td><input class="easyui-textbox" type="text" id="zp" name="zp"></input></td>
        </tr>
        <tr>
            <td>类型:</td>
            <td><input class="easyui-textbox" type="text" id="lx" name="lx"></input></td>
        </tr>
        <tr>
            <td>工作电压:</td>
            <td><input class="easyui-textbox" type="text" id="gzdy" name="gzdy"></input></td>
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

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
<form id="xsq_form" method="post" class="easyui-form">
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
            <td>屏幕尺寸:</td>
            <td><input class="easyui-textbox" type="text" id="pmcc" name="pmcc"></input></td>
        </tr>
        <tr>
            <td>产品类型:</td>
            <td><input class="easyui-textbox" type="text" id="cplx" name="cplx"></input></td>
        </tr>
        <tr>
            <td>视频接口:</td>
            <td><input class="easyui-textbox" type="text" id="spjk" name="spjk"></input></td>
        </tr>
        <tr>
            <td>面板类型:</td>
            <td><input class="easyui-textbox" type="text" id="mblx" name="mblx"></input></td>
        </tr>
        <tr>
            <td>最佳分辨率:</td>
            <td><input class="easyui-textbox" type="text" id="zjfbl" name="zjfbl"></input></td>
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

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
    <script src="<%=path %>/js/extendValidateboxRules.js"></script>
    <script src="<%=path %>/js/jquery_form.js"></script>
</head>
<body>
<table id="table">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'name',width:'15%',align:'center'">型号</th>
        <th data-options="field:'price',width: '12%', align: 'center'">价格</th>
        <th data-options="field:'edgl',  width: '12%', align: 'center'">额定功率</th>
        <th data-options="field:'pfclx', width: '12%', align: 'center'">PFC类型</th>
        <th data-options="field:'dylx',  width: '12%', align: 'center'">电源类型</th>
        <th data-options="field:'fsms', width: '12%', align: 'center'">风扇描述</th>
        <th data-options="field:'qttd', width: '12%', align: 'center'">其他特点</th>
    </tr>
    </thead>
</table>
<script>
    function format(val,row){
            return "<a href='javascript:void(0)'>详情</a>";
    }
</script>
<script>
    var allwidth = document.body.clientWidth;//网页可见区域宽
    var allheight = document.documentElement.offsetHeight;//页面高
    $('#table').datagrid({
        url: '<%=path%>/dy/list',
        nowrap: true,//设置为true，当数据长度超出列宽时将会自动截取。
        striped: true,//设置为true将交替显示行背景。
        fit: true,//如果设置为true，设置适合它的父容器的布局尺寸。
        pagination: true,//设置true将在数据表格底部显示分页工具栏。
        rownumbers: true,//设置为true将显示行数。
        //singleSelect: true,//设置为true将只允许选择一行。
        border: false,
        idField: 'id',//表明该列是一个唯一列
        //toolbar: '#tb',//数据表格顶部面板的工具栏
        toolbar: [{
            id: 'btnAdd',
            text: "添加",
            iconCls: 'icon-add',
            handler: function () {
                $('<div id="addDy"/>').dialog({
                    title: '新增电源',
                    width: 450,
                    height: 420,
                    closed: false,
                    cache: false,
                    href: '<%=path%>/page/dy/dy_add.jsp',
                    modal: true,
                    buttons: [{
                        text: '保存',
                        iconCls: 'icon-save',
                        handler: function () {
                            $('#dy_form').form({
                                url: '<%=path%>/dy/save',
                                // onSubmit: function () {
                                // },
                                success: function (data) {
                                    $('#addDy').dialog('close');
                                    $('#addDy').dialog('destroy');
                                    $('#table').datagrid('reload');
                                }
                            });
                            $('#dy_form').submit();
                        }
                    }, {
                        text: '重置',
                        iconCls: 'icon-reload',
                        handler: function () {
                            $('#dy_form').form('clear');
                        }
                    }, {
                        text: '关闭',
                        iconCls: 'icon-cancel',
                        handler: function () {
                            $('#addDy').dialog('close');
                        }
                    }],
                    onClose: function () {
                        $('#addDy').dialog('destroy');
                    },
                });
            }
        }, {
            id: 'btnEdit',
            text: "修改",
            iconCls: 'icon-edit',
            handler: function () {
                var rows = $("#table").datagrid('getSelections'); //获取表格选中行
                if (!rows || rows.length == 0) {
                    $.messager.alert("提示", "请选择要操作的行！", "info");
                    return;
                } else if (rows.length > 1) {
                    $.messager.alert("提示", "只能操作单行数据！", "info");
                    return;
                }
                $('<div id="editDy"/>').dialog({
                    title: '修改电源',
                    width: 450,
                    height: 420,
                    closed: false,
                    cache: false,
                    href: '<%=path%>/page/dy/dy_edit.jsp',
                    modal: true,
                    buttons: [{
                        text: '保存',
                        iconCls: 'icon-save',
                        handler: function () {
                            $('#dy_form').form({
                                url: '<%=path%>/dy/edit',
                                // onSubmit: function () {
                                // },
                                success: function (data) {
                                    $('#editDy').dialog('close');
                                    $('#editDy').dialog('destroy');
                                    $('#table').datagrid('reload');
                                }
                            });
                            $('#dy_form').submit();
                        }
                    }, {
                        text: '关闭',
                        iconCls: 'icon-cancel',
                        handler: function () {
                            $('#editDy').dialog('close');
                        }
                    }],
                    onClose: function () {
                        $('#editDy').dialog('destroy');
                    },
                    onLoad: function () {
                        $.ajax({
                            type: "POST",
                            url: "<%=path %>/dy/findDyById",
                            cache: false,
                            data: {id: rows[0].id},
                            dataType: 'json',
                            success: function (result) {
                                $("#id").val(result.id);
                                $("#name").textbox("setValue", result.name);
                                $("#price").textbox("setValue", result.price);
                                $("#edgl").textbox("setValue", result.edgl);
                                $("#pfclx").textbox("setValue", result.pfclx);
                                $("#dylx").textbox("setValue", result.dylx);
                                $("#fsms").textbox("setValue", result.fsms);
                                $("#qttd").textbox("setValue", result.qttd);
                                $("#ms").textbox("setValue", result.ms);
                            }
                        });
                    }
                });

            }
        }, {
            id: 'btnRemove',
            text: "删除",
            iconCls: 'icon-remove',
            handler: function () {
                var rows = $("#table").datagrid('getSelections'); //获取表格选中行
                if (!rows || rows.length == 0) {
                    $.messager.alert("提示", "请选择要操作的行！", "info");
                    return;
                }
                $.messager.confirm('警告！','确定要删除么？',function(r){
                    if (r){
                        $.ajax({
                            type:"POST",
                            url:"<%=path%>/dy/delete",
                            cache: false,
                            data:{dys:JSON.stringify(rows)},
                            traditional:true,
                            success: function (data) {
                                $('#table').datagrid('reload');
                            },
                            error:function(){
                                $('#table').datagrid('reload');
                            }
                        });
                    }else{
                        return;
                    }
                });
            }
        },{
                id:'uploading',
                text:"上传",
                iconCls:'icon-filter',
                handler:function(){
                    $('<div id="upload"/>').dialog({
                        title:'批量上传',
                        width:300,
                        height:300,
                        closed:false,
                        cache:false,
                        href:'<%=path%>/page/dy/dy_uploading.jsp',
                        modal:true,
                        buttons:[{
                            text:'上传',
                            handler:function(){
                                var allow = [".xls",".xlsx"];
                                var file = $('#uploadForm input[name="file"]').val();
                                var $tip = $('#tip');
                                if(file==''){
                                    $tip.text('请选择一个文件！');
                                    return;
                                }
                                $tip.text('正在努力上传！');
                                var suffix = file.substring(file.lastIndexOf('.'),file.length).toLowerCase();
                                if($.inArray(suffix,allow)>-1){
                                    $('#uploadForm').ajaxSubmit({
                                        type:'post',
                                        url:'<%=path%>/dy/excel_up',
                                        async:false,
                                        success:function(data){
                                            $tip.text(data.text);
                                            $('#upload').dialog('close');
                                            $('#table').datagrid('reload');
                                            $.messager.confirm("提示!","上传成功！");
                                        },
                                        error:function(){
                                            $tip.text('解析失败！');
                                        }
                                    });
                                }
                            }
                        },{
                            text:'关闭',
                            handler:function(){
                                $('#upload').dialog('close');
                            }
                        }],
                        onClose:function(){
                            $('#upload').dialog('destroy');
                        }
                    });
                }
            }],
        onLoadSuccess: function () {
            $('#table').datagrid('clearSelections');
        },
        onBeforeLoad: function () {
        }
    });

    $('#table').datagrid('getPager').pagination({
        pageSize: 10,
        pageNumber: 1,
        pageList: [10, 20, 30, 40, 50],
        beforePageText: '第',//页数文本框前显示的汉字
        afterPageText: '页    共 {pages} 页',
        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',
    });
</script>
</html>

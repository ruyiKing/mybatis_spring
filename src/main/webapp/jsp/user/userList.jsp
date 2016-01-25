<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>用户列表</title>
	<link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/js/easyui-1.4.4/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="/js/easyui-1.4.4/themes/color.css">
    <link rel="stylesheet" type="text/css" href="/js/easyui-1.4.4/demo/demo.css">
    <script type="text/javascript" src="/js/jquery1.11.3.min.js"></script>
    <script type="text/javascript" src="/js/easyui-1.4.4/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/js/easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<h2>用户列表</h2>
<div style="margin:20px 0;text-align: right;">
	<input class="easyui-searchbox" data-options="prompt:'Please Input Value',searcher:doSearch" style="width:300px;"></input>
</div>

	<div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">新建用户</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">编辑用户</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除用户</a>
    </div>
        
    <table id="dg" title="用户列表" class="easyui-datagrid" style="width:100%;height:350px"
            url="<%=request.getContextPath() %>/user/finduserList.do"
            toolbar="#toolbar" pagination="true"
            rownumbers="true" fitColumns="true" singleSelect="true">
        <thead>
            <tr>
                <th field="id" width="50">序号</th>
                <th field="name" width="50">用户名</th>
                <th field="login_name" width="50">登录名</th>
                <th field="createTime" width="50">创建日期</th>
                <th field="updateTime" width="50">更新日期</th>
            </tr>
        </thead>
    </table>
   
    
    <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"  closed="true" buttons="#dlg-buttons">
        <div class="ftitle">用户信息</div>
        <form id="fm" method="post" novalidate>            
            <div class="fitem">
                <label>用户名:</label>
                <input name="name" class="easyui-textbox" required="true">
            </div>
            <div class="fitem">
                <label>登录名:</label>
                <input name="login_name" class="easyui-textbox" required="true">
            </div>
            <div class="fitem">
                <label>密码:</label>
                <input name="pwd" class="easyui-textbox" required="true">
            </div>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">取消</a>
    </div>
    <script type="text/javascript">
	    
    	function doSearch(value){
	        alert('You input: ' + value);
	        $('#dg').datagrid('reload'); 
	    }

        var url;
        function newUser(){
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','新建用户');
            $('#fm').form('clear');
            url = 'save_user.php';
        }
        function editUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('center').dialog('setTitle','编辑用户');
                $('#fm').form('load',row);
                url = 'update_user.php?id='+row.id;
            }
        }
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                        $.messager.show({
                            title: 'Error',
                            msg: result.errorMsg
                        });
                    } else {
                        $('#dlg').dialog('close');        // close the dialog
                        $('#dg').datagrid('reload');    // reload the user data
                    }
                }
            });
        }
        function destroyUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
                    if (r){
                        $.post('destroy_user.php',{id:row.id},function(result){
                            if (result.success){
                                $('#dg').datagrid('reload');    // reload the user data
                            } else {
                                $.messager.show({    // show error message
                                    title: 'Error',
                                    msg: result.errorMsg
                                });
                            }
                        },'json');
                    }
                });
            }
        }
    </script>
    <style type="text/css">
        #fm{
            margin:0;
            padding:10px 30px;
        }
        .ftitle{
            font-size:14px;
            font-weight:bold;
            padding:5px 0;
            margin-bottom:10px;
            border-bottom:1px solid #ccc;
        }
        .fitem{
            margin-bottom:5px;
        }
        .fitem label{
            display:inline-block;
            width:80px;
        }
        .fitem input{
            width:160px;
        }
    </style>
    
</body>
</html>
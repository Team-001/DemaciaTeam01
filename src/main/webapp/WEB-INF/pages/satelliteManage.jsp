<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/19
  Time: 上午11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../css/demo.css">

    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/ajaxfileupload.js" type="text/javascript"></script>
    <style>
        .table1 {
            border: 1px solid #C1DEE7;
            width: 100%;
            border-collapse: collapse;

        }
        td {
            text-align: center;
            border-collapse: collapse;
            background-color: #ecf6f9;
            font-size: 12px;
        }

        .trTitle {
            background-image: linear-gradient(to top, #c3e6ff,#FFFFFF);
            background-color: #cae5f8;
            color: #427dc0;
            text-align: left;
        }

    </style>

</head>

<body>
<table cellpadding="1" cellspacing="2" class="table1">
    <tr>
        <td class="trTitle" colspan="6">🚩当前位置: 综合管理 >> 卫星库管理人管理</td>
    </tr>
    <tr>
        <td class="trTitle" colspan="6">
            <div id="panel0" class="mini-panel" title="⬇️查询条件" style="width:100%;height:72px;"
                 allowResize="true" collapseOnTitleClick="true">
                <table class="table1">
                    <tr>
                        <td style="width:80px">卫星库名称</td>
                        <td colspan="2" style="text-align: left;border: 0">
                            <input type="text" style="width:80%;">
                        </td>
                        <td style="width:80px">管理人员</td>
                        <td colspan="2" style="text-align: left">
                            <input id="btnEdit0" style="width: 80%"
                                   class="mini-buttonedit"
                                   allowInput="true"
                                   onbuttonclick="onManagerButtonEdit"
                                   name="id" textName="name"/>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td class="trTitle" colspan="6">
            <button style="float: right">⛔️删除</button>
            <button style="float: right">➕新增</button>
            <button style="float: right">🔍查询</button >
        </td>
    </tr>
</table>
<div id="grid0"
     class="mini-datagrid"
     style="width:100%;height:250px;"
     idField="id"
     sizeList="[2,5,10]" pageSize="5">
    <div property="columns">
        <div width="30" renderer="onActionRenderer1" headerAlign="center" align="center"><input type="checkbox"></div>
        <div field="sname" width="120" headerAlign="center" align="center">卫星库</div>
        <div field="manager" width="150" headerAlign="center" align="center">管理人员</div>
        <div field="createDate" width="100" headerAlign="center" dateFormat="yyyy-MM-dd" align="center">创建日期</div>
        <div field="effect" width="100" headerAlign="center" align="center">是否有效</div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    var grid0=mini.get("grid0");
    grid0.setUrl("/splitSatellite");
    grid0.load();


    function onActionRenderer1(e) {
        var grid = e.sender;
        var record = e.record;
        var s = '<input type="checkbox">';
        return s;
    }


    function onManagerButtonEdit() {
        var btnEdit = this;
        mini.open({
            url:"/staffTable",
            title: "卫星库管理人列表",
            width: 500,
            height: 500,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);
                    if (data) {
                        console.log(data.id+"---"+data.name);
                        btnEdit.setValue(data.id);
                        btnEdit.setText(data.name);
                    }
                }

            }
        });
    }



</script>
</body>
</html>

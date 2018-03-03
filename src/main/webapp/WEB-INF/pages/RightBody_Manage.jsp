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
        .table2 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #C1DEE7;
        }
        td {
            text-align: center;
            border-collapse: collapse;
            padding: 3px;
            height: 20px;
            background-color: #ecf6f9;
            font-size: 12px;
        }

        .trTitle {
            background-image: linear-gradient(to top, #c3e6ff,#FFFFFF);
            background-color: #cae5f8;
            color: #427dc0;
            text-align: left;
        }
        .table2>td {
            text-align: center;
            border-collapse: collapse;
            padding: 3px;
            height: 20px;
            font-size: 12px;
            border: 1px solid #C1DEE7;
        }

    </style>

</head>

<body>
<table cellpadding="1" cellspacing="2" class="table1">
    <tr>
        <td class="trTitle" colspan="9">🚩当前位置: 综合管理 >> 流程查询</td>
    </tr>
    <tr>
        <td class="trTitle" colspan="9">
            <div id="panel0" class="mini-panel" title="⬇️查询条件" style="width:100%;height:102px;"
                 allowResize="true" collapseOnTitleClick="true">
                <table class="table1">
                    <tr>
                        <td style="width:80px">申请时间</td>
                        <td colspan="2" style="text-align: left;border: 0">
                            <input id="date1" style="width: 80%" class="mini-datepicker"/>
                        </td>
                        <td style="width:80px">申请人</td>
                        <td colspan="2" style="text-align: left">
                            <input id="btnEdit1" style="width: 80%"
                                   class="mini-buttonedit"
                                   onbuttonclick="onStaffButtonEdit"
                                   name="id" textName="name"/>
                        </td>
                        <td style="width:80px">关键字</td>
                        <td colspan="2" style="text-align: left">
                            <input id="key" type="text" style="width: 80%;height: 25px" class="mini-textarea">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:80px">流程类型</td>
                        <td colspan="2" style="text-align: left">
                            <input id="combobox1" class="mini-combobox" style="width:80%;" textField="text" valueField="id"
                                   url="text/process.txt"  showNullItem="true" required="true"
                                   onvalidation="onComboValidation"/>
                        </td>
                        <td style="width:80px">所属部门</td>
                        <td colspan="2" style="text-align: left">
                            <input id="btnEdit2" style="width: 80%"
                                   class="mini-buttonedit"
                                   onbuttonclick="onDepButtonEdit"
                                   name="id" textName="name"/>
                        </td>
                        <td style="width:80px">是否可以打印</td>
                        <td colspan="2" style="text-align: left">
                            <input id="combobox2" class="mini-combobox" style="width:80%;" textField="text" valueField="id"
                                   url="text/yesOrNo.txt"  showNullItem="true" required="true"
                                   onvalidation="onComboValidation"/>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td class="trTitle" colspan="9"><button style="float: right;margin-right: 4%" onclick="search()">🔍查询</button></td>
    </tr>
</table>
<div id="grid0"
     class="mini-datagrid"
     style="width:100%;height:250px;"
     idField="id"
     sizeList="[2,5,10]" pageSize="5">
    <div property="columns">
        <div width="30" renderer="onActionRenderer1" headerAlign="center" align="center"><input type="checkbox"></div>
        <div field="mid" width="120" headerAlign="center" align="center">流程编号</div>
        <div field="mName" width="150" headerAlign="center" align="center">流程名称</div>
        <div field="department" width="100" headerAlign="center" headerAlign="center" align="center">所属部门</div>
        <div field="stage"  headerAlign="center" width="100"  align="center">当前环节</div>
        <div field="applicant" width="100" headerAlign="center" align="center" decimalPlaces="2" dataType="float">提报人</div>
        <div field="print" width="80" headerAlign="center" align="center">是否可以打印</div>
        <div width="130" renderer="onActionRenderer2" headerAlign="center" align="center">操作</div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    var grid0=mini.get("grid0");
    grid0.setUrl("/splitMission");
    grid0.load();

    function search() {
        var key1 = mini.get("date1").getText();
        var key2 = mini.get("key").getValue();
        var key3 = mini.get("btnEdit1").getText();
        var key4 = mini.get("btnEdit2").getText();
        var key5 = mini.get("combobox2").getText();
        grid0.load({ applyDate: key1, mName: key2, applicant: key3, department: key4,print:key5 });
    }

    function onActionRenderer1(e) {
        var grid0 = e.sender;
        var record = e.record;
        var s = '<input type="checkbox">';
        return s;
    }

    function onActionRenderer2(e) {
        var grid0 = e.sender;
        var record = e.record;
        var s = '<button onclick="deal()">📝办理</button>&nbsp;<button>🖨打印</button>';
        return s;
    }


    function onComboValidation(e) {
        var items = this.findItems(e.value);
        if (!items || items.length == 0) {
            e.isValid = false;
        }
    }
    function onStaffButtonEdit() {
        var btnEdit = this;
        mini.open({
            url:"/staffTable",
            title: "申请人列表",
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


    function onDepButtonEdit() {
        var btnEdit = this;
        mini.open({
            url:"/depTable",
            title: "部门列表",
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

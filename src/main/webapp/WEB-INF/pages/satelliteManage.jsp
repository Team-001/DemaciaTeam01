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
                                   allowInput="false"
                                   onbuttonclick="onStaffButtonEdit"
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
    <table class="table2" style="border: 1px solid;border-collapse: collapse">
        <tr>
            <td style="width:30px;border: 1px solid #C1DEE7;"><input type="checkbox"></td>
            <td style="border: 1px solid #C1DEE7">卫星库</td>
            <td style="border: 1px solid #C1DEE7">管理人员</td>
            <td style="border: 1px solid #C1DEE7">创建日期</td>
            <td style="border: 1px solid #C1DEE7">是否有效</td>
        </tr>
        <tr>
            <td style="border: 1px solid #C1DEE7;"><input type="checkbox"></td>
            <td style="border: 1px solid #C1DEE7;">1</td>
            <td style="border: 1px solid #C1DEE7;">1</td>
            <td style="border: 1px solid #C1DEE7;">1</td>
            <td style="border: 1px solid #C1DEE7;">1</td>
        </tr>
        <tr>
            <td colspan="6" style="height:30px;">
                <div class="mini-pager" style="width:98%;height:100%;background:#f0f3f7;border:solid 1px #ccc;    "
                     totalCount="${sessionScope.pageBean.totalPage} " onpagechanged="onPageChanged" sizeList="[5,10,20]"
                     showPageSize="true" showPageIndex="true" showPageInfo="true"
                     buttons="#buttons">
                </div>
            </td>
        </tr>
    </table>


</table>


<script type="text/javascript">
    mini.parse();


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

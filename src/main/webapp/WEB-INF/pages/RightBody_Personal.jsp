<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/19
  Time: 上午10:31
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
            ;
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #C1DEE7;
        }
        .table2 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #C1DEE7;
        }
        td {
            text-align: center;
            border: 1px solid #C1DEE7;
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
<div id="tabs1" class="mini-tabs" activeIndex="0" style="width:100%;height:100%;" plain="false">
    <div title="待办任务" >
        <table cellpadding="1" cellspacing="2" class="table1">
            <tr>
                <td class="trTitle" colspan="8">🚩当前位置: 个人工作平台 >> 待办任务</td>
            </tr>
            <tr>
                <td class="trTitle" colspan="8">
                    <div id="panel0" class="mini-panel" title="⬇️查询条件" style="width:100%;height:102px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="width:10%">申请时间</td>
                                <td colspan="2" style="text-align: left;border: 0">
                                    <input id="date1" style="width: 70%" class="mini-datepicker"/>
                                </td>
                                <td style="width:10%">关键字</td>
                                <td colspan="2" style="text-align: left">
                                    <input type="text" style="width: 70%;height: 25px" class="mini-textarea">
                                </td>
                            </tr>
                            <tr>
                                <td style="width:10%">申请人</td>
                                <td colspan="2" style="text-align: left">
                                    <input id="btnEdit1" style="width: 70%"
                                           class="mini-buttonedit"
                                           allowInput="false"
                                           onbuttonclick="onStaffButtonEdit"
                                           name="id" textName="name"/>
                                </td>
                                <td style="width:10%">所属部门</td>
                                <td style="text-align: left">
                                    <input id="btnEdit2" style="width: 70%"
                                           class="mini-buttonedit"
                                           allowInput="false"
                                           onbuttonclick="onDepButtonEdit"
                                           name="id" textName="name"/>
                                </td>
                            </tr>

                        </table>


                    </div>


                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="8"><button style="float: right;margin-right: 4%">🔍查询</button></td>
            </tr>
            <table class="table2" style="border: 1px solid;border-collapse: collapse">
                <div class="mini-fit">

                    <div id="grid0" class="mini-datagrid" style="width:100%;height:50%;"
                         idField="id" allowResize="true"
                         sizeList="[2,3,5,10]" pageSize="5"
                         borderStyle="border-left:0;border-right:0;" onrowdblclick="onRowDblClick"
                    >
                        <div property="columns" style="text-align: center">
                            <div field="id" width="30px" headerAlign="center" allowSort="true"><input type="checkbox"></div>
                            <div field="id" width="150px" headerAlign="center" allowSort="true">流程编号</div>
                            <div field="name" width="150px" headerAlign="center" allowSort="true">流程名称</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">所属部门</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">当前环节</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">提报人</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">提报时间</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">操作</div>
                        </div>
                    </div>

                </div>
            </table>


        </table>
    </div>
    <div title="已办任务" >
        <table cellpadding="1" cellspacing="2" class="table1">
            <tr>
                <td class="trTitle" colspan="8">🚩当前位置: 个人工作平台 >> 已办任务</td>
            </tr>
            <tr>
                <td class="trTitle" colspan="8">
                    <div id="panel1" class="mini-panel" title="⬇️查询条件" style="width:100%;height:102px"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="width:10%">申请时间</td>
                                <td colspan="2" style="text-align: left">
                                    <input id="date2" style="width: 70%" class="mini-datepicker"/>
                                </td>
                                <td style="width:10%">关键字</td>
                                <td colspan="2" style="text-align: left">
                                    <input type="text" style="width: 70%;height: 25px" class="mini-textarea">
                                </td>
                            </tr>
                            <tr>
                                <td style="width:10%">申请人</td>
                                <td colspan="2" style="text-align: left">
                                    <input id="btnEdit3" style="width: 70%"
                                           class="mini-buttonedit"
                                           allowInput="false"
                                           onbuttonclick="onStaffButtonEdit"
                                           name="id" textName="name"/>
                                </td>
                                <td style="width:10%">所属部门</td>
                                <td style="text-align: left">
                                    <input id="btnEdit4" style="width: 70%"
                                           class="mini-buttonedit"
                                           allowInput="false"
                                           onbuttonclick="onDepButtonEdit"
                                           name="id" textName="name"/>
                                </td>
                            </tr>

                        </table>


                    </div>


                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="8"><button style="float: right;margin-right: 4%">🔍查询</button></td>
            </tr>
            <table class="table2" style="border: 1px solid;border-collapse: collapse">
                <div class="mini-fit">

                    <div id="grid1" class="mini-datagrid" style="width:100%;height:50%;"
                         idField="id" allowResize="true"
                         sizeList="[2,3,5,10]" pageSize="5"
                         borderStyle="border-left:0;border-right:0;" onrowdblclick="onRowDblClick"
                    >
                        <div property="columns" style="text-align: center">
                            <div field="id" width="30px" headerAlign="center" allowSort="true"><input type="checkbox"></div>
                            <div field="id" width="150px" headerAlign="center" allowSort="true">流程编号</div>
                            <div field="name" width="150px" headerAlign="center" allowSort="true">流程名称</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">所属部门</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">当前环节</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">提报人</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">提报时间</div>
                            <div field="email" width="150px" headerAlign="center" allowSort="true">操作</div>
                        </div>
                    </div>

                </div>
            </table>


        </table>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    var grid0=mini.get("grid0");
    grid0.setUrl();
    grid0.load();

    var grid1=mini.get("grid1");
    grid1.setUrl();
    grid1.load();

    function onTabPositionChange(value) {
        var tabs = mini.get("tabs1");
        tabs.setTabPosition(value);
    }

    function onTabAlignChange(value) {
        var tabs = mini.get("tabs1");
        tabs.setTabAlign(value);
    }
    function deal() {
        mini.open({
            url:"contractPersonal.jsp",
            title:"个人工作台",
            with:500,
            height:400
        })
    };
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

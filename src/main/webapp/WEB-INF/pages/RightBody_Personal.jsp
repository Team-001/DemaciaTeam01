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
    <%--<script src="../../js/ajaxfileupload.js" type="text/javascript"></script>--%>
    <style>
        .table1,.table2 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #C1DEE7;
        }
        td {
            text-align: center;
            padding: 3px;
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
                                <td style="width:10%;background-color: #ecf6f9">申请时间</td>
                                <td colspan="2" style="text-align: left;border: 0;background-color: #ecf6f9">
                                    <input id="date1" style="width: 70%" class="mini-datepicker"/>
                                </td>
                                <td style="width:10%;background-color: #ecf6f9">关键字</td>
                                <td colspan="2" style="text-align: left;background-color: #ecf6f9">
                                    <input id="key1" type="text" style="width: 70%;height: 25px" class="mini-textarea">
                                </td>
                            </tr>
                            <tr>
                                <td style="width:10%;background-color: #ecf6f9">申请人</td>
                                <td colspan="2" style="text-align: left;background-color: #ecf6f9">
                                    <input id="btnEdit1" style="width: 70%"
                                           class="mini-buttonedit"
                                           onbuttonclick="onStaffButtonEdit"
                                           name="id" textName="name"/>
                                </td>
                                <td style="width:10%;background-color: #ecf6f9">所属部门</td>
                                <td style="text-align: left;background-color: #ecf6f9">
                                    <input id="btnEdit2" style="width: 70%"
                                           class="mini-buttonedit"
                                           onbuttonclick="onDepButtonEdit"
                                           name="id" textName="name"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="8"><button style="float: right;margin-right: 4%" onclick="searchToDo()">🔍查询</button></td>
            </tr>
        </table>
            <div id="grid0"
                 class="mini-datagrid"
                 style="width:100%;height:250px;"
                 idField="id"
                 sizeList="[2,5,10]" pageSize="5"
            >
                <div property="columns">
                    <div width="30" renderer="onActionRenderer1" headerAlign="center" align="center"><input type="checkbox"></div>
                    <div field="mid" width="120" headerAlign="center" align="center">流程编号</div>
                    <div field="mName" width="150" headerAlign="center" align="center">流程名称</div>
                    <div field="department" width="100" headerAlign="center" headerAlign="center" align="center">所属部门</div>
                    <div field="stage"  headerAlign="center" width="100"  align="center">当前环节</div>
                    <div field="applicant" width="100" headerAlign="center" align="center" decimalPlaces="2" dataType="float">提报人</div>
                    <div field="applyDate" width="100" headerAlign="center" dateFormat="yyyy-MM-dd" align="center">提报时间</div>
                    <div width="80" renderer="onActionRenderer2" headerAlign="center" align="center">操作</div>
                </div>
            </div>


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
                                <td style="width:10%;background-color: #ecf6f9">申请时间</td>
                                <td colspan="2" style="text-align: left;background-color: #ecf6f9">
                                    <input id="date2" style="width: 70%" class="mini-datepicker"/>
                                </td>
                                <td style="width:10%;background-color: #ecf6f9">关键字</td>
                                <td colspan="2" style="text-align: left;background-color: #ecf6f9">
                                    <input id="key2" type="text" style="width: 70%;height: 25px" class="mini-textarea">
                                </td>
                            </tr>
                            <tr>
                                <td style="width:10%;background-color: #ecf6f9">申请人</td>
                                <td colspan="2" style="text-align: left;background-color: #ecf6f9">
                                    <input id="btnEdit3" style="width: 70%"
                                           class="mini-buttonedit"
                                           onbuttonclick="onStaffButtonEdit"
                                           name="id" textName="name"/>
                                </td>
                                <td style="width:10%;background-color: #ecf6f9">所属部门</td>
                                <td style="text-align: left;background-color: #ecf6f9">
                                    <input id="btnEdit4" style="width: 70%"
                                           class="mini-buttonedit"
                                           onbuttonclick="onDepButtonEdit"
                                           name="id" textName="name"/>
                                </td>
                            </tr>

                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="8"><button style="float: right;margin-right: 4%" onclick="searchDone()">🔍查询</button></td>
            </tr>
        </table>
            <div id="grid1"
                 class="mini-datagrid"
                 style="width:100%;height:250px;"
                 idField="id"
                 sizeList="[2,5,10]" pageSize="5"
            >
                <div property="columns">
                    <div width="30" renderer="onActionRenderer1" headerAlign="center" align="center"><input type="checkbox"></div>
                    <div field="mid" width="120" headerAlign="center" align="center">流程编号</div>
                    <div field="mName" width="150" headerAlign="center" align="center">流程名称</div>
                    <div field="department" width="100" headerAlign="center" headerAlign="center" align="center">所属部门</div>
                    <div field="stage"  headerAlign="center" width="100"  align="center">当前环节</div>
                    <div field="applicant" width="100" headerAlign="center" align="center" decimalPlaces="2" dataType="float">提报人</div>
                    <div field="applyDate" width="100" headerAlign="center" dateFormat="yyyy-MM-dd" align="center">提报时间</div>
                    <div width="80" renderer="onActionRenderer2" headerAlign="center" align="center">操作</div>
                </div>
            </div>
    </div>
</div>

<script type="text/javascript">
    mini.parse();

    var grid0=mini.get("grid0");
    grid0.setUrl("/splitMission");
    grid0.load();

    var grid1=mini.get("grid1");
    grid1.setUrl("/splitMission");
    grid1.load();

    function onActionRenderer1(e) {
        var grid0 = e.sender;
        var record = e.record;
        var s = '<input type="checkbox">';
        return s;
    }

    function onActionRenderer2(e) {
        var grid0 = e.sender;
        var record = e.record;
        var s = '<button>✏️办理</button>';
        return s;
    }

    function searchToDo() {
        var key1 = mini.get("date1").getText();
        var key2 = mini.get("key1").getValue();
        var key3 = mini.get("btnEdit1").getText();
        var key4 = mini.get("btnEdit2").getText();
        grid0.load({ applyDate: key1, mName: key2, applicant: key3, department: key4 });
    }

    function searchDone() {
        var key1 = mini.get("date2").getText();
        var key2 = mini.get("key2").getValue();
        var key3 = mini.get("btnEdit3").getText();
        var key4 = mini.get("btnEdit4").getText();
        grid1.load({ applyDate: key1, mName: key2, applicant: key3, department: key4 });

    }

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
            url:"deptManager.jsp",
            title:"部门经理审批",
            width:700,
            height:500
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

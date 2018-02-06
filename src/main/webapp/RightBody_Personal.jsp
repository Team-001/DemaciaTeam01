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
    <link rel="stylesheet" href="css/demo.css">

    <script src="scripts/boot.js" type="text/javascript"></script>
    <script src="page/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="page/js/ajaxfileupload.js" type="text/javascript"></script>
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
        }

        .trTitle {
            background-color: #cae5f8;
            color: #427dc0;
            text-align: left;
        }
        .table2>td {
            text-align: center;
            border-collapse: collapse;
            padding: 3px;
            height: 20px;
            border: 1px solid #C1DEE7;
        }

    </style>
</head>
<body>
<div id="tabs1" class="mini-tabs" activeIndex="0" style="width:100%;height:100%;" plain="false">
    <div title="待办任务" >
        <table cellpadding="1" cellspacing="2" class="table1">
            <tr>
                <td class="trTitle" colspan="8">当前位置: 个人工作平台 >> 待办任务</td>
            </tr>
            <tr>
                <td class="trTitle" colspan="8">查询条件</td>
            </tr>
            <tr>
                <td style="width:80px">申请时间</td>
                <td colspan="2" style="text-align: left">
                    <input id="date1" style="width: 70%" class="mini-datepicker"/>
                </td>
                <td style="width:80px">关键字</td>
                <td colspan="2" style="text-align: left">
                    <input type="text" style="width: 70%;height: 25px" class="mini-textarea">
                </td>
            </tr>
            <tr>
                <td style="width:80px">申请人</td>
                <td colspan="2" style="text-align: left">
                    <input id="btnEdit1" style="width: 70%"
                           class="mini-buttonedit"
                           allowInput="false"
                           onbuttonclick="onStudentButtonEdit"
                           name="sid" textName="sname"/>
                </td>
                <td style="width:80px">所属部门</td>
                <td style="text-align: left">
                    <input id="btnEdit2" style="width: 70%"
                           class="mini-buttonedit"
                           allowInput="false"
                           onbuttonclick="onClazzButtonEdit"
                           name="cid" textName="cname"/>
                </td>
            </tr>
            <tr>
                <td class="trTitle" colspan="8"><button style="float: right;margin-right: 4%">查询</button></td>
            </tr>
            <table class="table2" style="border: 1px solid;border-collapse: collapse">
                <tr>
                    <td style="width:30px;"><input type="checkbox"></td>
                    <td>流程编号</td>
                    <td>流程名称</td>
                    <td>所属部门</td>
                    <td>当前环节</td>
                    <td>提报人</td>
                    <td>提报时间</td>
                    <td style="width: 60px">操作</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td><button>办理</button></td>
                </tr>
                <tr>
                    <td colspan="8" style="height:30px;">
                        <div class="mini-pager" style="width:98%;height:100%;background:#f0f3f7;border:solid 1px #ccc;    "
                             totalCount="${sessionScope.pageBean.totalPage} " onpagechanged="onPageChanged" sizeList="[5,10,20]"
                             showPageSize="true" showPageIndex="true" showPageInfo="true"
                             buttons="#buttons">
                        </div>
                    </td>
                </tr>
            </table>


        </table>
    </div>
    <div title="已办任务" >
        <table cellpadding="1" cellspacing="2" class="table1">
            <tr>
                <td class="trTitle" colspan="8">当前位置: 个人工作平台 >> 已办任务</td>
            </tr>
            <tr>
                <td class="trTitle" colspan="8">查询条件</td>
            </tr>
            <tr>
                <td style="width:80px">申请时间</td>
                <td colspan="2" style="text-align: left">
                    <input id="date2" style="width: 70%" class="mini-datepicker"/>
                </td>
                <td style="width:80px">关键字</td>
                <td colspan="2" style="text-align: left">
                    <input type="text" style="width: 70%;height: 25px" class="mini-textarea">
                </td>
            </tr>
            <tr>
                <td style="width:80px">申请人</td>
                <td colspan="2" style="text-align: left">
                    <input id="btnEdit3" style="width: 70%"
                           class="mini-buttonedit"
                           allowInput="false"
                           onbuttonclick="onStudentButtonEdit"
                           name="sid" textName="sname"/>
                </td>
                <td style="width:80px">所属部门</td>
                <td style="text-align: left">
                    <input id="btnEdit4" style="width: 70%"
                           class="mini-buttonedit"
                           allowInput="false"
                           onbuttonclick="onClazzButtonEdit"
                           name="cid" textName="cname"/>
                </td>
            </tr>
            <tr>
                <td class="trTitle" colspan="8"><button style="float: right;margin-right: 4%">查询</button></td>
            </tr>
            <table class="table2" style="border: 1px solid;border-collapse: collapse">
                <tr>
                    <td style="width:30px;"><input type="checkbox"></td>
                    <td>流程编号</td>
                    <td>流程名称</td>
                    <td>所属部门</td>
                    <td>当前环节</td>
                    <td>提报人</td>
                    <td>提报时间</td>
                    <td style="width: 60px">操作</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td><button>办理</button></td>
                </tr>
                <tr>
                    <td colspan="8" style="height:30px;">
                        <div class="mini-pager" style="width:98%;height:100%;background:#f0f3f7;border:solid 1px #ccc;    "
                             totalCount="${sessionScope.pageBean.totalPage} " onpagechanged="onPageChanged" sizeList="[5,10,20]"
                             showPageSize="true" showPageIndex="true" showPageInfo="true"
                             buttons="#buttons">
                        </div>
                    </td>
                </tr>
            </table>


        </table>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    function onTabPositionChange(value) {
        var tabs = mini.get("tabs1");
        tabs.setTabPosition(value);
    }

    function onTabAlignChange(value) {
        var tabs = mini.get("tabs1");
        tabs.setTabAlign(value);
    }

    function onClazzButtonEdit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "page/SelectGridWindow.html",
            title: "选择班级",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.cid);
                        btnEdit.setText(data.cname);
                    }
                }

            }
        })
    }
    function onStudentButtonEdit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "page/SelectStudent.html",
            title: "选择学生",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
                    }
                }

            }
        })
    }




</script>
</body>
</html>

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
        <td class="trTitle" colspan="8">🚩当前位置: 综合管理 >> 厂房管理</td>
    </tr>
    <tr>
        <td class="trTitle" colspan="8">
            <div id="panel0" class="mini-panel" title="⬇️查询条件" style="width:100%;height:95px;"
                 allowResize="true" collapseOnTitleClick="true">
                <table class="table1">
                    <tr>
                        <td style="width:80px">厂房名称</td>
                        <td colspan="2" style="text-align: left;border: 0">
                            <input type="text" style="width:80%;"></td>
                        <td style="width:80px">厂房经理</td>
                        <td colspan="2" style="text-align: left">
                            <input type="text" style="width:80%;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:80px">厂房地址</td>
                        <td colspan="2" style="text-align: left">
                            <input type="text" style="width:80%;">
                        </td>
                        <td style="width:80px">机组</td>
                        <td colspan="2" style="text-align: left">
                            <input id="combobox2" class="mini-combobox" style="width:80%;" textField="text" valueField="id"
                                   url="text/team.txt"  showNullItem="false" required="true" allowInput="false"
                                   onvalidation="onComboValidation"/>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>

    <tr>
        <td class="trTitle" colspan="8">
            <button style="float: right">⛔️删除</button>
            <button style="float: right">➕新增</button>
            <button style="float: right">🔍查询</button>
        </td>
    </tr>
    <table class="table2" style="border: 1px solid #C1DEE7">
        <tr style="background-color: #ecf6f9;">
            <td style="width:30px;border: 1px solid #C1DEE7;"><input type="checkbox"></td>
            <td style="border: 1px solid #C1DEE7;">机组</td>
            <td style="border: 1px solid #C1DEE7;">厂房名称</td>
            <td style="border: 1px solid #C1DEE7;">厂房经理</td>
            <td style="border: 1px solid #C1DEE7;">厂房地址</td>
            <td style="border: 1px solid #C1DEE7;">创建日期</td>
        </tr>
        <tr>
            <td style="border: 1px solid #C1DEE7;"><input type="checkbox"></td>
            <td style="border: 1px solid #C1DEE7;">1</td>
            <td style="border: 1px solid #C1DEE7;">1</td>
            <td style="border: 1px solid #C1DEE7;">1</td>
            <td style="border: 1px solid #C1DEE7;">1</td>
            <td style="border: 1px solid #C1DEE7;">1</td>
        </tr>
        <tr>
            <td colspan="9" style="height:30px;">
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

    function deal() {

    }



</script>
</body>
</html>

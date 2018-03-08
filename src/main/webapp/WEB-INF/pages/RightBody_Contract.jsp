<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/3
  Time: 下午4:23
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
    <script src="../../js/jquery.cookie.js" type="text/javascript"></script>
    <style type="text/css">
        .table1 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #C1DEE7;
            font-size: 12px;
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
        .table1>td {
            text-align: center;
            border-collapse: collapse;
            padding: 3px;
            height: 20px;
            border: 1px solid #C1DEE7;
            font-size: 12px;
        }

    </style>
</head>
<body>
<form action="">
<table class="table1">
    <tr>
        <td class="trTitle" colspan="8">🚩当前位置: 项目合同推荐申报</td>
    </tr>
    <tr>
        <td class="trTitle" colspan="8">
            <div id="panel0" class="mini-panel" title="⬇️申请信息" style="width:100%;height:160px;"
                 allowResize="true" collapseOnTitleClick="true">
                <table class="table1">
                    <tr>
                        <td style="text-align: right;background-color: #ecf6f9;">合同名称 <font color="red">※</font></td>
                        <td colspan="2" style="text-align: left">
                            <input style="width: 100%" class="mini-textarea"/>
                        </td>
                        <td style="text-align: right;background-color: #ecf6f9;width:100px">合同编号 <font color="red">※</font></td>
                        <td colspan="2" style="text-align: left">
                            <input style="width: 100%" class="mini-textarea">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;background-color: #ecf6f9;width:100px">合同对方信息 <font color="red">※</font></td>
                        <td colspan="2" style="text-align: left">
                            <input type="text" style="width: 100%;height: 25px" class="mini-textarea">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;background-color: #ecf6f9;width:100px">合同起日期 <font color="red">※</font></td>
                        <td colspan="2" style="text-align: left;border: 0">
                            <input id="date1" style="width: 100%" class="mini-datepicker"/>
                        </td>
                        <td style="text-align: right;background-color: #ecf6f9;width:100px">合同止日期 <font color="red">※</font></td>
                        <td colspan="2" style="text-align: left">
                            <input id="date2" style="width: 100%" class="mini-datepicker"/>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>

    <tr>
        <td class="trTitle" colspan="8">
            <div id="panel1" class="mini-panel" title="⬇️合同经费信息" style="width:100%;height:150px;"
                 allowResize="true" collapseOnTitleClick="true">
                <table class="table1">
                    <tr>
                        <td style="text-align: right;background-color: #ecf6f9;width:100px;">总费用</td>
                        <td colspan="2">
                            <input style="width: 100%" class="mini-textarea"/>
                        </td>
                        <td style="text-align: right;background-color: #ecf6f9;width:100px">对方核对</td>
                        <td colspan="2">
                            <input style="width: 100%" class="mini-textarea">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;background-color: #ecf6f9;width:100px">公司自筹</td>
                        <td colspan="2">
                            <input style="width: 100%" class="mini-textarea">
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>

    <tr>
        <td class="trTitle" colspan="8">
            <div id="panel2" class="mini-panel" title="⬇️项目成果分配" style="width:100%;height:320px;"
                 allowResize="true" collapseOnTitleClick="true">
                <table class="table1">
                    <tr>
                        <td style="background-color:#e9f6fe;text-align: right;width:150px;">产品形式</td>
                        <td colspan="7" style="text-align: left;">
                            <span style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;
                                <input type="checkbox">专题报告
                                <input type="checkbox">技术方案
                                <input type="checkbox">技术标准
                                <input type="checkbox">硬件产品
                                <input type="checkbox">生产性文件
                                <input type="checkbox">设计文件
                                <input type="checkbox">计算机软件
                                <input type="checkbox" onclick="other(this);">其他
                                <input style="position: absolute; left: 80%;top: 2px; display:none;" type="text" sid="Checkbox5"/>
                            </span>



                        </td>

                    </tr>
                    <tr>
                        <td style="background-color:#e9f6fe;text-align: right">形成的知识产权及分配方式</td>
                        <td colspan="7"><input style="width: 100%; " class="mini-textarea"/></td>
                    </tr>
                    <tr>
                        <td style="background-color:#e9f6fe;text-align: right">直接经济效益及分配方式</td>
                        <td colspan="7"><input style="width: 100%; " class="mini-textarea"/></td>
                    </tr>
                    <tr>
                        <td style="background-color:#e9f6fe;text-align: right">形成的固定资产及分配方式</td>
                        <td colspan="7"><input style="width: 100%; " class="mini-textarea"/></td>
                    </tr>
                    <tr>
                        <td style="background-color:#e9f6fe;text-align: right">合同运作情况简介</td>
                        <td colspan="7"><input style="width: 100%; " class="mini-textarea"/></td>
                    </tr>
                    <tr>
                        <td style="background-color:#e9f6fe;text-align: right">运作说明 <font color="red">※</font></td>
                        <td sid="upload" colspan="2" style="text-align: left">
                            <div>
                                <input class="mini-htmlfile" name="Fdata" sid="file1" style="width:30%;"/>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>

    <tr>
        <td class="trTitle" colspan="8">
            <div id="panel3" class="mini-panel" title="⬇️流程信息" style="width:100%;height:70px;"
                 allowResize="true" collapseOnTitleClick="true">
                <table class="table1">
                    <tr>
                        <td style="width: 100px;background-color:#e9f6fe;text-align: right">技术部经理</td>
                        <td style="text-align: left">
                            <input id="btnEdit1" style="width: 30%"
                                   class="mini-buttonedit"
                                   onbuttonclick="onStudentButtonEdit"
                                   allowInput="false"
                                   name="id" textName="name"/>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>

    <tr>
        <td class="trTitle" colspan="8"><button style="position: absolute; right: 1%;bottom: 0; z-index: 1">提交</button></td>
    </tr>
</table>

</form>


<script>

    mini.parse();
    function other (chk) {
        var Checkbox5 = document.getElementById('Checkbox5');
        if (chk.checked) {
            Checkbox5.style.display = 'block';
        } else {
            Checkbox5.style.display = 'none';
        }
    }
</script>
</body>
</html>

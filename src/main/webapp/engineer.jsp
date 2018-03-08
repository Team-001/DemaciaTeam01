<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 下午4:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/demo.css">

    <script src="scripts/boot.js" type="text/javascript"></script>
    <script src="js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <style type="text/css">
        .table1 {
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
        }
    </style>
</head>
<body>
<form action="">
    <table class="table1">
        <tr>
            <td class="trTitle" colspan="4">
                <div sid="panel1" class="mini-panel" title="⬇️项目基本信息" style="width:100%;height:130px;"
                     allowResize="true" collapseOnTitleClick="true">
                    <table class="table1">
                        <tr>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right">项目名称 </td>
                            <td colspan="3"><a href="">业务流程管理平台</a></td>
                        </tr>
                        <tr>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right">项目申报单位</td>
                            <td></td>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right">联合申报单位</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right">目的</td>
                            <td></td>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right"></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>

        <tr>
            <td class="trTitle" colspan="4" style="width:100px">
                <div sid="panel2" class="mini-panel" title="⬇️与核电生产运营安全性、可靠性、经济的适应分析" style="width:100%;height:100px;"
                     allowResize="true" collapseOnTitleClick="true">
                    <table class="table1">
                        <tr>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right">安全性</td>
                            <td></td>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right">可靠性</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right">经济性</td>
                            <td></td>
                            <td style="width:120px;background-color:#e9f6fe;text-align: right">其他</td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td class="trTitle" colspan="4">
                <div sid="panel3" class="mini-panel" title="⬇️评审信息" style="width:100%;height:135px;"
                     allowResize="true" collapseOnTitleClick="true">
                    <table class="table1">
                        <tr>
                            <td style="width:120px;height: 60px; background-color:#e9f6fe">评审结果</td>
                            <td colspan="3"><input style="width: 100%;height: 60px; overflow: scroll" class="mini-textarea"/></td>
                        </tr>
                        <tr>
                            <td style="background-color:#e9f6fe;text-align: right">立项报告书<font color="red">※</font></td>
                            <td sid="upload" style="text-align: left;border: 0">
                                <div>
                                    <input class="mini-htmlfile" sname="Fdata" sid="file1" style="width:100%;"/>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>

        <tr>
            <td class="trTitle" colspan="4">
                <div sid="panel4" class="mini-panel" title="⬇️流程信息" style="width:100%;height:65px;"
                     allowResize="true" collapseOnTitleClick="true">
                    <table class="table1">
                        <tr>
                            <td style="width: 100px;background-color:#e9f6fe;text-align: left">审批组长</td>
                            <td style="width: 40%;border: 0">
                                <input sid="btnEdit1" style="width: 100%"
                                       class="mini-buttonedit"
                                       onbuttonclick="onStudentButtonEdit"
                                       allowInput="false"
                                       sname="sid" textName="sname"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>

        <tr>
            <td colspan="4" style="background-color: #ededed; text-align: right">
                <button>⛔️驳回</button> &nbsp;&nbsp;
                <button>👍通过</button>
            </td>
        </tr>


    </table>

</form>
<table>

</table>
</body>
</html>

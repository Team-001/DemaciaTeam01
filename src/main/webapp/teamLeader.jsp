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
    <script src="page/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="page/js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="page/js/jquery.cookie.js" type="text/javascript"></script>
    <style type="text/css">
        .table1 {
        ;
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
                <div id="panel1" class="mini-panel" title="⬇️项目基本信息" style="width:100%;height:130px;"
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
                <div id="panel2" class="mini-panel" title="⬇️与核电生产运营安全性、可靠性、经济的适应分析" style="width:100%;height:100px;"
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
                <div id="panel3" class="mini-panel" title="⬇️工程师评审意见" style="width:100%;height:125px;"
                     allowResize="true" collapseOnTitleClick="true">
                    <table class="table1">
                        <tr>
                            <td style="width:120px;height: 50px; background-color:#e9f6fe">评审结果</td>
                            <td colspan="3"><input style="width: 100%;height: 50px; overflow: scroll" class="mini-textarea"/></td>
                        </tr>
                        <tr>
                            <td style="background-color:#e9f6fe;text-align: right">立项报告书</td>
                            <td colspan="3" style="text-align: left"><a href="">立项报告书</a></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>

        <tr>
            <td class="trTitle" colspan="4">
                <div id="panel4" class="mini-panel" title="⬇️技术可行性分析意见" style="width:100%;height:260px;"
                     allowResize="true" collapseOnTitleClick="true">
                    <table class="table1">
                        <tr>
                            <td style="width:120px;height: 60px; background-color:#e9f6fe">对阳江公司科技发展规划的符合性审定</td>
                            <td colspan="3"><input style="width: 100%;height: 60px; overflow: scroll" class="mini-textarea"/></td>
                        </tr>
                        <tr>
                            <td style="width:120px;height: 60px; background-color:#e9f6fe">对项目成果的应用领域和价值审定</td>
                            <td colspan="3"><input style="width: 100%;height: 60px; overflow: scroll" class="mini-textarea"/></td>
                        </tr>
                        <tr>
                            <td style="width:120px;height: 60px; background-color:#e9f6fe">总体评价</td>
                            <td colspan="3"><input style="width: 100%;height: 60px; overflow: scroll" class="mini-textarea"/></td>
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

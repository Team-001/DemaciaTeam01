<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/19
  Time: 上午9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        table,td{
            border: 1px solid #d5e9fa;
            border-collapse: collapse;
            padding: 1px;
            width: 99%;
        }

        input{
            height: 20px;
        }
    </style>
</head>
<body>
<div id="layout1" class="mini-layout" style="width:100%;height:100%"  borderStyle="border:solid 1px #aaa;">
    <div region="north" showheader="false" height="50%" showSplitIcon="true" style="position: absolute">
        <div>
            <img src="imgs/head.png" style="width: 100%;height:100%;z-index: 0">

            <img src="imgs/person.png" style="position: absolute;top: 3px;left: 55%; z-index: 1">
            &nbsp;<span style="tab-size: 18px;position: absolute;top: 2px;left: 58%; z-index: 1">当前用户:${sessionScope.student.sname}</span>
            &nbsp;&nbsp;<span style="tab-size: 18px;position: absolute;top: 2px;left: 68%; z-index: 1">❓<a href="">系统帮助</a></span>
            &nbsp;&nbsp;<span style="tab-size: 18px;position: absolute;top: 2px;left: 78%; z-index: 1">⭕️<a href="">安全退出</a></span>
            &nbsp;&nbsp;<span style="tab-size: 18px;position: absolute;top: 2px;left: 88%; z-index: 1">♻️<a href="">主题切换</a></span>
            <button style="position: absolute; right: 1%; top: 65%; z-index: 1">个人工作台</button>
        </div>
    </div>
    <div title="center" region="center"  >
        <div class="mini-splitter" style="width:99%;height:100%">
            <%--左侧menu--%>
            <div size="15%" showCollapseButton="true">
                <div id="leftTree" class="mini-outlookmenu" url="text/outlookmenu.txt" onitemselect="onItemSelect"
                     idField="id" parentField="pid" textField="text" borderStyle="border:0">
                </div>
            </div>
            <%--右侧主题--%>
            <div showCollapseButton="true" title="center" region="center" bodyStyle="overflow:scroll;">
                <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

    mini.parse();
    var iframe = document.getElementById("mainframe");
    iframe.src = "RightBody_Personal.jsp";

    function onItemSelect(e) {
        var item = e.item;
        iframe.src = item.url;
    }
</script>
</body>
</html>

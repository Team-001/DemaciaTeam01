<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/28
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/demo.css">

    <script src="scripts/boot.js" type="text/javascript"></script>

</head>
<body>
<div sid="datagrid1" class="mini-datagrid" style="width:100%;height:250px;"
     url="../data/AjaxService.aspx?method=SearchEmployees" idField="sid" allowResize="true"
     sizeList="[20,30,50,100]" pageSize="20"
>
    <div property="columns">
        <div type="indexcolumn" ></div>
        <div field="loginname" width="120" headerAlign="center" allowSort="true">员工帐号</div>
        <div field="sname" width="120" headerAlign="center" allowSort="true">姓名</div>
        <div field="gender" width="100" renderer="onGenderRenderer" align="center" headerAlign="center">性别</div>
        <div field="salary" numberFormat="¥#,0.00" align="right" width="100" allowSort="true">薪资</div>
        <div field="age" width="100" allowSort="true" decimalPlaces="2" dataType="float">年龄</div>
        <div field="createtime" width="100" headerAlign="center" dateFormat="yyyy-MM-dd" allowSort="true">创建日期</div>
    </div>
</div>
<script>
    mini.parse()
</script>
</body>
</html>

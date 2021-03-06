<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 2018/2/3
  Time: 上午11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../scripts/boot.js" type="text/javascript"></script>

    <title>登录页面</title>

    <style type="text/css">
        #loginForm {
            position: absolute;
            width: 30%;
            height: 40%;
            z-index: 3;

            left: 65%;
            top: 30%;
        }
        td{
            text-align: center;
        }
        #loginTable{
            background-color: #ebf6f9;
            width: 100%;
            height: 100%;
        }
        #top{
            height: 10px;
        }
        #bg{
            background: linear-gradient(#c0e7ff, #cfe4ff, #86b0eb, #b2caff,#c0e7ff);

        }

        .errorText
        {
            color:red;
        }

    </style>

</head>
<body>

<div id="formbackground" style="position:absolute; width:100%; height:100%; z-index:-1">
    <img src="../../imgs/home.png" height="100%" width="100%"/>
</div>
<div id="loginForm">

    <%--修改提交地址--%>
    <form id="form1" action="/selectStaff" method="post">

        <table id="loginTable" >
            <tr id="top">
                <td><img src="../../imgs/logo.png" height="20px" style="border-top-left-radius: 20px"></td>
                <td id="bg" colspan="2"></td>
            </tr>

            <tr>
                <td>
                    <label for="loginTable">帐号：</label>
                </td>
                <td>
                    <input name="username" errorMode="none"
                           onvalidation="onUserNameValidation"
                           class="mini-textbox" required="true"
                           requiredErrorText="帐号不能为空"/>
                </td>
                <td id="username_error" class="errorText" style="font-size: 12px"></td>
            </tr>
            <tr>
                <td>
                    <label for="loginTable">密码：</label>
                </td>
                <td>
                    <input name="pwd"
                           errorMode="none"
                           onvalidation="onPwdValidation"
                           class="mini-password" required="true" vtype="minLength:3"
                           minLengthErrorText="密码不能少于3个字符"/>
                </td>
                <td id="pwd_error" class="errorText" style="font-size: 12px"></td>
            </tr>
            <tr style="text-align: center;font-size:15px">
                <td colspan="3"><input id="rememberPwd" name="rememberPwd" type="checkbox">记住密码</td>
            </tr>
            <tr>

                <td colspan="3" style="text-align: center;">
                    <input value="登录" type="submit"
                           onclick="submitForm()"
                           style="width: 200px;height: 35px;font-size: 20px;color: #77542F;
                 background-color:#ECF5DC "/>
                </td>

            </tr>

        </table>

    </form>
</div>

<script type="text/javascript">
    mini.parse();

    function submitForm() {
        var form = new mini.Form("#form1");
        form.validate();

        if (form.isValid() == false) return;

        //提交数据
        var data = form.getData();
        var json = mini.encode(data);
    }

    //////////////////////////////////////////
    function updateError(e) {
        var id = e.sender.sname + "_error";
        var el = document.getElementById(id);
        if (el) {
            el.innerHTML = e.errorText;
        }
    }
    function onUserNameValidation(e) {
        updateError(e);
    }
    function onPwdValidation(e) {
        updateError(e);
    }
</script>
</body>
</html>
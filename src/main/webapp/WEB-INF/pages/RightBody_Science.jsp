<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/18
  Time: 下午7:15
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
            border: 1px solid #C1DEE7;
            width: 100%;
            border-collapse: collapse;
            font-size: 12px;
        }
        #table2 {
            border: 1px solid #C1DEE7;
            width: 100%;
            border-collapse: collapse;
            font-size: 12px;
        }
        #table3 {
            border: 1px solid #C1DEE7;
            width: 100%;
            border-collapse: collapse;
            font-size: 12px;
        }

        td {
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
            border-collapse: collapse;
            padding: 3px;
            height: 20px;
            border: 1px solid #C1DEE7;
            font-size: 12px;
        }
    </style>
</head>
<body>

<form id="form" action="/submitProject" method="post">

<div id="tabs1" style="width: 100%;height: 100%;border: 1px solid gainsboro" class="mini-tabs" activeIndex="0"
     plain="false">
    <%--基本信息TAB--%>
    <div title="项目基本信息" >
        <table cellpadding="1" cellspacing="2" class="table1">
            <tr>
                <td class="trTitle" colspan="4">🚩当前位置: 科研项目申报 >> 基本信息</td>
            </tr>
            <tr>
                <td class="trTitle" colspan="4">
                    <div id="panel1" class="mini-panel" title="⬇️项目基本信息" style="width:100%;height:182px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">项目名称 <font color="red">※</font></td>
                                <td><input style="width: 100%" class="mini-textarea" type="text" name="projName"/></td>
                            </tr>
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">项目申报单位 <font color="red">※</font></td>
                                <td><input id="btnEdit1" style="width: 100%"
                                           class="mini-buttonedit"
                                           allowInput="true"
                                           onbuttonclick="onDeclaredButtonEdit"
                                           type="text"
                                           name="declared" />
                                </td>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">联合申报单位 <font color="red">※</font></td>
                                <td><input id="btnEdit2" style="width: 100%"
                                           class="mini-buttonedit"
                                           allowInput="true"
                                           onbuttonclick="onJointDeclareButtonEdit"
                                           type="text"
                                           name="jointDeclare"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:120px;height:50px;background-color:#e9f6fe;text-align: right">目的 <font color="red">※</font></td>
                                <td colspan="3"><input style="width: 100%" class="mini-textarea" type="text" name="purpose"/></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="4" style="width:100px">
                    <div id="panel2" class="mini-panel" title="⬇️与核电生产运营安全性、可靠性、经济的适应分析" style="width:100%;height:153px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="width:120px;height:30px;background-color:#e9f6fe;text-align: right">安全性</td>
                                <td><input style="width: 100%" class="mini-textarea" type="text" name="secure"/></td>
                                <td style="width:120px;height:30px;background-color:#e9f6fe;text-align: right">可靠性</td>
                                <td><input style="width: 100%" class="mini-textarea" type="text" name="reliability"/></td>
                            </tr>
                            <tr>
                                <td style="width:120px;height:30px;background-color:#e9f6fe;text-align: right">经济性</td>
                                <td><input style="width: 100%" class="mini-textarea" type="text" name="economy"/></td>
                                <td style="width:120px;height:30px;background-color:#e9f6fe;text-align: right">其他</td>
                                <td><input style="width: 100%" class="mini-textarea" type="text" name="other"/></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="4">
                    <div id="panel3" class="mini-panel" title="⬇️其他信息" style="width:100%;height:318px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">成果应用</td>
                                <td colspan="3"><input style="width: 100%" class="mini-textarea" type="text" name="achievement"/></td>
                            </tr>
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">实际用户</td>
                                <td colspan="3"><input style="width: 100%" class="mini-textarea" type="text" name="actual"/></td>
                            </tr>
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">潜在用户</td>
                                <td colspan="3"><input style="width: 100%" class="mini-textarea" type="text" name="potential"/></td>
                            </tr>
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">项目完成周期</td>
                                <td colspan="3"><input style="width: 100%" class="mini-textarea" type="text" name="execution"/></td>
                            </tr>
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">项目内容路径简介</td>
                                <td colspan="3"><input style="width: 100%" class="mini-textarea" type="text" name="content"/></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="4">
                    <div id="panel4" class="mini-panel" title="⬇️预算信息" style="width:100%;height:150px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">总预算 <font color="red">※</font></td>
                                <td><input style="width: 100%;" type="number" name="general" class="mini-textarea"/></td>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">公司经费</td>
                                <td><input style="width: 100%" type="text" name="company" class="mini-textarea"/></td>
                            </tr>
                            <tr>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">外部支持经费</td>
                                <td><input style="width: 100%" type="text" name="financial" class="mini-textarea"/></td>
                                <td style="width:120px;background-color:#e9f6fe;text-align: right">国家经费</td>
                                <td><input style="width: 100%" type="text" name="country" class="mini-textarea"/></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <%--其他信息TAB--%>
    <div title="项目其他信息">
        <table cellpadding="1" cellspacing="2" class="table1">
            <tr>
                <td class="trTitle" colspan="4">🚩当前位置: 科研项目申报 >> 其他信息</td>
            </tr>
            <tr>
                <td class="trTitle" colspan="2">
                    <div id="panel5" class="mini-panel" title="⬇️技术第一负责人信息" style="width:100%;height:100px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="width: 100px;background-color:#e9f6fe;text-align: right">姓名、专业经历和能力简述</td>
                                <td><input style="width: 100%;" type="text" name="resume" class="mini-textarea"/></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="2">
                    <div id="panel6" class="mini-panel" title="⬇️产品信息" style="width:100%;height:290px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="background-color:#e9f6fe;text-align: right">产品形式</td>
                                <td>
                                    <div>&nbsp;&nbsp;&nbsp;
                                        <input type="checkbox" name="products">专题报告
                                        <input type="checkbox" name="products">技术方案
                                        <input type="checkbox" name="products">技术标准
                                        <input type="checkbox" name="products">硬件产品
                                        <input type="checkbox" name="products">生产性文件
                                        <input type="checkbox" name="products">设计文件
                                        <input type="checkbox" name="products">计算机软件
                                        <input type="checkbox" onclick="energyTypeCheck(this)">其他
                                        <input style="display:none; position: absolute;right: 20%;top: 4px" type="text" id="Checkbox5"/>
                                    </div>
                                </td>


                            </tr>
                            <tr>
                                <td style="background-color:#e9f6fe;text-align: right">预计产权说明</td>
                                <td><input style="width: 100%" type="text" name="property" class="mini-textarea"/></td>
                            </tr>
                            <tr>
                                <td style="background-color:#e9f6fe;text-align: right">经济效益</td>
                                <td><input style="width: 100%" type="text" name="economic" class="mini-textarea"/></td>
                            </tr>
                            <tr>
                                <td style="background-color:#e9f6fe;text-align: right">固定资产</td>
                                <td><input style="width: 100%" type="text" name="fixed" class="mini-textarea"/></td>
                            </tr>
                            <tr>
                                <td style="background-color:#e9f6fe;text-align: right">验收标准</td>
                                <td><input style="width: 100%" type="text" name="acceptance" class="mini-textarea"/></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="2">
                    <div id="panel7" class="mini-panel" title="⬇️附件信息" style="width:100%;height:70px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="background-color:#e9f6fe;text-align: right">立项报告书 <font color="red">※</font></td>
                                <td id="upload" style="width:88%;">
                                    <div>
                                        <input class="mini-htmlfile" name="written" id="file1" style="width:93%;"/>
                                        <input style="float: right" type="button" value="上传" onclick="ajaxFileUpload()"/>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" colspan="2">
                    <div id="panel8" class="mini-panel" title="⬇️流程信息" style="width:100%;height:70px;"
                         allowResize="true" collapseOnTitleClick="true">
                        <table class="table1">
                            <tr>
                                <td style="width: 100px;background-color:#e9f6fe;text-align: right;font-size: 12px">审批(部门经理) <font color="red">※</font></td>
                                <td style="width: 88%">
                                    <input id="btnEdit3" style="width: 100%;"
                                           class="mini-buttonedit"
                                           onbuttonclick="onStudentButtonEdit"
                                           allowInput="true"
                                           name="approval" type="text"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="trTitle" style="width: 100%;text-align: center" colspan="4">
                    <input type="submit" value="提交">
                    <input type="reset" value="重置">
                </td>
            </tr>

        </table>
    </div>
</div>
</form>

<script>
    mini.parse();
    //审批(部门经理)弹出框的点击事件
    function onClazzButtonEdit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "page/staff_table.jsp",
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

    function energyTypeCheck (chk) {
        var table = document.getElementById('table3');
        var table1 = table.getElementById('table2');
        var Checkbox5 = table1.getElementById('Checkbox5');
        if (chk.checked) {
            Checkbox5.style.display = 'block';
        } else {
            Checkbox5.style.display = 'none';
        }
    }



    <%--function submitForm() {--%>
        <%--/**--%>
         <%--* 1.获得基本信息tab中的数据,cookies取--%>
         <%--* 2.获得当前其他信息tab中的数据,直接获取当前表单--%>
         <%--* 3.将数据传递给后台--%>
         <%--*/--%>
        <%--var data = getForm();--%>
        <%--$("#form").val(data);--%>
        <%----%>
        <%--$.ajaxFileUpload({--%>
            <%--url:"fileUploac.action",--%>
            <%--fileElementId:"${"upload"}",--%>
            <%--success:function (d) {--%>
                <%----%>
            <%--}--%>
            <%----%>
        <%--})--%>
    <%--}--%>

</script>
</body>
</html>

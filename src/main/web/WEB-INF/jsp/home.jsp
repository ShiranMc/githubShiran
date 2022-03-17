<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Student" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/10/4
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            padding:0;
            margin:0;
        }
        #div1{
            margin:0 auto;
            text-align: center;
        }
        a{
            text-decoration:none;
            color:black;
        }
        table{
            margin:0 auto;
        }
        td{
            width:50px;
            height:30px;
            text-align: center;
            line-height: 30px;
            border:1px solid black;
        }
        input{
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        let s=true;
        function dateUpdate(){
            let a=document.getElementById("dateUpdate");
            let b=document.getElementsByClassName("update");
            if(s){
                a.innerText="关闭旧数据编辑";
                for(let x=0;x<b.length;x++){
                    b[x].removeAttribute("readOnly");
                }
                s=false;
            }else{
                a.innerText="开启旧数据编辑";
                for(let x=0;x<b.length;x++){
                    b[x].setAttribute("readOnly","true");
                }
                s=true;
            }
        }
    </script>
</head>
<body>
<div id="div1">
    <table>
        <form action="${pageContext.request.contextPath}/insert" method="post">
            <tr>
                <td>姓名:<input type="text" name="name"/></td>
                <td>年龄:<input type="text" name="age"/></td>
                <td>性别:<input type="text" name="sex"/></td>
                <td colspan="2"><input type="submit" value="添加"/></td>
            </tr>
        </form>
        <tr>
            <td colspan="5"><button type="button" id="dateUpdate" onclick="dateUpdate()" style="width:100%;height:100%;font-size:20px">开启旧数据编辑</button></td>
        </tr>
        <%
            List<Student> studentList=(List<Student>)request.getAttribute("students");
            for(Student student:studentList){
                request.setAttribute("s",student.getId());
        %>
        <form action="${pageContext.request.contextPath}/update" method="post">
            <tr>
                <input value="<%=student.getId()%>" style="display: none" name="id"/>
                <td><input type="text" value="<%=student.getName()%>" name="name" readonly="true" class="update"/></td>
                <td><input type="text" value="<%=student.getAge()%>" name="age" readonly="true" class="update"/></td>
                <td><input type="text" value="<%=student.getSex()%>" name="sex" readonly="true" class="update"/></td>
                <td><input type="submit" value="修改"></td>
                <td><a href="${pageContext.request.contextPath}/delete/${s}"><button type="button">删除</button></a></td>
            </tr>
        </form>
        <%
            }
        %>
    </table>
</div>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: UserK
  Date: 2022-11-04
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String date = request.getParameter("date");
    String phone = request.getParameter("phone");
    String school = request.getParameter("school");
    String grade = request.getParameter("grade");
    String gender = request.getParameter("gender");
    String fruit1 = request.getParameter("fruit[0]");
    String fruit2 = request.getParameter("fruit[1]");
    String fruit3 = request.getParameter("fruit[2]");
    String favcolor = request.getParameter("favcolor");
    String etc = request.getParameter("etc");
    String major = request.getParameter("major");
    String fruit = "";

    if(fruit1==null && fruit2==null && fruit3==null){
        fruit = "i don't like fruit";
    }else{
        if(fruit1 != null) fruit += fruit1 +", ";
        if(fruit2 != null) fruit += fruit2 +", ";
        if(fruit3 != null) fruit += fruit3;
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%= school%> <%= grade%>학년 <%= major%> <br>
이름: <%= username%><br>
성별: <%= gender%><br>
생일: <%= date%><br>
전화번호: <%= phone%><br>
좋아하는 과일: <%= fruit%>
<%

%>
<br>

좋아하는 색: <%= favcolor%><br>
기타: <%= etc%><br>
</body>
</html>

<%@ page import="com.example.mvc2.model.MemberDAO" %>
<%@ page import="com.example.mvc2.model.MemberVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num = Integer.parseInt(request.getParameter("num"));
    MemberDAO dao = new MemberDAO();
    MemberVO vo = dao.memberContent(num);
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
<form action="memberUpdate.jsp" method="post">
    <input type="hidden" name="num" value="<%=vo.getNum()%>">
<table class="table table-bordered">
    <% if(vo!=null) { %>
    <tr>
        <td colspan="2"><%=vo.getName()%>회원의 상세보기</td>
    </tr>
    <tr>
        <td>번호</td>
        <td><%=vo.getNum()%></td>
    </tr>
    <tr>
        <td>아이디</td>
        <td><%=vo.getId()%></td>
    </tr>
    <tr>
        <td>비밀번호</td>
        <td><%=vo.getPassword()%></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><%=vo.getName()%></td>
    </tr>
    <tr>
        <td>나이</td>
        <td><input type="text" name="age" value="<%=vo.getAge()%>"></td>
    </tr>
    <tr>
        <td>이메일</td>
        <td><input type="text" name="email" value="<%=vo.getEmail()%>"></td>
    </tr>
    <tr>
        <td>전화번호</td>
        <td><input type="text" name="phone" value="<%=vo.getPhone()%>"></td>
    </tr>
    <% } else { %>
    <tr>
        <td>일치하는 회원이 없습니다.</td>
    </tr>
    <% } %>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="수정하기" class="btn btn-primary">
            <input type="reset" value="취소" class="btn btn-warning">
            <input type="button" value="리스트" class="btn btn-secondary" onclick="location.href='memberList.jsp'">
        </td>
    </tr>
</table>
</form>
</body>
</html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.example.student.dao.StudentDAO,com.example.student.bean.StudentVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>메뉴:</td><td>
        <form:select path="category">
            <form:option value="짜장면" label="짜장면" />
            <form:option value="짬뽕" label="짬뽕" />
            <form:option value="찹쌀탕수육" label="찹쌀탕수육" />
            <form:option value="돼지국밥" label="돼지국밥" />
            <form:option value="해물순두부찌개" label="해물순두부찌개" />
            <form:option value="부대찌개" label="부대찌개" />
            <form:option value="치즈부대찌개" label="치즈부대찌개" />
            <form:option value="간장불고기덮밥" label="간장불고기덮밥" />
        </form:select>
        </td></tr>
        <tr><td>Rating:</td><td><form:input path="rating"/></td></tr>
        <tr><td>Review:</td><td><form:textarea cols="50" rows="5" path="review"/></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form:form>

</body>
</html>
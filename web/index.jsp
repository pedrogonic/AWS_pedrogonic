<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="db.SQLUtils"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="lang" value="${not empty param.lang ? param.lang : not empty lang ? lang : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${lang}" />
<fmt:setBundle basename="lang.text" var="text" scope="session" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message bundle="${text}" key="page.title"/></title>
        
    </head>
    <body>
        <%@include file="/jspf/header.jspf"%>
        <h1>Test</h1>
        
      
        
        <a href="jsp/second.jsp">page 2</a>
        <%
            //List<String> list = SQLUtils.test2();
            List<String> list = new ArrayList<String>();
            for (String s : list) {%>
                <p><%=s%></p>
            <%}
        %>
        
        
        
    </body>
</html>

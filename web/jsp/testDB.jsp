<%@page import="db.SQLUtils"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
        <title><fmt:message bundle="${text}" key="page.second"/></title>
    </head>
    <body>        
        <%@include file="/jspf/header.jspf"%>
        <section id="content">
            <section id="main">
        
                <%
                    List<String> list = SQLUtils.test2();
                    for (String s : list) {%>
                        <p><%=s%></p>
                    <%}
                %>
        
            </section>
        </section>
        <%@include file="/jspf/footer.jspf"%>
    </body>
</html>

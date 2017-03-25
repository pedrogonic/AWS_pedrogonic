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
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/img/earth.ico" />
    </head>
    <body>
        <%@include file="/jspf/header.jspf"%>
        <section class="content">
            
            <section class="sidebar">
                
                <img src="<%=request.getContextPath()%>/img/Formal_Pequena.jpg" alt=""/>
                
                <article class="nameHolder">
                    <h1 class="name">Pedro Goñi Coelho</h1>
                    <p class="nick">(pedrogonic)</p>
                </article>

                <article class="more">
                    
                    <h1 class="name"><fmt:message bundle="${text}" key="about.more"/></h1>
                    
                    <ul>

                        <li class="">
                            <img src="<%=request.getContextPath()%>/img/email.png" alt=""/>
                            <a href="mailto:pedrogonic@gmail.com?Subject=pedrogonic.com" target="_top">
                                pedrogonic@gmail.com
                            </a>
                        </li>
                        
                        <li class="">
                            <img src="<%=request.getContextPath()%>/img/linkedin.gif" alt=""/>
                            <a href="https://www.linkedin.com/in/pedro-coelho-8379514b" target="_blank">
                                Linkedin
                            </a>
                        </li>

                        <li class="">
                            <img src="<%=request.getContextPath()%>/img/github.png" alt=""/>
                            <a href="https://github.com/pedrogonic" target="_blank">
                                Github
                            </a>
                        </li>
                        
                        <li class="">
                            <img src="<%=request.getContextPath()%>/img/facebook.png" alt=""/>
                            <a href="https://www.facebook.com/pedrogonic" target="_blank">
                                Facebook
                            </a>
                        </li>
                        
                        <li class="">
                            <img src="<%=request.getContextPath()%>/img/steam.png" alt=""/>
                            <a href="http://steamcommunity.com/id/pedrogonic/" target="_blank">
                                Steam
                            </a>
                        </li>
                        
                        <li class="">
                            <img src="<%=request.getContextPath()%>/img/instagram.png" alt=""/>
                            <a href="https://www.instagram.com/pedrogonic/" target="_blank">
                                Instagram
                            </a>
                        </li>
                    </ul>
                </article>

            </section>
            
            <section class="main">
                <h1><fmt:message bundle="${text}" key="about.me"/></h1>
                
                <h4 class="nick"><fmt:message bundle="${text}" key="about.construction"/></h4>

                <article id="ipsum">
                    <fmt:message bundle="${text}" key="ipsum"/>
                </article>

            </section>
                
        </section>
        <%@include file="/jspf/footer.jspf"%>
    </body>
</html>

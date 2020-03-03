<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: groen
  Date: 3/3/2020
  Time: 8:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Huskeliste</title>
</head>
<body>

${sessionScope.besked}

<h1>Du er nu klar til at tilføje emner til din indkøbskurv</h1>
<form action="/AddItemServlet"method="post">
    <label for="fname">Skriv vare:</label><br>
    <input type="text" id="fname" name="vareNavn"><br>
    <input type="submit" value="Tilføj">
</form>


<br>
<br>
<br>

${requestScope.besked}

<br>
<br>
<c:forEach var="element" items="${sessionScope.basket}">

    ${element}
    <br>


</c:forEach>
<br>
<br>

¨¨<form action="/LogOutServlet"method="post">
   <%--  <label for="fname">Skriv vare:</label><br>
     <input type="text" id="fname" name="vareNavn"><br> --%>

    <input type="submit" value="logout">
</form>

</body>
</html>

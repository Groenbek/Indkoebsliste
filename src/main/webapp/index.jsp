<%--
  Created by IntelliJ IDEA.
  User: groen
  Date: 3/2/2020
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>webshop</title>
</head>
<body>

<h1> Velkommen til din webshop! </h1>

<br>
<br>
<br>
${sessionScope.besked}

${requestScope.besked}
<br>
<br>


<form action="LogInServlet"method="post">
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">Kodeord:</label><br>
    <input type="text" id="lname" name="kodeord"><br><br>
    <input type="submit" value="login">
</form>


</body>
</html>

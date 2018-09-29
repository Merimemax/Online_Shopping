<%@ page import="Domain.Product" %><%--
  Created by IntelliJ IDEA.
  User: Tekie
  Date: 9/20/2018
  Time: 11:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%String item[]=(request.getParameter("ids")).split(",");%>
<%request.getSession().setAttribute("items",item);%>

<table>
    <tr><th>Product Name</th><th>Price</th></tr>
    <%
        String str="";
        for (int i = 0; i < item.length; i++) {
             str=str +" <tr><td>"+ ((Product)request.getSession().getAttribute(item[i])).getPname()+"</td><td>"+
                     ((Product)request.getSession().getAttribute(item[i])).getPrice()+"</td></tr>";

        }
        out.print(str);

    %>



</table>
<form action="/login" method="get">
    <input type="submit" value="CheckOut">
</form>

</body>
</html>

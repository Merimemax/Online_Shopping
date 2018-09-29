<%@ page import="Domain.Product" %><%--
  Created by IntelliJ IDEA.
  User: Tekie
  Date: 9/21/2018
  Time: 12:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<h1> Thank you For your Ordrer ! <%=(String) request.getSession().getAttribute("username") %> </h1>
<%String item[]=(String[]) request.getSession().getAttribute("items");%>
<table>
    <tr><th>Product Name</th><th>Price</th></tr>
    <%
        String str="";
        int total=0;
        for (int i = 0; i < item.length; i++) {
            str=str +" <tr><td>"+ ((Product)request.getSession().getAttribute(item[i])).getPname()+"</td><td>"+
                    ((Product)request.getSession().getAttribute(item[i])).getPrice()+"</td></tr>";
            total+=((Product)request.getSession().getAttribute(item[i])).getPrice();

        }
        out.print(str);

    %>

    <tr><td>Total</td><td><%=total%></td></tr>

</table>
<form action="/login" method="get">
    <input type="submit" value="CheckOut">
</form>

</body>
</html>

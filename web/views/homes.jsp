<%@ page import="Domain.Product" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Ella Shop</title>

  <link href="../resources/css/styles.css" rel="stylesheet" type="text/css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
  <script src="../resources/js/script.js"></script>

</head>
<body>

<div id="container">
  <% String path= ((Product)request.getSession().getAttribute("p1")).getImg(); %>
  <div id="cart">
    <img src="/resources/images/cart.png" id="imgcart">
    <form action="/productlist">
      <input id="itemcart" type="submit" value="0 items"/>
      <input id="hid" name="ids" type="hidden">
    </form>

  </div>
  <h1>Best Deals of the Day</h1>
  <div class="item">
    <img src="<%= ((Product)request.getSession().getAttribute("p1")).getImg() %>">
    <p class="refid"><%=((Product)request.getSession().getAttribute("p1")).getPid()%></p>
    <p><%=((Product)request.getSession().getAttribute("p1")).getPname()%></p>
    <button class="btn">Add To Cart</button>
  </div>
  <div class="item">
    <img src="<%= ((Product)request.getSession().getAttribute("p2")).getImg() %>">
    <p class="refid"><%=((Product)request.getSession().getAttribute("p2")).getPid()%></p>
    <p><%=((Product)request.getSession().getAttribute("p2")).getPname()%></p>
    <button class="btn">Add To Cart</button>
  </div>
</div>
</body>
</html>
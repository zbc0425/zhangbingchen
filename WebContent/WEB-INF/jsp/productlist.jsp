<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
   <h2><strong>查看库存</</strong></h2>
   <form action="/product" method="get">
   <select name="productName">
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <option value="0">请选择</option>
        <c:forEach items="${productList}" var="p">
        <option value="${p.id }">${p.productName }</option>
        </c:forEach>
   </select>
   <input type="submit" value="查询">
   
        该商品的库存量是：${productList.quantity}
   </form>
</body>
</html>
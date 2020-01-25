<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询商品列表</title>
<script type="text/javascript">
function deleteItems() {
	// 提交form
	document.itemsForm.action="${pageContext.request.contextPath }/items/deleteItems.action";
	document.itemsForm.submit();
	
}
function queryItems() {
	// 提交form
	document.itemsForm.action="${pageContext.request.contextPath }/items/queryItems.action";
	document.itemsForm.submit();
	
}
</script>
  </head>
  
  <body>
	<form name="itemsForm" action="${pageContext.request.contextPath }/items/queryItems.action" method="post">
<%-- 查询条件：
<table width="100%" border=1>
<tr>
<td>
商品名称:<input name="itemsCustom.name" />
商品类型:
    <select name="itemtype">
        <c:forEach items="${itemtypes}" var="itemtype">
            <option value="${itemtype.key }">${itemtype.value }</option>
        </c:forEach>
    </select>
</td>
<td><input type="button" value="查询" onclick="queryItems()"/>
<input type="button" value="批量删除" onclick="deleteItems()"/>
</td>
</tr>
</table> --%>
用户列表：
<table width="100%" border=1>
<tr>
	<!-- <td>面对疾风吧</td> -->
	<td>姓名</td>
	<td>性别</td>
	<td>年龄</td>
	<td>身份证</td>
	<td>家庭住址</td>
</tr>
<c:forEach items="${usersList }" var="user">
<tr>
	<td>${user.name }></td>
	<td>${user.sex }</td>
	<td>${user.age }</td>
	<td>${user.card }</td>
	<td>${user.addr }</td>
	
	<td><a href="<c:url value='/editUser.action?id=${user.id }'/>">修改</a></td>

</tr>
</c:forEach>

</table>
</form>

  </body>
</html>

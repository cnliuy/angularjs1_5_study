<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

  <head>
    <title>Angular 1.5 QuickStart 0</title>
    <meta charset="utf-8">
  </head>


  <body ng-app>
    <script src="${ctx}/js/angular1.5.0/angular.min.js"></script>


    {{100+1}} <br>

    <!--  下面两行，会随输入同样变化
          数据是双向绑定的

    -->

    <input type="text" ng-model="name"   >{{ name }}

    <input type="text" ng-model="name"   >{{ name }}<br>

  </body>

</html>

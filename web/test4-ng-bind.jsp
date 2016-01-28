<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

  <head>
    <title>Angular 1.5 QuickStart</title>
    <meta charset="utf-8">
  </head>


  <body ng-app="controllerExample"> <!-- 1. controllerExample-->
    <script src="${ctx}/js/angular1.5.0/angular.js"></script>
    <script src="${ctx}/test4-ng-bind.js"></script><!-- 2. 引入数据源-->

    <div ng-controller="SettingsController2"><!-- 3. Controller层-->

      <input type="text" ng-model="name" ><br> <!-- 4. -->

      <input type="text" ng-model="age" ><br>

      <!--
      {{ name }}  <br>
      {{ age }}
      -->

      <div ng-bind="name"></div> <!-- 5. -->
      <div ng-bind="age"></div>
    </div>

    <script>
      alert("3");
    </script>

  </body>

</html>

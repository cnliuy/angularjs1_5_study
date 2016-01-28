<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

  <head>
    <title>Angular 1.5 QuickStart 3</title>
    <meta charset="utf-8">
  </head>


  <body ng-app="controllerExample">

    <script src="${ctx}/js/angular1.5.0/angular.js"></script>
    <script src="${ctx}/test3-ng-controller.js"></script>

      <div ng-controller="SettingsController2">
        <input type="text" ng-model="name" ><br>
         {{name}}  <br>
        <input type="text" ng-model="age1" ><br>
        {{age1}}  <br>
      </div>



  </body>

</html>

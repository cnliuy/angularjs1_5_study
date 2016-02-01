<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html ng-app="helloController">

  <head>
    <title>AngularJS + Json Demo 2</title>
    <meta charset="utf-8">
    <!--
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
    <script src="${ctx}/js/angularjs1.0.8/angular.min.js"></script>
    <script src="${ctx}/js/angular1.5.0/angular.min.js"></script>
    -->
    <script src="${ctx}/js/angular1.5.0/angular.min.js"></script>
    <script src="${ctx}/Json_Angularjs_1_5/hello.js"></script>

  </head>


  <body>
    angularjs1.5.0: <br>
    <div ng-controller="hello">
      <p>The ID is {{greeting.id}}</p>
      <p>The content is {{greeting.content}}</p>
    </div>
    <br>

    0 来源：
    <a href="https://spring.io/guides/gs/consuming-rest-angularjs/" target="_blank">
    https://spring.io/guides/gs/consuming-rest-angularjs/
    </a>

  </body>

</html>




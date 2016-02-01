<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html ng-app>

  <head>
    <title>Spring MVC + AngularJS Demo</title>
    <meta charset="utf-8">
    <!--
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
    -->
    <script src="${ctx}/js/angular1.5.0/angular.min.js"></script>
    <script>
      function Hello($scope, $http) {
        //$http.get('http://localhost:8080/SpringExamples/springcontent.json').
        $http.get('${ctx}/Spring_AngularJS_Integration/springcontent.json').
                success(function(data) {
                  $scope.user = data;
                });
      }
    </script>

  </head>


  <body>

    <div ng-controller="Hello">
      <h2>Spring MVC + AngularJS Demo</h2>
      <p>EMail Id : {{user.emailId}}</p>
      <p>User Name : {{user.userName}}</p>
    </div>
    <br>
    <a href="http://www.javabeat.net/spring-mvc-angularjs-integration/?utm_source=tuicool&utm_medium=referral" target="_blank">
    来源： http://www.javabeat.net/spring-mvc-angularjs-integration/?utm_source=tuicool&utm_medium=referral
    </a>
  </body>

</html>




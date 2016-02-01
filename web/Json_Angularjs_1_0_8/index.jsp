<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html ng-app>

  <head>
    <title>AngularJS + Json Demo</title>
    <meta charset="utf-8">
    <!--
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>

    <script src="${ctx}/js/angular1.5.0/angular.min.js"></script>
    -->
    <script src="${ctx}/js/angularjs1.0.8/angular.min.js"></script>
    <script src="${ctx}/Json_Angularjs_1_0_8/hello.js"></script>

  </head>


  <body>
    旧版本 angularjs1.0.8: <br>
    <div ng-controller="Hello">
      <p>The ID is {{greeting.id}}</p>
      <p>The content is {{greeting.content}}</p>
    </div>
    <br>
    1 来源：
    <a href="https://spring.io/guides/gs/consuming-rest-angularjs/" target="_blank">
    https://spring.io/guides/gs/consuming-rest-angularjs/
    </a>
  </body>

</html>




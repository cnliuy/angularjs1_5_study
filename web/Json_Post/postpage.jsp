<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html data-ng-app="formSubmit">
<head>
  <meta charset="utf-8">
  <title>Angular 1.5 post 数据 -- AngularJS Post Form Spring MVC example </title>
  <script src="${ctx}/js/angular1.5.0/angular.min.js"></script>

  <script type="text/javascript">
    var app = angular.module('formSubmit', []);

    app.controller('FormSubmitController',[ '$scope', '$http', function($scope, $http) {

      $scope.list = [];
      $scope.headerText = 'Angular 1.5 post 数据 post Servlet 示例 ;  ' +
      ' AngularJS Post Form Spring MVC example: Submit below form';
      $scope.submit = function() {

        var formData = {
          "name" : $scope.name,
          "location" : $scope.location,
          "phone" : $scope.phone
        };

        //alert( "1--" + JSON.stringify({formData: formData}));




        //---------- mark 1 ok start ------------
        //var response = $http.post('${ctx}/postform', {msg:'hello word!'}).
        //        success(function(data, status, headers, config) {
        //          // this callback will be called asynchronously
        //          // when the response is available
        //        }).
        //        error(function(data, status, headers, config) {
        //          // called asynchronously if an error occurs
        //          // or server returns response with an error status.
        //        });
        //---------- mark 1 ok end ---------------

        //---------- mark 2 ok start ------------
        var response = $http.post('${ctx}/postform', formData);
        response.success(function(data, status, headers, config) {
          //data = {"name":"5","location":"55","phone":"5"};
          $scope.list.push(data);
          //alert( "--" + JSON.stringify({data: data}));
        });
        response.error(function(data, status, headers, config) {
          alert( "Exception details: " + JSON.stringify({data: data}));
        });
        //---------- mark 2 ok end --------------

        //Empty list data after process
        $scope.list = [];

      };
    }]);
  </script>
</head>
<body>

<br>
说明：   本页面post后对应的 Java类( Servlet )是 src下的 servlet.postform.
<br>

<form data-ng-submit="submit()" data-ng-controller="FormSubmitController">
  <h3>{{headerText}}</h3>
  <p>Name: <input type="text" data-ng-model="name"></p>
  <p>Location: <input type="text" data-ng-model="location"></p>
  <p>Phone: <input type="text" data-ng-model="phone"></p>
  <input type="submit" id="submit" value="Submit" /><br>

  <h4>You submitted below data through post:</h4>
  <pre>Form data ={{list}}</pre>
</form>


参考示例 含 代码:

<a href="http://javahonk.com/angularjs-form-post-spring-mvc-json/" target="_blank" >
  http://javahonk.com/angularjs-form-post-spring-mvc-json/
</a>
<br>
AngularJS Form Post Spring MVC JSON
<br>


</body>
</html>
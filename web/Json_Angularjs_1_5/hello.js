//--- 写法1
//angular.module('helloController', []).controller('hello', function($scope, $http) {
//    $http.get('http://localhost:8080/Json_Angularjs_1_5/greeting.json').success(function(data) {
//        $scope.greeting = data;
//    })
//});

//--- 写法2
angular.module('helloController', []).controller('hello', ['$scope','$http', Hello123]);

function Hello123($scope, $http) {
    //-----ok 1 -----
    $http.get("http://localhost:8080/Json_Angularjs_1_5/greeting.json").success(function(data , status, headers, config) {
        $scope.greeting = data;
    });

    //-----ok 2 -----
    //$http.get('http://localhost:8080/Json_Angularjs_1_5/greeting.json').success(function(data) {
    //    $scope.greeting = data;
    //}).error(function(data) {
    //})
}





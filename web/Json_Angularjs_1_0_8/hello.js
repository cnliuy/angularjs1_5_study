//angular.module('Hello', [])
//    .controller('Hello', ['$scope', Hello]);


function Hello($scope, $http) {
    //$http.get('http://rest-service.guides.spring.io/greeting').
    $http.get('http://localhost:8080/Json_Angularjs_1_0_8/greeting.json').
        success(function(data) {
            $scope.greeting = data;
        });
}
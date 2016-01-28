//js 与 test3-ng-controller.js 一样

angular.module('controllerExample', [])
    .controller('SettingsController2', ['$scope', SettingsController2])
    .controller('SettingsController201', ['$scope', SettingsController201]);



function SettingsController2($scope) {
    //scope 作用域
    $scope.name = "John Smith  ";
    $scope.age = "21";
}

function SettingsController201($scope){
    //scope 作用域  子作用域
    $scope.name = "John";

}
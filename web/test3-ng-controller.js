angular.module('controllerExample', [])
    .controller('SettingsController2', ['$scope', SettingsController2]);

function SettingsController2($scope) {
    //scope 作用域
    $scope.name = "John Smith  ";
    $scope.age1 = "21";
}
angular.module('stuff.num')
  .controller('IntegerCtrl', [
    '$scope'
    '$http'
    'Integer'
    ($scope, $http, Integer) ->
      $scope.init = ->
        $scope.stuff = Integer.get()
      $scope.refresh = $scope.init
  ])

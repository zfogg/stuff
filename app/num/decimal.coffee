angular.module('stuff.num')
  .controller('DecimalCtrl', [
    '$scope'
    '$http'
    'Decimal'
    ($scope, $http, Decimal) ->
      $scope.init = ->
        $scope.stuff = Decimal.get()
      $scope.refresh = $scope.init
  ])

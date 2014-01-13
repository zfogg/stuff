angular.module('stuff.index', [
])

  .config([
    '$routeProvider'
    ($routeProvider) ->
      $routeProvider
        .when '/',
          templateUrl: 'index/index'
          controller: 'IndexCtrl'
  ])

  .controller('IndexCtrl', [
    '$scope'
    '$http'
    ($scope, $http) ->
      $http.get('/api/stuff')
        .success (data) ->
          null
        .error (data) ->
  ])

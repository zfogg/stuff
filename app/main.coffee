angular.module('stuff', [
  'ngCookies'
  'ngResource'
  'ngSanitize'
  'ngRoute'

  'stuff.index'
  'stuff.num'
])

  .config([
    '$routeProvider', '$locationProvider',
    ($routeProvider, $locationProvider) ->
      $routeProvider
        .otherwise
          redirectTo: '/'
  ])

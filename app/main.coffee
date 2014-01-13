angular.module('stuff', [
  'ngCookies'
  'ngResource'
  'ngSanitize'
  'ngRoute'

  'stuff.index'
])

  .config([
    '$routeProvider'
    '$locationProvider'
    ($routeProvider, $locationProvider) ->
      $routeProvider
        .otherwise
          redirectTo: '/'
      $locationProvider.html5Mode(true)
  ])

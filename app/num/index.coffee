angular.module('stuff.num', [
])

  .config(['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/num',
        templateUrl: 'num/index'
        controller: 'IndexCtrl'
      .when '/num/integer',
        templateUrl: 'num/standard'
        controller: 'IntegerCtrl'
      .when '/num/decimal',
        templateUrl: 'num/standard'
        controller: 'DecimalCtrl'
  ])

  .factory('Integer', ['$resource', ($resource) ->
    $resource '/api/num/integer', null
  ])

  .factory('Decimal', ['$resource', ($resource) ->
    $resource '/api/num/decimal', null
  ])

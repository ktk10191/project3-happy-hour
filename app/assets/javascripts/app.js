angular.module('happyHrApp', ['ui.router', 'templates', 'ui.bootstrap'])

.config(['$stateProvider', '$urlRouterProvider',function($stateProvider, $urlRouterProvider) {
  
  $urlRouterProvider.otherwise('/');

  $stateProvider

    .state('kyle', {
      url:'/kyle',
      templateUrl: 'kyle.html'
    })
    .state('ryan', {
      url: '/ryan',
      templateUrl: 'ryan.html'
    })
    .state('cosimo', {
      url: '/cosimo',
      templateUrl: 'cosimo.html'
    })
    .state('sophana', {
      url: '/sophana',
      templateUrl: 'sophana.html'
    })
    .state('map', {
      url: '/map',
      templateUrl: 'map.html'
    })

}])





var app = angular.module('happyHrApp', ['ui.router']);

app.config(function($stateprovider, $urlRouterProvider){
	$urlRouterProvider.otherwise('/');

	$stateprovider
		.state('home', {
			url: '/home',
			template: '<h1>HOME PAGE for {{user}}</h1>'
			// Probably want to add something that makes the current_user dynamic. Most of this I'm sure will change from what is listed here
			// but this is a start to getting something for session things
			controller: function($scope){$scope.user = "current_user"}
		})
});
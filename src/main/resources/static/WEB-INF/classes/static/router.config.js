var app=angular.module("GamersDeck");

app.config(function($stateProvider,$urlRouterProvider,$httpProvider){
	
	$stateProvider.state('home',{
		url:'/home',
		templateUrl:'views/GameListView.html'
	});

	$stateProvider.state('login',{
		url:'/login',
		templateUrl:'views/LoginView.html'
	});
	$stateProvider.state('register',{
		url:'/register',
		templateUrl:'views/RegisterView.html'
	});
	$httpProvider.interceptors.push('authInterceptor');
	$urlRouterProvider.otherwise('/home');
});
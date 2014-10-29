myApp = angular.module 'myApp', ['ui.router','templates']

myApp.config ($stateProvider, $urlRouterProvider) ->
	$urlRouterProvider.otherwise '/'

	$stateProvider.state 'home',
		url: '/',
		templateUrl: 'home.html'
  $stateProvider.state 'state1',
		url: '/state1',
		templateUrl: 'state1.html'
  $stateProvider.state 'state2',
    url: '/state2'
    templateUrl: 'state2.html'
  $stateProvider.state 'main_nav',
    url: ''
    templateUrl: 'mainNav.html'
	return

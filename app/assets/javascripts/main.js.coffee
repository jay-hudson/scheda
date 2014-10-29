myApp = angular.module 'myApp', ['ui.router']

myApp.config ($stateProvider, $urlRouterProvider) ->
	$urlRouterProvider.otherwise '/'

	$stateProvider.state 'home',
		url: '/',
		templateUrl: 'home.html'
  $stateProvider.state 'state1',
		url: '/state1',
		template: templates.state1
  $stateProvider.state 'state2',
    url: '/state2'
    template: templates.state2 
  $stateProvider.state 'main_nav',
    url: ''
    template: templates.mainNav
	return

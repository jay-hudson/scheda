// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

alert('here');
angular
	.module('scheda', [
		'ngAnimate',
		'ui.router'
	])
	.config(function ($stateProvider, $urlRouterProvider, $locationProvider) {

		/**
		 * Route and States
		 */
		$stateProvider
			.state('', {
				template: '<div><p>We are at the base</p></div>',
			});

		// default fallback route
		$urlRouterProvider.otherwise('/');



	});

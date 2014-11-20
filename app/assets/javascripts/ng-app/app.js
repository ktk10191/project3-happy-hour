var happyHr = angular.module('happyHrApp', ['ui.router', 'templates', 'ui.bootstrap'])

  .config(function($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise('/');

    $stateProvider
    .state('home', {
      url: '/home',
  				// The templateUrl already knows to look in the templates folder for
  				// whichever file you specify. Also the name of the file does not need to 
  				// have the '.html.erb' extension on it since the gem knows to look for that anyways. 
  				templateUrl: 'home.html' 
  			})
    .state('login', {
      url: '/login',
      templateUrl: 'login.html'
    })
    .state('signup', {
      url: '/signup',
      templateUrl: 'signup.html'
    })

  })
happyHr.controller('ModalDemoCtrl', function ($scope, $modal, $log) {
    $scope.login = function (size) {
      var modalInstance = $modal.open({
        templateUrl: 'logInModal.html',
        controller: 'ModalInstanceCtrl',
        size: size,
      });

      modalInstance.result.then(function (selectedItem) {
        $log.info('Modal dismissed at: ' + new Date());
      });
    };

    $scope.signUp = function (size) {
      var modalInstance = $modal.open({
        templateUrl: 'signUpModal.html',
        controller: 'ModalInstanceCtrl',
        size: size,
      });

      modalInstance.result.then(function (selectedItem) {
        $log.info('Modal dismissed at: ' + new Date());
      });
    };
  });

happyHr.controller('ModalInstanceCtrl', function ($scope, $modalInstance) {
  // $scope.items = ['item1', 'item2', 'item3'];
  $scope.newUserName = "";
  $scope.newUserLastName = "";
  $scope.newUserEmail = "";
  $scope.newUserPassword = "";
  $scope.userEmail = "";
  $scope.userPassword = "";

  // Please note that $modalInstance represents a modal window (instance) dependency.
  // It is not the same as the $modal service used above.

  // Below is going to submit the new user information currently it only closes the modal
    $scope.submit = function () {
      $modalInstance.close();
    };
    
    // Below is going to  fire a login function which will eventually lead into creating a new session
    $scope.logIn = function () {
      $modalInstance.close();
    };
    
    // Cancel the current modal that you have open
    $scope.cancel = function () {
      $modalInstance.dismiss('cancel');
    };
  });
angular.module('happyHrApp')

.controller('ModalInstanceCtrl', function ($scope, $modalInstance) {
    // $scope.items = ['item1', 'item2', 'item3'];
    $scope.newUserName = "";
    $scope.newUserLastName = "";
    $scope.newUserEmail = "";
    $scope.newUserPassword = "";
    $scope.userEmail = "";
    $scope.userPassword = "";
    $scope.newbusinessName = "";
    $scope.newBusinessAddress = "";
    $scope.newBusinessWebsite = "";
    $scope.newBusinessPhoneNumber = "";
    $scope.newBusinessSetting = "";
    $scope.priceRange = "";

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
  })
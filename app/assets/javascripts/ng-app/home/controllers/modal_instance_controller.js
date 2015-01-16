angular.module('happyHrApp')

.controller('modalInstanceCtrl', ['$scope', '$modalInstance', 'api', function ($scope, $modalInstance, api) {
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
      
      $scope.addToBusinessApi = function() {
        api.createBusiness($scope.bName, $scope.address, $scope.city, $scope.zipcode, $scope.state, $scope.phone, $scope.website, $scope.rating, $scope.happyHourTime);
        $modalInstance.dismiss('cancel');
      };

      api.getBusinesses()
        .then(function (data){
          console.log(data)
          $scope.businesses = data.data
        });
      // Cancel the current modal that you have open
      $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
      };
  }]);





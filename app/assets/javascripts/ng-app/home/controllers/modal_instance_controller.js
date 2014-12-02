angular.module('happyHrApp')

.controller('modalInstanceCtrl', function ($scope, $modalInstance, api) {
     $scope.test = "TEST"
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
         api.createBusiness($scope.businessName, $scope.businessAddr, $scope.businessPriceRange, $scope.businessWebsite, $scope.businessRating);
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
   })





angular.module('happyHrApp')

.controller('businessFormController', function($scope, api) {
  $scope.addToBusinessApi = function(data) {
    console.log("Test");
    console.log(data)
    api.createBusiness($scope.businessName, $scope.businessAddr, $scope.businessPriceRange, $scope.businessWebsite, $scope.businessRating);

    api.getBusinesses()
      .then(function (data){
        console.log(data)
        $scope.businesses = data.data
      });
  };
});
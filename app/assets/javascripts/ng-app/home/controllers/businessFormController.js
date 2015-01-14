angular.module('happyHrApp')

.controller('businessFormController', function($scope, api) {
  $scope.addToBusinessApi = function(data) {
    console.log("add to business");
    console.log(data)
    api.createBusiness($scope.bName, $scope.addr, $scope.street, $scope.city, $scope.zipcode, $scope.state, $scope.phone, $scope.website, $scope.rating, $scope.happyHourTime);

    api.getBusinesses()
      .then(function (data){
        // console.log(data)
        $scope.businesses = data.data
      });
  };
});
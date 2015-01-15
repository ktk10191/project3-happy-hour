angular.module('happyHrApp')

.controller('businessFormController', ['$scope', 'api', function($scope, api) {
  $scope.addToBusinessApi = function(data) {
    console.log(data)
    api.createBusiness($scope.bName, $scope.address, $scope.city, $scope.zipcode, $scope.state, $scope.phone, $scope.website, $scope.rating, $scope.happyHourTime);

    api.getBusinesses()
      .then(function (data){
        // console.log(data)
        $scope.businesses = data.data
      });
  };
}]);
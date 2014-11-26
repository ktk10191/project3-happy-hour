angular.module('happyHrApp')

  .controller('mapController', function($scope, api) {
    $scope.mapMarkers = api.getBusinesses().then(function (data){
         console.log(data)
         $scope.businesses = data.data
       });
  })
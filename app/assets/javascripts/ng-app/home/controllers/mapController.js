angular.module('happyHrApp')

  .controller('mapController', function($scope, api, $http) {
    // Starting with empty array to push data into
    $scope.businesses = [];
    // Getting business data from the api and pushing it into the businesses array
    $scope.addresses = function() {
      api.getBusinesses().then(function (data){
        // Specifically pushing the json data into the array
        $scope.businesses.push(data.data);
        // Making sure everything works by logging the newly populated array
        // console.log($scope.businesses);

        for(var i = 0; i < $scope.businesses[0].length; i++) {
          $scope.fullAddress = $scope.businesses[0][i].street_no + ' ' + $scope.businesses[0][i].street_name + ', ' + $scope.businesses[0][i].city + ', ' + $scope.businesses[0][i].zipcode; 
          // need a closure here to enable us to access the for loop index through j in the $http get
          (function(j) {
            $http.get('https://maps.googleapis.com/maps/api/geocode/json?address=' +$scope.fullAddress)
              .then(function(data) {
                var latLng = data.data.results[0].geometry.location;
                $scope.businesses[0][j].latLng = latLng;
                console.log($scope.businesses[0][j]);
              })
            }(i));
        };
      });
    };
  });

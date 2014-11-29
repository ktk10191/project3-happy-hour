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
          (function(counter) {
            $http.get('https://maps.googleapis.com/maps/api/geocode/json?address=' +$scope.fullAddress)
              .then(function(data) {
                var p = data.data.results[0].geometry.location;
                var lat = p.lat;
                var lng = p.lng;
                $scope.businesses[0][counter].lat = lat;
                $scope.businesses[0][counter].lng = lng;
                console.log($scope.businesses[0][counter]);
              })
            }(i));
        }
      })
    }
  });

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
        console.log($scope.businesses);

        for(var i = 0; i < $scope.businesses[0].length; i++) {
          // console.log($scope.businesses[i].street_name);
          // console.log($scope.businesses[i].city);
          // console.log($scope.businesses[i].zipcode);
          $scope.fullAddress = $scope.businesses[0][i].street_no + ' ' + $scope.businesses[0][i].street_name + ', ' + $scope.businesses[0][i].city + ', ' + $scope.businesses[0][i].zipcode; 
          console.log($scope.fullAddress);
          $http.get('https://maps.googleapis.com/maps/api/geocode/json?address=' +$scope.fullAddress+ '&sensor=false')
            .then(function(data) {
              var p = data.data.results[0].geometry.location;
              latlng = {lat: p.lat, lng: p.lng};
              $scope.businesses.push(latlng);
              console.log(latlng);
            });
            console.log(i);
            console.log($scope.businesses);
            // $scope.businesses.latlng = latlng;
            // console.log($scope.businesses.latlng);
        }
      })
    }
  });

  //   $scope.addAddresses = function() {
  //     for(var i = 0; i < $scope.businesses.length; i++) {
  //       $scope.fullAddress = $scope.businesses[i].street_no + ' ' + $scope.businesses[i].street_name + ', ' + $scope.businesses[i].city + ', ' + $scope.businesses[i].zipcode; 
  //       console.log($scope.fullAddress);
  //       $http.get('https://maps.googleapis.com/maps/api/geocode/json?address=' +$scope.fullAddress[i]+ '&key=AIzaSyDdZLvJpNUODunYI4Imfm4elrUI7y66dqc')
  //         .then(function() {
  //           $scope.businesses[i].geometry.location.lat = lat;
  //           $scope.businesses[i].geometry.location.lng = lng;
  //           console.log(lat);
  //         })
  //     }
  //   }
  // })





  //   .controller('mapController', function($scope, api) {
  //   $scope.mapMarkers = api.getBusinesses().then(function (data){
  //        console.log(data)
  //        $scope.businesses = data.data
  //      });
  // })
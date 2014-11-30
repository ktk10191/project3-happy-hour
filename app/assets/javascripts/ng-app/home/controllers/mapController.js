angular.module('happyHrApp')

  .controller('mapController', function($scope, api, $http) {


    $scope.init = function () {
      var mapOptions = {
        center: new google.maps.LatLng(34.0219, -118.4814),
        zoom: 13
      };
      $scope.map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);

      var input = /** @type {HTMLInputElement} */(
          document.getElementById('pac-input'));

      var types = document.getElementById('type-selector');
      // map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
      // map.controls[google.maps.ControlPosition.TOP_LEFT].push(types);
      // var autocomplete = new google.maps.places.Autocomplete(input);      
      // console.log(mapOptions);tocomplete.bindTo('bounds', map);
      var infowindow = new google.maps.InfoWindow({
        happyhour:"<strong>Cheers! HAPPY HOUR: 1pm-5pm</strong>"
      });
    };

    // Starting with empty array to push data into
    $scope.businesses = [];
    $scope.map = null;
    // Getting business data from the api and pushing it into the businesses array
    $scope.geocodeAddresses = function() {

      api.getBusinesses().then(function (data){
        // Specifically pushing the json data into the array
        $scope.businesses.push(data.data);

        for(var i = 0; i < $scope.businesses[0].length; i++) {
          $scope.fullAddress = $scope.businesses[0][i].street_no + ' ' + $scope.businesses[0][i].street_name + ', ' + $scope.businesses[0][i].city + ', ' + $scope.businesses[0][i].zipcode; 
          // need a closure here to enable us to access the for loop index via var j in the $http get
          (function(j) {
            // make a get request to google to geocode the full addresses in the database
            $http.get('https://maps.googleapis.com/maps/api/geocode/json?address=' +$scope.fullAddress)
              .then(function(data) {
                var latLng = data.data.results[0].geometry.location;

                $scope.businesses[0][j].latLng = latLng;
                // console.log($scope.businesses[0][j]);

                var marker = new google.maps.Marker({
                  map: $scope.map,
                  anchorPoint: new google.maps.Point(0, -29),
                  animation:google.maps.Animation.BOUNCE,
                  position: latLng
                  // THIS IS WHERE WE CAN CHANGE THE MARKERS!!!!!
                  // icon:'pinkball.png'
                });

              })
            }(i));
        };
      });
    };
  });

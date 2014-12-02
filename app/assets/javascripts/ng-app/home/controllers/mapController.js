angular.module('happyHrApp')

  .controller('mapController', function($scope, api, $http) {

// this function initializes the map
    $scope.init = function () {
      var mapOptions = {
        center: new google.maps.LatLng(34.0219, -118.4814),
        zoom: 14
      };

      var infoWindow = new google.maps.InfoWindow();

      $scope.map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
    }
   // Starting with empty array to push data into
    $scope.businesses = [];
    $scope.map = null;
    $scope.infowindows = [];
    // Getting business data from the api and pushing it into the businesses array
    $scope.geocodeAddresses = function() {
      // call our api to get our data
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
                // markers are generated when geocodeAddresses() is run and positions are set equal to latLng above 
                var marker = new google.maps.Marker({
                  map: $scope.map,
                  anchorPoint: new google.maps.Point(0, -29),
                  // animation:google.maps.Animation.BOUNCE,
                  position: latLng
                  // icon:'pinkball.png'
                });
                // trying to access ratings for business to display in infowindow
                // api.getRatings($scope.businesses[0][j].id)
                // .then(function(data){
                //   $scope.ratings = data.data
                //   // console.log($scope.ratings)
                //   // for (var k = 0; k < $scope.ratings.length; k++) {
                //   //   $scope.businesses[0][j].rating = $scope.ratings[k].rating
                //   //   console.log($scope.businesses[0][k].rating)
                //   // }
                // })
                // infowindow content populates here
                var infowindow = new google.maps.InfoWindow({
                  maxWidth: 200,
                  content: 
                  "<p><strong>" + $scope.businesses[0][j].business_name + "</strong><p/>" + 
                  "<p>Happy Hour: " + $scope.businesses[0][j].happy_hour_time  + "</p>" + 
                  "<p>Phone Number: " + $scope.businesses[0][j].phone_number + "</p>" +
                  "<p>Address: " + $scope.businesses[0][j].street_no + ' ' + $scope.businesses[0][j].street_name + ', ' + $scope.businesses[0][j].city + ', ' + $scope.businesses[0][j].zipcode + "</p>" +
                  "<p>Setting: " + $scope.businesses[0][j].setting + "</p>" +
                  "<p>Website: " + $scope.businesses[0][j].website + "</p>" 
                  // "<p>Rating: " + $scope.businesses[0][j].rating + "</p>"
                });

                $scope.infowindows.push(infowindow);
                // makes the current infowindow close when new one is opened

                google.maps.event.addListener(marker, "click", function(event) {
                  closeInfoWindows();
                  infowindow.open($scope.map, marker);
                });
                function closeInfoWindows(){
                  for (var i = 0; i < $scope.infowindows.length; i++){
                    $scope.infowindows[i].close();
                  }
                }
              })
          }(i));
        };
      });
    };
  });
angular.module('happyHrApp')

.service('api', function($http){

  return {

    getBusiness: function(){

      var promise = $http.get('/api/businesses')
      .then(function(response) {
        return response;
      })

      return promise;

    },

    // Add phone number back into the function below later
    createBusiness: function(businessName, businessAddr, businessPriceRange, businessWebsite, businessRating) {

      $http.post('/api/businesses',  { 
        name: businessName,  
        address: businessAddr,  
        // number: businessPhone,
        price: businessPriceRange,
        website: businessWebsite,
        rating: businessRating
      })
    }
  }
});
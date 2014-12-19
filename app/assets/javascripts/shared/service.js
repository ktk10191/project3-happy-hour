angular.module('happyHrApp')

.service('api', function($http){

  return {

    getBusinesses: function(){

      var promise = $http.get('/api/businesses')
      .then(function(response) {
        return response;
      })

      return promise;

    },


    createBusiness: function(businessName, businessAddr, businessPriceRange, businessWebsite, businessRating) {

      $http.post('/api/businesses',  { business_name: businessName,  business_address: businessAddr,  price: businessPriceRange, website: businessWebsite, rating: businessRating})

    },

    getRatings: function(){
      var promise = $http.get('/api/ratings')
      .then(function(response){
        return response;
      })

      return promise;

    }

  };
});
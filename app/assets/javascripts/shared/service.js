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


    createBusiness: function(bName, addr, street, city, zipcode, state, phone, website, rating, happyHourTime) {

      $http.post('/api/businesses', { business_name: bName, street_no: addr, street_name: street, city: city, zipcode: zipcode, state: state, phone: phone, website: website, rating: rating, happy_hour_time: happyHourTime })
      console.log('create business');
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
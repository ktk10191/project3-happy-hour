angular.module('happyHrApp')

// link to div id for individual dev team pages
.controller('bioController', ['$scope', '$location', '$anchorScroll', function($scope, $location, $anchorScroll){
  $scope.scrollTo = function(id) {
      $location.hash(id);
      $anchorScroll();
   }
}]);
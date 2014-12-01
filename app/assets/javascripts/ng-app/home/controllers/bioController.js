angular.module('happyHrApp')

.controller('bioController', ['$scope', '$location', '$anchorScroll', function($scope, $location, $anchorScroll){
  $scope.scrollTo = function(id) {
      $location.hash(id);
      $anchorScroll();
   }
}]);
angular.module('happyHrApp')

  .controller('ModalDemoCtrl', function ($scope, $modal, $log) {
      $scope.login = function (size) {
        var modalInstance = $modal.open({
          templateUrl: 'logInModal.html',
          controller: 'ModalInstanceCtrl',
          size: size,
        });

        modalInstance.result.then(function (selectedItem) {
          $log.info('Modal dismissed at: ' + new Date());
        });
      };

      $scope.signUp = function (size) {
        var modalInstance = $modal.open({
          templateUrl: 'signUpModal.html',
          controller: 'ModalInstanceCtrl',
          size: size,
        });

        modalInstance.result.then(function (selectedItem) {
          $log.info('Modal dismissed at: ' + new Date());
        });
      };

       $scope.addBusiness = function (size) {
        var modalInstance = $modal.open({
          templateUrl: 'addBusinessModal.html',
          controller: 'ModalInstanceCtrl',
          size: size,
        });

        modalInstance.result.then(function (selectedItem) {
          $log.info('Modal dismissed at: ' + new Date());
        });
      };
  })

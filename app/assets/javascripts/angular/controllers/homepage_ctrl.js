App.controller('HomepageController', ['$scope', 'Selfie', function($scope, Selfie) {
  $scope.photos = Selfie.all();
  $scope.photoLimit = 20;

}]);
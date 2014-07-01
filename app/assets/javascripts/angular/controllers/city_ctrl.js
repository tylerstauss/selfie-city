App.controller('CityController', ['$scope', 'City', function($scope, City){
	$scope.photos = City.all
}])
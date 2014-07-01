App.factory('City', ['$resource', function($resource) {
  function City() {
    this.service = $resource('/photos/city/:cityId', {cityId: '@id'});
  };
  City.prototype.all = function() {
    return this.service.query();
  };
  return new City;
}]);
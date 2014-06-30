App.factory('Selfie', ['$resource', function($resource) {
  function Selfie() {
    this.service = $resource('/photos/:photoId', {photoId: '@id'});
  };
  Selfie.prototype.all = function() {
    return this.service.query();
  };
  return new Selfie;
}]);

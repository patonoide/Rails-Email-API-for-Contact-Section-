angular.module("myApp", [])
  .controller("emailController", ['$scope', '$http', emailController]);




function emailController($scope, $http) {
  $scope.email = {};
  $scope.emails = [];



  $scope.listing = function() {
    $http.get('http://localhost:3000/messages')
      .then(function(result) {
        $scope.emails = result.data;
      });
    return $scope.emails;
  }


  $scope.newEmail = function() {





    $http.post('http://localhost:3000/messages', {
      sender: $scope.email.sender,
      message: $scope.email.message
    }).then(function(msg) {
      if (msg.loginSucceeded === "true") {
        console.log("worked")
      } else {
        console.log("try again");
      }
    });


  };
}

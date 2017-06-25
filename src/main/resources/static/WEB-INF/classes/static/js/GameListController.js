var app=angular.module("GamersDeck");
app.controller("GameListController",function($scope,$http,$state){
		$http.get("gamersdeck/v1.0/game").then(function(data){
			if(data.status==202 || data.status==200){
				$scope.games=data.data;
			}else{
				console.log("Not authorised");
				localStorage.removeItem("username");
				localStorage.removeItem("authToken");
				$state.go('login');
			}
		});
		$scope.propertyName = 'title';
		  $scope.reverse = true;
		$scope.sortBy = function(propertyName) {
		    $scope.reverse = ($scope.propertyName === propertyName) ? !$scope.reverse : false;
		    $scope.propertyName = propertyName;
		 };
});
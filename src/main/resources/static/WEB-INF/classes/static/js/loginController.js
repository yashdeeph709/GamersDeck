var app=angular.module("GamersDeck");
app.controller("loginController",function($scope,$http,$log,$state,toaster){
	$scope.login = function(){
		var promise=$http.post('gamersdeck/v1.0/login',{username:$scope.email,password:$scope.password});
		promise.then(function(response){
			var data = response.data;
			if(data.authenticated){
				localStorage.setItem("authToken",data.authToken);
				localStorage.setItem("username",$scope.email);
				$state.go("home");
			}else{
				toaster.pop('warning', "Message",data.msg);
			}
		});
	}
	$scope.register = function(){
		$state.go("register");
	}
});
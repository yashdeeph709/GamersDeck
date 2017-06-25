var app=angular.module("GamersDeck");
app.controller("registerController",function($scope,$http,toaster,$state){
	$scope.register=function(){
		$http.post("gamersdeck/v1.0/register",{username:$scope.name,password:$scope.password,email:$scope.email})
		.then(function(data){
			response=data.data;
			if(response.created){
				$state.go('login');
			}else{
				toaster.pop('warning', "Message",response.msg);
			}
		});
	}
	$scope.login=function(){
		$state.go("login");
	}
});
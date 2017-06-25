var app = angular.module("GamersDeck",['ui.router','toaster']);
app.run(['$rootScope','$state',function ($rootScope,$state) {
    $rootScope.$on('$stateChangeStart', function (event,toState, toParams, fromState, fromParams) {
    	/*if (localStorage.getItem('Token') && (toState.name==="register" || toState.name==="login")) {
            console.log('Your are loggedIn you cannot go to register');
            event.preventDefault();
            if(fromState.name!=''){
                $state.go(fromState.name);
            }
        }
        if (!localStorage.getItem('Token') && (toState.name!=="home")) {
            event.preventDefault();
            $state.go('login');
        }*/
    	console.log("Going From"+fromState.name);
    	console.log("toState :"+toState.name);
    	console.log("toParams:"+toParams);
    	console.log("event"+event);
    });
}]);
app.controller("mainCtrl",function($scope,$state){
	
	$scope.isAuthenticated=function(){
		$scope.username=localStorage.getItem("username");
		
		return localStorage.getItem("authToken");
	}
	$scope.logout=function(){
		localStorage.removeItem("authToken");
		localStorage.removeItem("username");
		$state.go("login")
	}
});
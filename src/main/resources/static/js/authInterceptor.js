(function(){
var app=angular.module("GamersDeck")
app.factory('authInterceptor',function(){
		return{
		request:function(config){
			var token=localStorage.getItem("authToken");
			if(config.url.indexOf("login")!=-1 || config.url.indexOf("register")!=-1){
				return config;
			}
			if(token){
				console.log("Appending AuthToken");
		 		config.headers.authToken=token;
		 	}
		 	return config;
		},
		response:function(response){
			return response;
		}
	};
	});	
})();
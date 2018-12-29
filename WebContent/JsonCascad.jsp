<html data-ng-app="app">  
  
    <head>  
        <script data-require="angular.js@1.1.5" data-semver="1.1.5" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.1.5/angular.js"></script>  
       
        <script type="text/javascript">
        
        var app = angular.module("app", []);  
        
        function CountriesController($scope)  
        {  
            $scope.countries = [  
            {  
                "name": "USA",  
                "id": 1  
            },  
            {  
                "name": "Canada",  
                "id": 2  
            }];  
            $scope.states = [  
            {  
                "name": "Alabama",  
                "id": 1,  
                "countryId": 1  
            },  
            {  
                "name": "Alaska",  
                "id": 2,  
                "countryId": 1  
            },  
            {  
                "name": "Arizona",  
                "id": 3,  
                "countryId": 1  
            },  
            {  
                "name": "Alberta",  
                "id": 4,  
                "countryId": 2  
            },  
            {  
                "name": "British columbia",  
                "id": 5,  
                "countryId": 2  
            }]; 
            
            
            $scope.cities = [  
                {  
                    "name": "city1",  
                    "id": 1,  
                    "stateId": 1  
                },  
                {  
                    "name": "city2",  
                    "id": 2,  
                    "stateId": 1  
                },  
                {  
                    "name": "city3",  
                    "id": 3,  
                    "stateId": 1  
                },  
                {  
                    "name": "city2",  
                    "id": 4,  
                    "stateId": 2  
                },  
                {  
                    "name": "city2",  
                    "id": 5,  
                    "stateId": 2  
                }];
            
            
            
           // updatating States
            $scope.updateCountry = function ()  
            {  
        	  
                $scope.availableStates = [];  
                angular.forEach($scope.states, function (value)  
                {  
                	console.log(value)
                    if (value.countryId == $scope.country.id)  
                    {  
                        $scope.availableStates.push(value);  
                    }  
                });  
            } 
           
           
          // updating cites
            $scope.updateState = function ()  
            {  
                $scope.availableCities = [];  
                angular.forEach($scope.cities, function (value)  
                {  
                    if (value.stateId == $scope.state.id)  
                    {  
                        $scope.availableCities.push(value);
                    }  
                });  
            }  
          
          
        }  
        
        </script>
         
    </head>  
  
    <body ng-controller="CountriesController">   
      <select ng-model="country" ng-options="country.name   for country in countries" ng-change="updateCountry()">  
        <option value="">Select country</option>  
      </select>   
      <br>   
          <select ng-model="state" ng-options="state.name for state in availableStates" ng-change="updateState()">  
                <option value="">Select state</option>  
          </select> 
          <br>
          <select ng-model="city" ng-options="city.name for city in availableCities">  
                <option value="">Select city</option>  
          </select> 
            
      <br> Country: {{country}} <br> State: {{state}}  <br> City :{{city}}
    </body>  
  
</html>  
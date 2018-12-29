<!DOCTYPE html>
<html ng-app>
<head>
    <title>Cascading Dropdowns in AngularJs</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
    <script>
        function CountryStateCityCtnl($scope) {
            $scope.countries = {
                'India': {
                    'Maharashtra': {'Pune':10, 'Mumbai':10, 'Nagpur':10, 'Akola':10}
                },
                'USA': {
                    'Alabama': {'Montgomery':20, 'Birmingham':20},
                    'California': {'Sacramento':30, 'Fremont':30},
                    'Illinois': {'Springfield':40, 'Chicago':40}
                },
                'Australia': {
                    'New South Wales': {'Sydney':50},
                    'Victoria': {'Melbourne':60}
                }
            };
            $scope.GetSelectedCountry = function () {
                $scope.strCountry = document.getElementById("country").value;
            };
            $scope.GetSelectedState = function () {
                $scope.strState = document.getElementById("state").value;
            };
            $scope.GetSelectedCity = function () {
                $scope.strCity = document.getElementById("city").value;
            };
        }
    </script>
</head>
<body>
    <div ng-controller="CountryStateCityCtnl">
    
    <form action="DynamicServlet" method="get">
        <div>
            Country:
            <select name="country" ng-change="GetSelectedCountry()" ng-model="states" ng-options="country for (country, states) in countries">
                
                <option value=''>Select</option>
                
            </select>
        </div>
        <div style='height: 15px;'>
            &nbsp;</div>
        <div>
            States:<select name="state" ng-change="GetSelectedState()"  ng-model="cities" ng-options="state for (state,city) in states"
               ><option value=''>Select</option>
            </select>
        </div>
        <div style='height: 15px;'>
            &nbsp;</div>
        <div>
            City:<select  name="city" ng-change="GetSelectedCity()" ng-model="city" ng-options=" value as city for (city,value) in cities">
            <option value=''>Select</option>
            </select>
        </div>
        <input type="submit" value="submit">
       </form>
        
        <p>Country:: {{strCountry}}</p>
        <p>State:: {{strState}}</p>
        <p>City:: {{strCity}}</p>
        
       
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script type="text/javascript">

var app = angular.module("app", []);

app.controller("controller", function($scope) {

  $scope.items = [{
    name: "Chicken",
    options: [
      "Drumstick",
      "Thigh",
      "Wing"
    ]
  }, {
    name: "Meat",
    options: [
      "Lamb",
      "Goat",
    ]
  }, {
    name: "Fish"
  }];

});
</script>
</head>
<body ng-app="app">

<div ng-controller="controller">
<div>
    <label class="control-label">Type</label>
    <br/>
    <select ng-model="selectedItem" ng-options="item as item.name for item in items">
      <option value="">Select a type</option>
    </select>
  </div>

  <div ng-if="selectedItem.options">
    <label class="control-label">Option</label>
    <br/>
    <select ng-model="selectedOption" ng-options="o as o for o in selectedItem.options">
    </select>
  </div>

  <div ng-if="selectedItem && !selectedItem.options">
    <label class="control-label">Comment</label>
    <br/>
    <input type="text" ng-model="selectedItem.comment" />
  </div>  
  
  <button type="button" class="btn btn-primary" ng-click="add();">Add</button>

</div>



</body>
</html>
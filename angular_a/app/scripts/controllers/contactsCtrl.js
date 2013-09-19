'use strict';

angular.module('contactmvc')
  .controller('ContactsCtrl', function ContactsCtrl($scope, $location, contactStorage) {
    var contacts = $scope.contacts = [];
    console.log("Contacts: ");
    console.log(contacts);

    $scope.contactName  = '';
    $scope.contactPhone = '';
    $scope.contactEmail = '';

    $scope.$watch('contacts', function(newValue, oldValue) {
      console.log("newValue: " + newValue);
      console.log("oldValue: " + oldValue);

      if (newValue !== oldValue) {
        contactStorage.put(contacts);
      }
    }, true);

    if ($location.path === '') {
      $location.path('/');
    }

    $scope.location = $location;

    $scope.addContact = function() {
      console.log("addContact");

      // TODO email, phone
      //if (!newContact.length) { return; }

      contacts.push({
        name:  $scope.contactName,
        phone: $scope.contactPhone,
        email: $scope.contactEmail
      });

      $scope.contactName = '';
      $scope.contactPhone = '';
      $scope.contactEmail = '';
    };
  });

/* global contacts */
'use strict';

/**
 * Services that persists and retrieves Contacts from localStorage
 */
angular.module('contactmvc').factory('contactStorage', function () {
  var STORAGE_ID = 'contacts-angularjs';

  return {
    get: function () {
      return JSON.parse(localStorage.getItem(STORAGE_ID) || '[]');
    },

    put: function (todos) {
      localStorage.setItem(STORAGE_ID, JSON.stringify(todos));
    }
  };
});


/*global define*/

define([
    'underscore',
    'ApplicationModel',
    'backbone',
    'backboneLocalStorage'
], function (_, ApplicationModel, Backbone) {
    'use strict';

    var ApplicationCollection = Backbone.Collection.extend({
        model: ApplicationModel,
        localStorage: new Backbone.LocalStorage("ApplicationModel-Storage")
    });

    return new ApplicationCollection;
});
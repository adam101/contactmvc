/*global define*/

define([
    'underscore',
    'backbone'
], function (_, Backbone) {
    'use strict';

    var ApplicationModel = Backbone.Model.extend({
        defaults: {
            name: "Jancsi",
            age: 12
        }
    });

    return ApplicationModel;
});
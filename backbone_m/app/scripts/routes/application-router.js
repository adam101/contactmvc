/*global define*/

define([
    'jquery',
    'backbone',
    'ApplicationView'
], function ($, Backbone, ApplicationView) {
    'use strict';

    var ApplicationRouter = Backbone.Router.extend({
        routes: {
            '': "index"
        },

        index: function () {
            return new ApplicationView();
        }

    });

    return ApplicationRouter;
});
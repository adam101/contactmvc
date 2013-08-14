/*global define*/

define([
    'jquery',
    'underscore',
    'backbone',
    'templates',
    'ApplicationCollection',
    'ApplicationModel'
], function ($, _, Backbone, JST, ApplicationCollections, ApplicationModel) {
    'use strict';

    var ApplicationView = Backbone.View.extend({
        el: "#main-div",

        initialize: function () {
            console.log("init...");
            ApplicationCollections.create({name: "jakab"});
            this.render();
            this.listenTo(ApplicationCollections, 'add', this.addOne);
            ApplicationCollections.fetch();
        },

        template: JST['app/scripts/templates/application.ejs'],

        events: {
            'click a.new': "new"
        },

        new: function () {
            alert("create new");
        },

        render: function () {

            $(this.el).append(this.template());
        },

        addOne: function (model) {
            console.log(model);
            $(this.el).append(model.toJSON().name);
        }
    });

    return ApplicationView;
});
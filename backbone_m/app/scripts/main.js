/*global require*/
'use strict';

require.config({
    shim: {
        underscore: {
            exports: '_'
        },
        backbone: {
            deps: [
                'underscore',
                'jquery'
            ],
            exports: 'Backbone'
        },
        bootstrap: {
            deps: ['jquery'],
            exports: 'jquery'
        }
    },
    paths: {
        MyLib: "MyLib",
        jquery: '../bower_components/jquery/jquery',
        backbone: '../bower_components/backbone/backbone',
        underscore: '../bower_components/underscore/underscore',
        bootstrap: 'vendor/bootstrap',
        backboneLocalStorage: "../bower_components/backbone.localStorage/backbone.localStorage",
        ApplicationRoutes: "routes/application-router",
        ApplicationView: "views/application-view",
        ApplicationCollection: "collections/application-collection",
        ApplicationModel: "models/application-model"
    }
});

require([
    'jquery',
    'underscore',
    'backbone',
    'backboneLocalStorage',
    'ApplicationRoutes',
    'MyLib'
], function ($, _, Backbone, backboneLocalStorage, ApplicationRoutes, MyLib) {
    'use strict';

    //debugger;


    new ApplicationRoutes();

    console.log("Running jQuery %s", $().jquery);
    Backbone.history.start();
});

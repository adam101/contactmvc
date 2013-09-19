# global require
"use strict"

require.config
  shim:
    underscore:
      exports: "_"

    backbone:
      deps: ['underscore', 'jquery']
      exports: 'Backbone'

    bootstrap:
      deps: ['jquery']
      exports: 'Bootstrap'

    handlebars:
      exports: 'Handlebars'

  paths:
    jquery: '../bower_components/jquery/jquery'
    backbone: '../bower_components/backbone/backbone'
    underscore: '../bower_components/underscore/underscore'
    bootstrap: 'vendor/bootstrap'
    text: '../bower_components/requirejs-text/text'
    handlebars: '../bower_components/handlebars/handlebars'
    localstorage: '../bower_components/backbone.localStorage/backbone.localStorage'

require [
  'backbone'
  'routes/contacts-router'
], (Backbone, ContactsRouter) ->
  new ContactsRouter()
  Backbone.history.start()


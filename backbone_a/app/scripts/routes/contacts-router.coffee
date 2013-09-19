# global define

define [
  'backbone'
  'views/contacts-index'
], (Backbone, ContactsIndex) ->
  'use strict'

  class ContactsRouter extends Backbone.Router
    routes:
      '': 'index'

    index: ->
      new ContactsIndex()


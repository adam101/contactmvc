# global define

define [
  'underscore'
  'models/contact-model'
  'backbone'
  'localstorage'
], (_, Contact, Backbone) ->
  'use strict'

  class Contacts extends Backbone.Collection
    model: Contact
    localStorage: new Backbone.LocalStorage('Contacts')

  # XXX Biztosan így kell ezt?
  return new Contacts

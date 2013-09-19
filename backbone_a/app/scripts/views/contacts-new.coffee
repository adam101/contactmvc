# global define

define [
  'jquery'
  'underscore'
  'backbone'
  'handlebars'
  'collections/contacts-collection'
  'text!../templates/new-contact.hbs'
], ($, _, Backbone, Handlebars, Contacts, newContactTemplate) ->
  'use strict'

  class ContactsNew extends Backbone.View
    tagName: 'div'
    className: 'contact span4 edit'
    template: Handlebars.compile(newContactTemplate)

    events:
      'click button[type="submit"]': 'create'
      'click button.cancel': 'clear'

    initialize: ->

    render: ->
      $(@el).html(@template)
      return @

    create: ->
      @$name  = $('#name')
      @$phone = $('#phone')
      @$email = $('#email')

      Contacts.create
        name:  @$name.val().trim()
        phone: @$phone.val().trim()
        email: @$email.val().trim()

      @clear()

    clear: ->
      $(@el).remove()

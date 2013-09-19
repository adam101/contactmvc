# global define

define [
  'jquery'
  'underscore'
  'backbone'
  'handlebars'
  'collections/contacts-collection'
  'text!../templates/edit-contact.hbs'
], ($, _, Backbone, Handlebars, Contacts, editContactTemplate) ->
  'use strict'

  class ContactsEdit extends Backbone.View
    tagName: 'div'
    className: 'contact span4 edit'
    template: Handlebars.compile(editContactTemplate)

    events:
      'click button[type="submit"]': 'change'
      'click button.cancel': 'clear'

    initialize: ->

    render: ->
      $(@el).html(@template(@model.toJSON()))
      return @

    change: ->
      @$name  = $('#name')
      @$phone = $('#phone')
      @$email = $('#email')

      @model.save
        name:  @$name.val().trim()
        phone: @$phone.val().trim()
        email: @$email.val().trim()

      @clear()

    clear: ->
      $(@el).remove()

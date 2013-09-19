# global define

define [
  'jquery'
  'underscore'
  'backbone'
  'handlebars'
  'collections/contacts-collection'
  'views/contacts-item'
  'views/contacts-new'
  'text!../templates/contacts.hbs'
], ($, _, Backbone, Handlebars, Contacts, ContactsItemView, ContactsNewView, contactsTemplate) ->
  'use strict'

  class ContactsIndex extends Backbone.View
    el: '#contacts-app'
    template: Handlebars.compile(contactsTemplate)

    events:
      'click a.new': 'new'

    initialize: ->
      @render()

      @$input = @$('#new-contact')
      @listenTo(Contacts, 'add', @addOne)

      Contacts.fetch()

    addOne: (contact) ->
      view = new ContactsItemView(model: contact)
      $('.contacts').prepend(view.render().el)

    new: ->
      view = new ContactsNewView()
      $('.contacts').prepend(view.render().el)

    render: ->
      @$el.html(@template())
      return @


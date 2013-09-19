# global contactsBackbone, Backbone, JST

define [
  'jquery'
  'underscore'
  'backbone'
  'handlebars'
  'views/contacts-edit'
  'text!../templates/contact.hbs'
], ($, _, Backbone, Handlebars, ContactsEditView, contactTemplate) ->
  'use strict'

  class ContactsItem extends Backbone.View
    tagName: 'div'
    className: 'contact span4'

    template: Handlebars.compile(contactTemplate)

    events:
      'click .destroy': 'clear'
      'click .edit': 'edit'

    initialize: ->
      @listenTo(@model, 'change', @render)
      @listenTo(@model, 'destroy', @remove)

    render: ->
      @$el.html(@template(@model.toJSON()))
      return @

    edit: (event) ->
      view = new ContactsEditView(model: @model)
      @$el.replaceWith(view.render().el)
      return false

    clear: ->
      @model.destroy()
      return false


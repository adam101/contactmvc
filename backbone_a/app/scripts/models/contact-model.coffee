# global

define [
  'underscore'
  'backbone'
], (_, Backbone) ->
  'use strict'

  class Contact extends Backbone.Model
    defaults:
      name: 'Default name'
      email: 'Default email'
      phone: 'Default phone'

      #initialize: ->
      #  @set(name: @defaults.name) unless @get('name')
      #  @set(email: @defaults.email) unless @get('email')
      #  @set(phone: @defaults.phone) unless @get('phone')

      #clear: ->
      #  @destroy()
      #  @view.remove()


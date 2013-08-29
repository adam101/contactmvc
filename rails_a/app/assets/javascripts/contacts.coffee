$(document).ready ->
  $(document).on 'click', '.cancel', (event) ->
    event.stopPropagation()
    event.preventDefault()

    $contact = $(@).parents('div.contact')
    isEdit   = $contact.hasClass('edit')

    if isEdit
      contactId = $contact.data('id')
      $.get("/contacts/#{contactId}.js")
    else
      $contact.remove()


$ ->
  $('.nav-menu-toggle').click (e) ->
    $(@).parent().find('.nav-items').fadeIn(200)
    e.preventDefault()
    e.stopPropagation()

    # Close dropdown
    $('body').one 'click', ->
      $('.nav-items').hide()

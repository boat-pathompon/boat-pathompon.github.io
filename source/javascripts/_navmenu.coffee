$ ->
  $('.js--nav--menu--toggle').click (e) ->
    $(@).parent().find('.nav--menu--dropdown').fadeIn(200)
    e.preventDefault()
    e.stopPropagation()

    # Close dropdown
    $('body').one 'click', ->
      $('.nav--menu--dropdown').hide()

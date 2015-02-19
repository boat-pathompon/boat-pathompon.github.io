$ ->
  $('.sidebar-toggle').click (e) ->
    $('#sidenav').show().removeClass('slideOutRight').addClass('slideInRight')
    $('#modal-mask').fadeIn()

    $('#modal-mask, #sidenav .dismiss-btn').one 'click', (e) ->
      $('#sidenav').removeClass('slideInRight').addClass('slideOutRight')
      $('#modal-mask').fadeOut()

      $('#sidenav').one 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', ->
        $(@).hide()

      e.preventDefault()

    e.preventDefault()

$ ->

  # Do gridify only if can fit 2 columns or up.
  if $(window).width() >= 870

    $('.post-container').gridify(
      srcNode: '.post-card'
      width: '370px'
      margin: '20px'
      resizable: true
      transition: 'all 0.5s ease'
    )

  # Apply humanized time on post.
  $('.post-time abbr').timeago()

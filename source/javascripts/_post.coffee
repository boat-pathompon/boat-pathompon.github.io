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
  $('.post-time abbr').each (_i, abbr) ->

    monthName = [
      'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August',
      'September', 'October', 'November', 'December'
    ]

    $abbr = $(abbr)
    [date, time] = $abbr.text().split ' '
    [year, month, day] = date.split '-'

    today = new Date()
    postDate = new Date(year, month - 1, day)

    if Math.ceil(((today - postDate) / 86400000)) > 7
      $abbr.text "#{day} #{monthName[month - 1]} #{year}"
    else
      $abbr.timeago()

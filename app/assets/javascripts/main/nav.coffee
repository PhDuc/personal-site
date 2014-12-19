window.Nav = @Nav || {}

Nav.setUp = () ->
  $(document).on 'click', '.main-nav ul li', Nav.triggerLink

Nav.triggerLink = (event) ->
  window.location = $(event.target).children('a').attr('href')

$ -> Nav.setUp()

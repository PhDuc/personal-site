window.Review = @Review || {}

Review.setUpReview = () ->
  $(document).on 'click', '.icon-lang', Review.redirectToOfficialSite

Review.redirectToOfficialSite = (event) ->
  target = $(event.target).attr('class')
  regex  = /^icon-lang\ (\w+)-*.*$/
  window.open(I18n.t('official.' + regex.exec(target)[1]))

$ -> Review.setUpReview()

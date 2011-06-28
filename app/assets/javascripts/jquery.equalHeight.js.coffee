# add a new method to JQuery
$.fn.equalHeight = ->
  # find the tallest height in the collection
  # that was passed in (.column)
  tallest = 0
  @each ->
    thisHeight = $(this).height()
    tallest = thisHeight  if thisHeight > tallest

  # set each items height to use the tallest value found
  @each ->
    $(this).height tallest
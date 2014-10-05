$i =
  ##################################
  #          Internals             #
  ##################################

  # Current selected element/collection of elements
  el: null

  ###################################
  #          User Methods           #
  ###################################

  # Get an element with a css selector
  get: (selector)->
    @el = document.querySelectorAll selector
    @

  # Set an attribute on an element
  set: (attr, data)->
    @el[0].setAttribute attr, data
    @

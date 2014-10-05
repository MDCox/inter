expect = require('chai').expect
lib = require '../dist/main.js'

describe 'get(selector)', ()->
  it 'should set $i.el with selection', ()->
    # @el is blank on initialize
    expect($i.el).to.equal null
    $i.get 'div'
    expect($i.el).to.not.equal null
    expect($i.el).to.be.a 'array'

  it 'should get a DOM element based on the provided css selector', ()->
    allDivs = document.querySelectorAll 'div'
    $i.get 'div'
    expect($i.el).to.equal allDivs

  it 'should get more than one element', ()->
    $i.get 'div'
    expect($i.el.length > 1).to.be true

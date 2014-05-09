# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  stage = new PIXI.Stage(0x66FF99)

  renderer = PIXI.autoDetectRenderer(400, 400)
  $("#cat-image").append(renderer.view)

  animate = ->
    requestAnimFrame animate
    # render the stage   
    renderer.render stage
    return

  requestAnimFrame animate

  myMask = new PIXI.Graphics()
  myMask.beginFill()
  myMask.drawCircle 241, 267, 35
  myMask.endFill()
   
  stage.addChild myMask

  mySprite = PIXI.Sprite.fromImage gon.cats[2].cat.image_url
  stage.addChild mySprite
   
  mySprite.mask = myMask

  count = 0
  $(".result-text").hide()
  $("button.next").hide()
  random_cats = shuffle(gon.cats)
  for cat in random_cats
    console.log cat.cat.id
  cat = random_cats[count]
  # $("#cat-image img").attr("src", cat.cat.image_url)
  # $("#cat-image img").removeClass().addClass(cat.cat.finances)

  $("button.rich").click ->
    mySprite.mask = null
    $("button.rich").hide()
    $("button.poor").hide()
    $("button.next").show()
    if cat.cat.finances == "rich"
      $(".win").show()
    else
      $(".lose").show()

  $("button.poor").click ->
    $("button.rich").hide()
    $("button.poor").hide()
    $("button.next").show()
    if cat.cat.finances == "poor"
      $(".win").show()
    else
      $(".lose").show()

  $("button.next").click ->
    mySprite.mask = myMask
    count += 1
    if count < random_cats.length
      cat = random_cats[count]
      $(".result-text").hide()
      $("button.next").hide()
      $("button.rich").show()
      $("button.poor").show()
      # $("#cat-image img").attr("src", cat.cat.image_url)
      # $("#cat-image img").removeClass().addClass(cat.cat.finances)
    else
      count = 0
      random_cats = shuffle(gon.cats)
      for cat in random_cats
        console.log cat.cat.id
      cat = random_cats[count]
      $(".result-text").hide()
      $("button.next").hide()
      $("button.rich").show()
      $("button.poor").show()
      # $("#cat-image img").attr("src", cat.cat.image_url)
      # $("#cat-image img").removeClass().addClass(cat.cat.finances)


shuffle = (o) -> #v1.0
  j = undefined
  x = undefined
  i = o.length

  while i
    j = Math.floor(Math.random() * i)
    x = o[--i]
    o[i] = o[j]
    o[j] = x
  o

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  stage = new PIXI.Stage(0xffffff)

  renderer = PIXI.autoDetectRenderer(400, 400)
  $("#cat-image").append(renderer.view)

  animate = ->
    requestAnimFrame animate
    # render the stage   
    renderer.render stage
    return

  requestAnimFrame animate

  count = 0
  $(".result-text").hide()
  $("button.next").hide()
  random_cats = shuffle(gon.cats)
  # for cat in random_cats
  #   console.log cat.cat.id
  cat = random_cats[count]

  cat_mask = new PIXI.Graphics()
  cat_mask.beginFill()
  cat_mask.drawCircle parseInt(cat.cat.x, 10), parseInt(cat.cat.y, 10), parseInt(cat.cat.radius, 10)
  # cat_mask.drawCircle 158, 85, 47
  cat_mask.endFill()
  
  stage.addChild cat_mask

  cat_sprite = PIXI.Sprite.fromImage cat.cat.image_url
  stage.addChild cat_sprite
   
  cat_sprite.mask = cat_mask
  # $("#cat-image img").attr("src", cat.cat.image_url)
  # $("#cat-image img").removeClass().addClass(cat.cat.finances)

  $("button.rich").click ->
    cat_sprite.mask = null
    $("button.rich").hide()
    $("button.poor").hide()
    $("button.next").show()
    if cat.cat.finances == "rich"
      $(".win").show()
    else
      $(".lose").show()

  $("button.poor").click ->
    cat_sprite.mask = null
    $("button.rich").hide()
    $("button.poor").hide()
    $("button.next").show()
    if cat.cat.finances == "poor"
      $(".win").show()
    else
      $(".lose").show()

  $("button.next").click ->
    count += 1
    if count < random_cats.length
      cat = random_cats[count]
      cat_mask.clear()
      cat_mask.beginFill()
      cat_mask.drawCircle parseInt(cat.cat.x, 10), parseInt(cat.cat.y, 10), parseInt(cat.cat.radius, 10)
      # cat_mask.drawCircle 158, 85, 47
      cat_mask.endFill()
      cat_sprite.setTexture PIXI.Texture.fromImage(cat.cat.image_url, true)
      cat_sprite.mask = cat_mask
      $(".result-text").hide()
      $("button.next").hide()
      $("button.rich").show()
      $("button.poor").show()
      # $("#cat-image img").attr("src", cat.cat.image_url)
      # $("#cat-image img").removeClass().addClass(cat.cat.finances)
    else
      count = 0
      random_cats = shuffle(gon.cats)
      # for cat in random_cats
      #   console.log cat.cat.id
      cat = random_cats[count]
      cat_mask.clear()
      cat_mask.beginFill()
      cat_mask.drawCircle parseInt(cat.cat.x, 10), parseInt(cat.cat.y, 10), parseInt(cat.cat.radius, 10)
      # cat_mask.drawCircle 158, 85, 47
      cat_mask.endFill()
      cat_sprite.setTexture PIXI.Texture.fromImage(cat.cat.image_url, true)
      cat_sprite.mask = cat_mask
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

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  count = 0
  $(".result-text").hide()
  $("button.next").hide()
  random_cats = shuffle(gon.cats)
  for cat in random_cats
    console.log cat.cat.id
  cat = random_cats[count]
  $("#cat-image img").attr("src", cat.cat.image_url)
  $("#cat-image img").removeClass().addClass(cat.cat.finances)

  $("button.rich").click ->
    $("button.rich").hide()
    $("button.poor").hide()
    $("button.next").show()
    if $("img").hasClass("rich")
      $(".win").show()
    else
      $(".lose").show()

  $("button.poor").click ->
    $("button.rich").hide()
    $("button.poor").hide()
    $("button.next").show()
    if $("img").hasClass("poor")
      $(".win").show()
    else
      $(".lose").show()

  $("button.next").click ->
    count += 1
    if count < random_cats.length
      cat = random_cats[count]
      $(".result-text").hide()
      $("button.next").hide()
      $("button.rich").show()
      $("button.poor").show()
      $("#cat-image img").attr("src", cat.cat.image_url)
      $("#cat-image img").removeClass().addClass(cat.cat.finances)
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
      $("#cat-image img").attr("src", cat.cat.image_url)
      $("#cat-image img").removeClass().addClass(cat.cat.finances)


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

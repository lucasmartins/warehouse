# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
<<<<<<< HEAD

send_data = ->
    $.get('/items/create',{barcode:$('#barcode').val()}, (data) ->
      if(data=="true")
        window.location='/items/entrada'
      else
        alert("Error!")
    )

jQuery ->
  $('#barcode').focus()
  $('#barcode').blur ->
    if ($('#fast-mode').attr('checked')=='checked')
      send_data()

  $('#multiplier').blur ->
    console.log('Sending data...')
    send_data()

  $('#fast-mode').click ->
    console.log('Switching mode...')
    $.get('/items/fast_mode',{fast_mode:$('#fast-mode').attr('checked')}, (data) ->
=======
jQuery ->
  $('#barcode').focus()
  $('#barcode').blur ->
    console.log('Sending data...')
    $.get('/items/create',{barcode:$('#barcode').val()}, (data) ->
>>>>>>> d5fc010fe55c4d6d0407d92f613f0420d127255e
      if(data=="true")
        window.location='/items/entrada'
      else
        alert("Error!")
    )
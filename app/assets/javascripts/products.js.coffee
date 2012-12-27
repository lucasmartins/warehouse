# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#barcode').focus()
  $('#save').click ->
    console.log('Sending data...')
    $.get('/products/create',{name:$('#name').val(),barcode:$('#barcode').val(),amount:$('#amount').val(),amount_type:$('#amount_type').val()}, (data) ->
      if(data=="true")
        window.location='/products'
      else
        alert("Error!")
    )
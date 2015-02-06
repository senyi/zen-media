# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  $('.myModal').modal('hide')

  options =
    beforeSend: (xhr) ->
      $('#Q-form-send').val "Enviando..."
      $('#Q-form-send').disable
      return
    success: (data, status, xhr) ->
      $('#submit').modal('show')
      return
    error: (xhr, status, error) ->
      alert("Ocurrió un error al enviar tu mensaje, intenta más tarde.")
      return
    complete: (xhr, status) ->
      $('#Q-form-send').val "Enviar"
      $('#Q-form-send').enable
      return

  $("form[data-remote='true']").remoteValidation options

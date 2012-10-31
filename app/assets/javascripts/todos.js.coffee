# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#datepicker').datepicker()

$ ->
  $('#sortable').sortable(
    cursor: 'move'
    start: (event, ui) ->
      ui.item.css('background-color', 'orange')
      return
    stop: (event, ui) ->
      ui.item.css('background-color', 'white')
      $.post('todos/reorder'
        $(@).sortable('serialize')
        null, 'text'
      )
      return
  )
  $('#sortable').disableSelection()
  return

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#booking_search').typeahead
    name: "booking"
    remote: "/bookings/autocomplete?query=%QUERY"


#$ ->
#  $('.datepicker').datepicker
#    format: "dd/mm/yyyy"

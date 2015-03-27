# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	url = document.URL
	pre_selected = url.replace("http://localhost:3000/rates/new.", "")
	if pre_selected > 0
		$('#rate_currency_pair_id').hide()
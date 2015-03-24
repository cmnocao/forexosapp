# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


calculate = ->
  transaction_fr_amount = document.getElementById('transaction_fr_amount').value
  transaction_rate = document.getElementById('transaction_rate_id').value
  to_amount = transaction_fr_amount * transaction_rate
  document.getElementById('transaction_to_amount').value = parseFloat(to_amount)
  return
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $.ajaxSetup cache: false
  $('#transaction_rate_id').parent().toggle()
  rates = $('#transaction_rate_id').html()
  $('#transaction_currency_pair_id').change ->
    ccy_pair = $('#transaction_currency_pair_id :selected').text()
    ccy_pair_scaped = ccy_pair.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(rates).filter("optgroup[label=#{ccy_pair_scaped}]").html()
    if options
      $('#transaction_rate_id').html(options)
      $('#transaction_rate_id').parent().toggle()      
    else
      $('#transaction_rate_id').empty()
      $('#transaction_rate_id').parent().toggle()
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(function() {
  setTimeout(function(){
    $('.alert').slideUp(700);
  }, 1500);
});


function calculate(){
	var transaction_fr_amount = document.getElementById('transaction_fr_amount').value;
	transaction_fr_amount = parseFloat(transaction_fr_amount)
	var transaction_rate = $("#transaction_rate_id option:selected").text();
	var to_amount = transaction_fr_amount * transaction_rate;
	document.getElementById('transaction_to_amount').value = to_amount.toFixed(2);
};
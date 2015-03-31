class HomeController < ApplicationController
  require 'open-uri'
  require 'json'
  require 'money'

  before_filter :authorize

  def index
		url = "http://openexchangerates.org/api/latest.json?app_id=8ed28e1a281847b2a0853c50b9805dcf"
		data = JSON.parse(open(url).read)
		@rates = data.to_hash
  end
end

class CurrencyPair < ActiveRecord::Base
	
	validates_presence_of :fr_currency_id
	validates_presence_of :to_currency_id

	has_many :rates
	has_many :transactions

	

end

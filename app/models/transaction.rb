class Transaction < ActiveRecord::Base
	has_paper_trail
	validates_presence_of :currency_pair_id
	validates_presence_of :rate_id
	validates_presence_of :fr_amount
	validates_presence_of :to_amount

	belongs_to	:customer
	belongs_to	:currency_pair
	belongs_to	:rate

end

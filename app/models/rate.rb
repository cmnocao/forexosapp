class Rate < ActiveRecord::Base
	
	validates_presence_of :rate
	validates_presence_of :currency_pair_id
	validates :rate, numericality: true

	belongs_to :currency_pair


end

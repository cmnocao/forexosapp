class Rate < ActiveRecord::Base
	
	validates_presence_of :currency_pair_id
	validates :rate, :presence => true,
            :numericality => true,
            :format => { :with => /\A\d{1,4}(\.\d{0,2})?\z/ }

	belongs_to :currency_pair
	has_many :transactions

end

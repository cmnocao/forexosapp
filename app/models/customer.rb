class Customer < ActiveRecord::Base

	has_paper_trail

	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :sex
	validates_presence_of :country_id

	has_many :transactions
	belongs_to :country

	def self.search(search)
		if search
			where([ "first_name || last_name LIKE ?", "%#{search}%" ])
		else
			all
		end
	end

	def full_name
		"#{first_name } #{last_name}"
	end

	# scope :order_total
	
end

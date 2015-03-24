class Customer < ActiveRecord::Base

	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :sex
	validates_presence_of :dob
	validates_presence_of :nationality

	has_many :transactions

	def full_name
		"#{first_name } #{last_name}"
	end
	
end

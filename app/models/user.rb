class User < ActiveRecord::Base
	has_secure_password
	has_paper_trail
	
	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :email
	validates_presence_of :password
	validates_presence_of :password_confirmation
	validates_uniqueness_of :email

	def full_name
		"#{first_name } #{last_name}"	
	end
end

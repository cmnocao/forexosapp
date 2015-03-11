class User < ActiveRecord::Base
	has_secure_password

	validates_uniqueness_of :email

	def full_name
		"#{first_name } #{last_name}"	
	end
end

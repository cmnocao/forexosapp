class State < ActiveRecord::Base
	has_paper_trail	
	belongs_to	:country
	has_many 		:cities

	validates_presence_of :name
	validates_presence_of :country_id
end
